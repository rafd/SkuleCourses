<?php

/**
 * discipline actions.
 *
 * @package    SkuleCourses
 * @subpackage discipline
 * @author     Jason Ko, Jimmy Lu
 */
class admindisciplineActions extends sfActions
{
  public function preExecute(){
    if (!helperFunctions::isLoggedIn(sfContext::getInstance()->getRequest())) $this->redirect("siteadmin/login");
    
    $submenu = new subMenu(subMenuOptions::MAINTENANCE_DISCIPLINE);
    $this->submenu = $submenu->get();
    
    // separator used for course_discipl assoc data
    $this->separator = "&&**&&";
  }
  
  public function executeIndex(sfWebRequest $request)
  {
  	$c = new Criteria();
  	$c->add(EnumItemPeer::PARENT_ID,skuleadminConst::DISCIPLINE_PARENT_ID);
    $this->enum_item_list = $this->getDisciplineList($c);
    $values=array('discipline'=>1);
    $this->form = new EnumItemForm(new EnumItem(),$values);
    
    $this->getDisAssocListFromDB();
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post'));
    
    $values=array('discipline'=>1);
    $this->form = new EnumItemForm(new EnumItem(),$values);

    $this->processForm($request, $this->form);
    $c = new Criteria();
  	$c->add(EnumItemPeer::PARENT_ID,skuleadminConst::DISCIPLINE_PARENT_ID);
    $this->enum_item_list = $this->getDisciplineList($c);
    $this->getDisAssocListFromPost($request);
    $this->setTemplate('index');
  }

  public function executeEdit(sfWebRequest $request)
  {
    $this->forward404Unless($enum_item = EnumItemPeer::retrieveByPk($request->getParameter('id')), sprintf('Object enum_item does not exist (%s).', $request->getParameter('id')));
    $c = new Criteria();
  	$c->add(EnumItemPeer::PARENT_ID,skuleadminConst::DISCIPLINE_PARENT_ID);
    $this->enum_item_list = $this->getDisciplineList($c);
    $values=array('discipline'=>1);
    $this->form = new EnumItemForm($enum_item,$values);
    $this->getDisAssocListFromDB($enum_item);
    $this->setTemplate('index');
  }

  public function executeUpdate(sfWebRequest $request)
  {
    //FIXME after saving, the paging is messed up
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $this->forward404Unless($enum_item = EnumItemPeer::retrieveByPk($request->getParameter('id')), sprintf('Object enum_item does not exist (%s).', $request->getParameter('id')));
    $values=array('discipline'=>1);
    $this->form = new EnumItemForm($enum_item,$values);

    if ($request->hasParameter("page")){
      $par = "page=".$request->getParameter("page");
    }
    $this->redirectAddress = "admindiscipline/edit?".$par."&id=".$request->getParameter('id');
    
    $this->processForm($request, $this->form);
    $c = new Criteria();
  	$c->add(EnumItemPeer::PARENT_ID,skuleadminConst::DISCIPLINE_PARENT_ID);
    $this->enum_item_list = $this->getDisciplineList($c);
    $this->getDisAssocListFromPost($request);
    $this->setTemplate('index');
  }

  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();

    $this->forward404Unless($enum_item = EnumItemPeer::retrieveByPk($request->getParameter('id')), sprintf('Object enum_item does not exist (%s).', $request->getParameter('id')));
    
