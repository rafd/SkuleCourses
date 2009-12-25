<?php

/**
 * admininstructor actions.
 *
 * @package    SkuleCourses
 * @subpackage admininstructor
 * @author     Jason Ko, Jimmy Lu
 */
class admininstructorActions extends sfActions
{
   
  public function preExecute(){
    if (!helperFunctions::isLoggedIn(sfContext::getInstance()->getRequest())) $this->redirect("siteadmin/login");
    
    $submenu = new subMenu(subMenuOptions::MAINTENANCE_INSTRUCTOR);
    $this->submenu = $submenu->get();
    
    // separator used for course_discipl assoc data
    $this->separator = "&&**&&";
    $this->date = getdate();
    $this->earliestYear = skuleadminConst::EARLIEST_YEAR;
  }
	
  public function executeIndex(sfWebRequest $request)
  {
    $this->instructor_list = $this->getInstructorList();
    
    $this->form = new InstructorForm();
    //$this->form2 = new InstructorDetailForm();
    $this->getInsAssocListFromDB();
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post'));
    
    $this->form = new InstructorForm();
    //$this->form2 = new InstructorDetailForm(new InstructorDetail());
    
    $this->processForm($request, $this->form);
    //$this->omiterror = true;		
    $this->getInsAssocListFromPost($request);
    $this->instructor_list = $this->getInstructorList();
    $this->setTemplate('index');
  }

  public function executeEdit(sfWebRequest $request)
  {
    $this->forward404Unless($instructor = InstructorPeer::retrieveByPk($request->getParameter('id')), sprintf('Object instructor does not exist (%s).', $request->getParameter('id')));
    $this->form = new InstructorForm($instructor);
    /*$c = new Criteria();
  	$c->add(InstructorDetailPeer::INSTRUCTOR_ID,$request->getParameter('id'));
  	$instructDetail = InstructorDetailPeer::doSelectOne($c);*/
  	
  	//$this->form2 = new InstructorDetailForm($instructDetail);
  	$this->getInsAssocListFromDB($instructor);
  	$this->instructor_list = $this->getInstructorList();
    $this->setTemplate('index');
  }

  public function executeUpdate(sfWebRequest $request)
  {
    //FIXME after saving, the paging is messed up
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $this->forward404Unless($instructor = InstructorPeer::retrieveByPk($request->getParameter('id')), sprintf('Object instructor does not exist (%s).', $request->getParameter('id')));
    $this->form = new InstructorForm($instructor);

    if ($request->hasParameter("page")){
      $par = "page=".$request->getParameter("page");
    }
    $this->redirectAddress = "admininstructor/edit?".$par."&id=".$request->getParameter('id');
    
    /*$c = new Criteria();
  	$c->add(InstructorDetailPeer::INSTRUCTOR_ID,$request->getParameter('id'));
  	$instructDetail = InstructorDetailPeer::doSelectOne($c);
    if($instructDetail!==null){
      $this->form2 = new InstructorDetailForm($instructDetail);
    }else{
      $this->form2 = new InstructorDetailForm(new InstructorDetail());
    }*/
    $this->processForm($request, $this->form);
    $this->getInsAssocListFromPost($request);
    $this->instructor_list = $this->getInstructorList();
    $this->setTemplate('index');
  }

  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();

    $this->forward404Unless($instructor = InstructorPeer::retrieveByPk($request->getParameter('id')), sprintf('Object instructor does not exist (%s).', $request->getParameter('id')));
    
