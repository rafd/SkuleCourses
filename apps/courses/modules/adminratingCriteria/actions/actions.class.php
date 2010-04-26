<?php

/**
 * adminratingCriteria actions.
 *
 * @package    sf_sandbox
 * @subpackage adminratingCriteria
 * @author     Jimmy Lu, Jason Ko
 * @version    SVN: $Id: actions.class.php 12474 2008-10-31 10:41:27Z fabien $
 */
class adminratingCriteriaActions extends sfActions
{ 
  public function preExecute(){
    if (!helperFunctions::isLoggedIn(sfContext::getInstance()->getRequest())) $this->redirect("siteadmin/login");
  }
  
  //creating a new rating field has been deprecated to executeList
  public function executeIndex(sfWebRequest $request)
  {
  }
  
  public function executeImportIndex(sfWebRequest $request)
  {
    if ($request->isMethod("post") && $request->hasParameter("dt") && $request->hasParameter("redirect_loc")){
      switch ($request->getParameter("redirect_loc")){
        case "delete":
          $this->forward("adminratingCriteria", "deleteHistory");
          break;
        case "good":
          $this->forward("adminratingCriteria", "importGood");
          break;
        case "mismatched":
          $this->forward("adminratingCriteria", "importMismatched");
          break;
      }
    } else {
      $conn = Propel::getConnection();
      $this->history = AutoCourseRatingPeer::getImportHistory($conn);
    }
  }
  
  public function executeDeleteHistory(sfWebRequest $request)
  {
    if (!$request->isMethod("post") || !$request->hasParameter("dt")) $this->forward404("not enough parameters");
    $dt = $request->getParameter("dt");
    
    try {
      $c = new Criteria();
      $crit = $c->getNewCriterion(AutoCourseRatingPeer::IMPORT_DT, $dt);
      $c->addAnd($crit);
      AutoCourseRatingPeer::doDelete($c);
    
      $c = new Criteria();
      $crit = $c->getNewCriterion(AutoCourseRatingMismatched::IMPORT_DT, $dt);
      $c->addAnd($crit);
      AutoCourseRatingMismatched::doDelete($c);
      
      $this->redirect("adminratingCriteria/importIndex");
    } catch (Exception $e){
      $this->setTemplate('importIndex');
    }
  }
  
  public function executeImportNew(sfWebRequest $request)
  {
  }
  
  public function executeImportNewTwo(sfWebRequest $request)
  {
    if (!$request->isMethod(sfWebRequest::POST) || !$request->hasParameter("critique_year") || !$request->hasParameter("critique_term"))
      $this->forward404("not enough parameters");
      
    $this->data = ImportMappingPeer::getAll();
    $c = new Criteria();
    $c->addAscendingOrderByColumn(EnumItemPeer::ID);
    $this->mappingTypes = EnumItemPeer::getAllForParentNodeId(EnumItemPeer::MAPPING_ITEMS_NODE_ID, null, $c);
  }
  
  public function executeImportNewThree(sfWebRequest $request)
  {
    if (!$request->isMethod(sfWebRequest::POST) || !$request->hasParameter("critique_year") || !$request->hasParameter("critique_term"))
      $this->forward404("not enough parameters");
  }
  
  public function executeImportNewFour(sfWebRequest $request)
  {
    if (!$request->isMethod(sfWebRequest::POST) || !$request->hasParameter("critique_year") || !$request->hasParameter("critique_term"))
      $this->forward404("not enough parameters");
      
    
  }
  
  public function executeAjaxDeleteLastMapping(sfWebRequest $request)
  {
    if (!$request->isXmlHttpRequest()) $this->forward404();
    if (!$request->hasParameter("mappingDel")) throw new Exception("ajax_query does not exist");
    
    echo "Success";
    
    return sfView::NONE;
  }
  