    try {
      $enum_item->delete();

      if ($request->hasParameter("page")){
        $par = "?page=".$request->getParameter("page");
      }
    
      $this->redirect('admindiscipline/index'.$par);
    } catch (Exception $e){
      $this->globalErrors = $e->getMessage();
      $c = new Criteria();
  	  $c->add(EnumItemPeer::PARENT_ID,skuleadminConst::DISCIPLINE_PARENT_ID);
      $this->enum_item_list = $this->getDisciplineList($c);
      $values=array('discipline'=>1);
      $this->form = new EnumItemForm($enum_item,$values);
      $this->getDisAssocListFromDB($enum_item);
      $this->setTemplate('index');
    }
  }

  /* process the forms being submitted, do validation and saving */
  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    $form->getObject()->setParentId(skuleadminConst::DISCIPLINE_PARENT_ID);
    if ($form->isValid())
    {
      try{
        $enum_item = $form->save();
        $this->parseDisAssoc($enum_item, $request);
        $this->redirect('admindiscipline/edit?id='.$enum_item->getId());
      } catch (Exception $e){
        $this->globalErrors = $e->getMessage();
      }
    }
  }
  
  protected function getDisciplineList(Criteria $c = null){
  	
    $pagenumber = 1;
    if($this->getRequestParameter('page')!==null){
    	$pagenumber = $this->getRequestParameter('page');
    }
  	$pager = new sfPropelPager('EnumItem', skuleadminConst::DISCIPLINE_RECORDNUMBER);
  	if(!isset($c)){
  	 $c = new Criteria();
  	}
  	$c->addAscendingOrderByColumn(EnumItemPeer::DESCR);
    $pager->setCriteria($c);
    $pager->setPage($pagenumber);
    $pager->init();
    return $pager;
  }
  
  protected function getDisAssocListFromDB(EnumItem $discipline=null){
    // declare empty array
    $this->assocData = array("1"=>"", "2"=>"", "3"=>"", "4"=>"");
    
    // get data from db
    if (isset($discipline)){
      $crit = new Criteria();
      $crit->addAscendingOrderByColumn(CourseDisciplineAssociationPeer::YEAR_OF_STUDY);
      $crit->addAscendingOrderByColumn(CourseDisciplineAssociationPeer::COURSE_ID);
      $rawList = $discipline->getCourseDisciplineAssociationsJoinCourse($crit);
      
      // parse out raw data string to client
      foreach ($rawList as $obj){
        $year = $obj->getYearOfStudy();
        $this->assocData[$year] .= $obj->getCourseId()." (".$obj->getCourse()->getDescr().")".$this->separator;
      }
    }
  }
  
  protected function getDisAssocListFromPost(sfWebRequest $request){
    $this->assocData = array(
      "1" => $request->getParameter("assoc[1]"),
      "2" => $request->getParameter("assoc[2]"),
      "3" => $request->getParameter("assoc[3]"),
      "4" => $request->getParameter("assoc[4]"));
  }
  
  /**
   * Save the course_discipline_assocs
   * @param $discipline
   * @param $request
   * @return true if ready for saving, false otherwise
   */
  protected function parseDisAssoc(EnumItem $discipline, sfWebRequest $request){
    $conn = Propel::getConnection();
    
    // retrieve existing assoc objects
    $criteria = new Criteria();
    $criteria->addAscendingOrderByColumn(CourseDisciplineAssociationPeer::YEAR_OF_STUDY);
    $criteria->addAscendingOrderByColumn(CourseDisciplineAssociationPeer::COURSE_ID);
    $extObjs = $discipline->getCourseDisciplineAssociations($criteria, $conn);
    $delList = $extObjs;
    
    for ($year=1; $year<=4; $year++) {
      // first get an array of items
      $itemArr = array();
      $token = strtok($request->getParameter("assoc[".$year."]"), $this->separator);
      while ($token !== false){
        if (trim($token) != "") $itemArr[] = $token;
	    $token = strtok($this->separator);
	  }
	  
	  // check which ones exist, which ones are new and which ones need deletion
	  foreach ($itemArr as $item){
	    $cCode = substr($item, 0, 8);
	    $existed = false;
	    foreach ($extObjs as $obj){
	      if ($obj->getCourseId() == $cCode && $obj->getYearOfStudy() == $year) {
	        $existed = true;
	        $key = array_search($obj, $delList);
	        if ($key !== false) unset($delList[$key]);
	        break;
	      }
	    }
	    
	    if (!$existed) {
	      // save the new assoc
	      $assoc = new CourseDisciplineAssociation();
	      $assoc->setCourseId($cCode);
	      $assoc->setDisciplineId($discipline->getId());
	      $assoc->setYearOfStudy($year);
	      $assoc->save($conn);
	    }
	  }
    }
    
    // delete old assocs that no longer exist
	foreach ($delList as $obj){
	  $obj->delete($conn);
	}
        
    return true;
  }
}