    try{
      $instructor->delete();
    
      if ($request->hasParameter("page")){
        $par = "?page=".$request->getParameter("page");
      }

      $this->redirect('admininstructor/index'.$par);
    } catch (Exception $e){
      $this->globalErrors = $e->getMessage();
      $this->form = new InstructorForm($instructor);
      $this->getInsAssocListFromDB($instructor);
  	  $this->instructor_list = $this->getInstructorList();
      $this->setTemplate('index');
    }
  }

  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    if ($form->isValid())
    {
      try{
        $instructor = $form->save();
        $this->parseInsAssoc($instructor, $request);
        $this->redirect('admininstructor/edit?id='.$instructor->getId());
      } catch (Exception $e){
        $this->globalErrors = $e->getMessage();
      }
    }
  }
  
  // TODO: incorporate instructor detail, this should replace the processForm method above
  /*protected function processForm(sfWebRequest $request, sfForm $form, sfForm $form2){
  //processform logic
      $submit = true;
      $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
      //$form2->bind($request->getParameter($form2->getName()), $request->getFiles($form2->getName()));
      
      if ($form->isValid()){
      	$instructresult = $form->save();
        $form2->getObject()->setInstructorId($instructresult->getId());
        
        if($form2->getValue('descr') !== null && $form2->getValue('descr')!='' ){
        	if($form2->isValid()){
        	  $instructdetailresult = $form2->save();
        	}else{
        	  $submit = false;
        	}
        }else{
        	//its form DESCR null or empty, if previous exists then delete it
        	$c_detail = new Criteria();
        	$c_detail->add(InstructorDetailPeer::INSTRUCTOR_ID,$instructresult->getId());
        	$detail = InstructorDetailPeer::doSelectOne($c_detail);
        	if($detail!=null){
        	  $detail->delete();
        	}
        	
        }
      }else{
      	$submit = false;
      }
      
      if($submit){
        $page = ($request->hasParameter("page")? "&page=".$request->getParameter("page"):"");
      	$this->redirect('admininstructor/edit?id='.$instructresult->getId().$page);
      }
    
  }*/
  
  protected function getInsAssocListFromDB(Instructor $instructor=null){
    // declare empty array
    $this->assocData = array();
    for ($i=$this->date["year"]+1; $i>=$this->earliestYear; $i--){
      for ($j=1; $j<=9; $j+=4){
        $this->assocData[$i.$j] = "";
      }
    }
    
    // get data from db
    if (isset($instructor)){
      $crit = new Criteria();
      $crit->addAscendingOrderByColumn(CourseInstructorAssociationPeer::YEAR);
      $crit->addAscendingOrderByColumn(CourseInstructorAssociationPeer::COURSE_ID);
      $rawList = $instructor->getCourseInstructorAssociationsJoinCourse($crit);
      
      // parse out raw data string to client
      foreach ($rawList as $obj){
        $year = $obj->getYear();
        $this->assocData[$year] .= $obj->getCourseId()." (".$obj->getCourse()->getDescr().")".$this->separator;
      }
    }
  }
  
  protected function getInsAssocListFromPost(sfWebRequest $request){
    $this->assocData = array();
    for ($i=$this->date["year"]+1; $i>=$this->earliestYear; $i--){
      for ($j=1; $j<=9; $j+=4){
        $this->assocData[$i.$j] = $request->getParameter("assoc[".$i.$j."]");
      }
    }
  }
  
  /**
   * Save the course_instructor_assocs
   * @param $instructor
   * @param $request
   * @return true if ready for saving, false otherwise
   */
  protected function parseInsAssoc(Instructor $instructor, sfWebRequest $request){
    $conn = Propel::getConnection();
    
    // retrieve existing assoc objects
    $criteria = new Criteria();
    $criteria->addAscendingOrderByColumn(CourseInstructorAssociationPeer::YEAR);
    $criteria->addAscendingOrderByColumn(CourseInstructorAssociationPeer::COURSE_ID);
    $extObjs = $instructor->getCourseInstructorAssociations($criteria, $conn);
    $delList = $extObjs;
    
    for ($i=$this->date["year"]+1; $i>=$this->earliestYear; $i--){
      for ($j=1; $j<=9; $j+=4){
        
        $year = $i.$j;
        
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
            if ($obj->getCourseId() == $cCode && $obj->getYear() == $year) {
	          $existed = true;
	          $key = array_search($obj, $delList);
	          if ($key !== false) unset($delList[$key]);
              break;
		    }
          }
		    
		  if (!$existed) {
		    // save the new assoc
		    $assoc = new CourseInstructorAssociation();
		    $assoc->setCourseId($cCode);
		    $assoc->setInstructorId($instructor->getId());
            $assoc->setYear($year);
		    $assoc->save($conn);
		  }
		}
      }
    }
    
    // delete old assocs that no longer exist
	foreach ($delList as $obj){
	  $obj->delete($conn);
	}
        
    return true;
  }
  
  protected function getInstructorList(Criteria $c = null){
  	$pagenumber = 1;
    if($this->hasRequestParameter('page')){
      $pagenumber = $this->getRequestParameter('page');
    }
  	$pager = new sfPropelPager('Instructor', skuleadminConst::INSTRUCTOR_RECORDNUMBER);
  	if(!isset($c)){
  	  $c = new Criteria();
  	  $c->addAscendingOrderByColumn(InstructorPeer::LAST_NAME);
  	}
    $pager->setCriteria($c);
    $pager->setPage($pagenumber);
    $pager->init();
    return $pager;
  }
}