  // TODO the speed of the ajax saving could be drastically improved if we could
  // send all the info in one single postback, instead of in 30-40
  public function executeAjaxSaveMappings(sfWebRequest $request)
  {
    if (!$request->isXmlHttpRequest()) $this->forward404();
    if (!$request->hasParameter("mapping_save_descr")) throw new Exception("ajax_query does not exist");
    if (!$request->hasParameter("mapping_save_col")) throw new Exception("ajax_query does not exist");
    if (!$request->hasParameter("mapping_save_type_descr")) throw new Exception("ajax_query does not exist");
    if (!$request->hasParameter("mapping_save_scale")) throw new Exception("ajax_query does not exist");
    
    $critDescr = trim($request->getParameter("mapping_save_descr"));
    $col = trim($request->getParameter("mapping_save_col"));
    $typeDescr = trim($request->getParameter("mapping_save_type_descr"));
    $rating = trim($request->getParameter("mapping_save_scale"));
    
    // find the corresponding mapping type object
    $c = new Criteria();
    $crit1 = $c->getNewCriterion(EnumItemPeer::PARENT_ID, EnumItemPeer::MAPPING_ITEMS_NODE_ID);
    $crit2 = $c->getNewCriterion(EnumItemPeer::DESCR, $typeDescr);
    $c->addAnd($crit1);
    $c->addAnd($crit2);
    $enum = EnumItemPeer::doSelectOne($c);
    if (!isset($enum)) {
      echo "Failed";
      return sfView::NONE;
    }

    // find the rating field object
    if ($critDescr != ""){
      $c = new Criteria();
      $crit = $c->getNewCriterion(RatingFieldPeer::DESCR, $critDescr);
      $c->addAnd($crit);
      $criterion = RatingFieldPeer::doSelectOne($c);
      if (!isset($criterion)){
        echo "Failed";
        return sfView::NONE;
      }
    }
    
    // deal with rating
    if ($rating == "") $rating = 0;
    elseif ($rating == "True") $rating = 1;
    elseif ($rating == "False") $rating = 0;
    
    // save
    $mappingObj = ImportMappingPeer::retrieveByPK($col, EnumItemPeer::CSV_TYPE);
    if (!isset($mappingObj)){
      $mappingObj = new ImportMapping();
      $mappingObj->setColumn($col);
      $mappingObj->setImportFileType(EnumItemPeer::CSV_TYPE);
    }
    $mappingObj->setMapping($enum->getid());
    if (isset($criterion)) $mappingObj->setRatingFieldId($criterion->getId());
    else $mappingObj->setRatingFieldId(1);
    $mappingObj->setQuestionRating($rating);
    $mappingObj->save();
    
    echo "<script type='text/javascript'>saveMappings(",$col+1,");</script>";
    return sfView::NONE;
  }
  
  public function executeAjaxFetchValidationRequirements(sfWebRequest $request)
  {
    if (!$request->isXmlHttpRequest()) $this->forward404();
    
    echo "<script type='text/javascript'>";
    $criteria = RatingFieldPeer::doSelectAll();
    $counter = 0;
    foreach ($criteria as $criterion){
      $enum = $criterion->getEnumItem();
      echo "validation_requirements[$counter]=new Array(); 
      	validation_requirements[$counter][0]=0;validation_requirements[$counter][1]=\"{$criterion->getDescr()}\";validation_requirements[$counter][4]=0;"; 
      if ($enum->getId() == EnumItemPeer::RATING_BOOLEAN){
        echo "validation_requirements[$counter][2]=2;validation_requirements[$counter][3]=1;";
      } elseif ($enum->getId() != EnumItemPeer::RATING_NUMBER) {
        $end = intval($enum->getDescr())-1;
        echo "validation_requirements[$counter][2]={$enum->getDescr()};validation_requirements[$counter][3]=", helperFunctions::sum(0,$end),";";
      }
      
      $counter++;
    }
    echo "validateAndSaveMappings();</script>";
    
    return sfView::NONE;
  }
  
  public function executeAjaxFindCriteria(sfWebRequest $request)
  {
    if (!$request->isXmlHttpRequest()) $this->forward404();
    if (!$request->hasParameter("mapping_type")) throw new Exception("ajax_query does not exist");
    
    $selMappingType = $request->getParameter("mapping_type");
    $c = new Criteria();
    $crit1 = $c->getNewCriterion(EnumItemPeer::PARENT_ID, EnumItemPeer::MAPPING_ITEMS_NODE_ID);
    $crit2 = $c->getNewCriterion(EnumItemPeer::DESCR, trim($selMappingType));
    $c->addAnd($crit1);
    $c->addAnd($crit2);
    $selMappingType = EnumItemPeer::doSelectOne($c);
    if (!isset($selMappingType)) return sfView::NONE;
    
    echo "<script type='text/javascript'>var selEl = document.getElementById('mapping_table').rows[parseInt(selected_row_index)+1].cells[4].children[0]; selEl.innerHTML=\"";
    
    if ($selMappingType->getId() == EnumItemPeer::MAPPING_QUESTION){
      $c = new Criteria();
      $crit1 = $c->getNewCriterion(RatingFieldPeer::TYPE_ID, EnumItemPeer::RATING_BOOLEAN);
      $crit2 = $c->getNewCriterion(EnumItemPeer::PARENT_ID, EnumItemPeer::RATING_SCALE);
      $crit1->addOr($crit2);
      $c->addAnd($crit1);
      $criteria = RatingFieldPeer::doSelectJoinEnumItem($c);
      foreach ($criteria as $criterion){
        echo "<option value=",$criterion->getId(),">",$criterion->getDescr(),"</option>";
      }
    } else {
      echo "<option value=''></option>";
    }
    
    echo "\"; makeSelectSelection(selEl, document.getElementById('mapping_criterion'));";
    echo "fetchScales(document.getElementById('mapping_criterion').value);</script>";
    
    return sfView::NONE;
  }
  
  public function executeAjaxFindScales(sfWebRequest $request)
  {
    if (!$request->isXmlHttpRequest()) $this->forward404();
    if (!$request->hasParameter("mapping_criterion")) throw new Exception("ajax_query does not exist");
    
    $selCriterion = $request->getParameter("mapping_criterion");
    $c = new Criteria();
    $crit1 = $c->getNewCriterion(RatingFieldPeer::DESCR, $selCriterion);
    $c->addAnd($crit1);
    $selCriterion = RatingFieldPeer::doSelectOne($c);
    
    echo "<script type='text/javascript'>var selEl = document.getElementById('mapping_table').rows[parseInt(selected_row_index)+1].cells[5].children[0]; selEl.innerHTML=\"";
    
    if (!isset($selCriterion)) {
      echo "<option value=''></option>\";makeSelectSelection(selEl, document.getElementById('mapping_scale'));</script>";
      return sfView::NONE;
    }
    
    $ratingType = $selCriterion->getEnumItem();
    switch ($ratingType->getEnumItemRelatedByParentId()->getId()){
      case EnumItemPeer::RATING_SCALE:
        $num = $ratingType->getDescr();
        for ($i=0; $i<$num; $i++){
          echo "<option value=$i>$i</option>";
        }
        break;
      case EnumItemPeer::RATING_TYPES_NODE_ID:
        if ($ratingType->getId()==EnumItemPeer::RATING_BOOLEAN){
          echo "<option value=1>Yes</option><option value=0>No</option>";
        } else {
          echo "<option value=''></option>";
        }
        break;
    }
    
    echo "\"; makeSelectSelection(selEl, document.getElementById('mapping_scale'));</script>";
    
    return sfView::NONE;
  }
  
  public function executeImportGood(sfWebRequest $request)
  {
    if (!$request->isMethod("post") || !$request->hasParameter("dt")) $this->forward404("not enough parameters");
    $this->dt = $request->getParameter("dt");
    
    $this->matchedData = AutoCourseRatingPeer::getMatchedRowsForDt($this->dt);
  }
  
  public function executeImportMismatched(sfWebRequest $request)
  {
    if (!$request->isMethod("post") || !$request->hasParameter("dt")) $this->forward404("not enough parameters");
    $this->dt = $request->getParameter("dt");
    
    $this->mismatchedData = AutoCourseRatingMismatchedPeer::getMismatchedRowsForDt($this->dt);
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post'));

    $this->form = new RatingFieldForm();
    $this->form->getObject()->setIsReserved(0);
    $this->processForm($request, $this->form);
    $this->rating_field_list = $this->getRatingCriteriaList();
    $this->setTemplate('list');
  }

  public function executeEdit(sfWebRequest $request)
  {
  	$this->scale_PID = skuleadminConst::RATING_SCALE_TYPES_PID;
    $this->forward404Unless($rating_field = RatingFieldPeer::retrieveByPk($request->getParameter('id')), sprintf('Object rating_field does not exist (%s).', $request->getParameter('id')));
    if($rating_field->getIsReserved()){
      $this->is_reserved = true;
      $this->rating = array('descr' => $rating_field->getDescr());
      $c= new Criteria();
      $c->add(EnumItemPeer::ID, $rating_field->getTypeId());
      $type = EnumItemPeer::doSelectOne($c);
      if($rating_field->getTypeId()>30&&$rating_field->getTypeId()<40){
      	//its a scale!
      	$c2= new Criteria();
        $c2->add(EnumItemPeer::ID, $type->getParentId());
        $type_parent = EnumItemPeer::doSelectOne($c2);
        $this->rating['type_id'] = $type_parent->getDescr(); 
        $this->rating['scale'] = $type->getDescr();  	
      }else{
      	$this->rating['type_id'] = $type->getDescr();
      }      
    }else{
      $this->form = new RatingFieldForm($rating_field);
      if($rating_field->getTypeId()>30&&$rating_field->getTypeId()<40){
      	$c= new Criteria();
        $c->add(EnumItemPeer::ID, $rating_field->getTypeId());
        $type = EnumItemPeer::doSelectOne($c);
      	$this->form->setValue('type_scale',$type->getParentId());
      	$this->form->setValue('scale',$rating_field->getTypeId());
      }
    }
    $this->rating_field_list = $this->getRatingCriteriaList();
    $this->setTemplate('list');
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $this->forward404Unless($rating_field = RatingFieldPeer::retrieveByPk($request->getParameter('id')), sprintf('Object rating_field does not exist (%s).', $request->getParameter('id')));
    $this->form = new RatingFieldForm($rating_field);

    $this->processForm($request, $this->form);
    $this->rating_field_list = $this->getRatingCriteriaList();
    $this->setTemplate('list');
  }

  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();
    $err = false;

    $this->forward404Unless($rating_field = RatingFieldPeer::retrieveByPk($request->getParameter('id')), sprintf('Object rating_field does not exist (%s).', $request->getParameter('id')));
    if ($rating_field->hasRatingData()){
      $this->globalErrors = "Cannot delete criterion that already has rating data associated with it.";
      $err = true;
    } else {
      try {
        $rating_field->delete();
        $this->redirect('adminratingCriteria/list');
      } catch (Exception $e){
        $this->globalErrors = $e->getMessage();
        $err = true;
      }
    }
    
    if ($err){
      $this->rating_field_list = $this->getRatingCriteriaList();
      $this->scale_PID = skuleadminConst::RATING_SCALE_TYPES_PID;
      $this->form = new RatingFieldForm();
      $this->setTemplate('list');
    }
  }

  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    if ($form->isValid())
    {
      if($form->getValue('type_scale')==skuleadminConst::RATING_SCALE_TYPES_PID){
      	$form->getObject()->setTypeId($form->getValue('scale'));
      }else{
        $form->getObject()->setTypeId($form->getValue('type_scale'));
      }
      
      try {
        $rating_field = $form->save();
        $this->redirect('adminratingCriteria/edit?id='.$rating_field->getId());
      } catch (Exception $e){
        $this->globalErrors = $e->getMessage();
      }
    }
  }
  
  protected function getRatingCriteriaList(Criteria $c = null){
  	$pagenumber = 1;
    if($this->getRequestParameter('page')!==null){
    	$pagenumber = $this->getRequestParameter('page');
    }
  	$pager = new sfPropelPager('RatingField', skuleadminConst::RATINGCRITERIA_RECORDNUMBER);
  	if(!isset($c)){
  	 $c = new Criteria();
  	}
    $pager->setCriteria($c);
    $pager->setPage($pagenumber);
    $pager->init();
    return $pager;
  }
 
  public function executeList(sfWebRequest $request)
  {
  	$this->scale_PID = skuleadminConst::RATING_SCALE_TYPES_PID;
    $this->rating_field_list = $this->getRatingCriteriaList();
    $this->form = new RatingFieldForm();
  }
}
