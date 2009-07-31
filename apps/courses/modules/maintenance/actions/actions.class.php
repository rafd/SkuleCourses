<?php

/**
 * maintenance actions.
 *
 * @package    skule_courses\
 * @subpackage maintenance
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12479 2008-10-31 10:54:40Z fabien $
 */
class maintenanceActions extends sfActions
{
 /**
  * Executes index action
  *
  * @param sfRequest $request A request object
  */
  public function executeIndex(sfWebRequest $request)
  {
    if (helperFunctions::isLoggedIn())
    {
      $this->buildSubmenu(true);
    }
    else
    {
      // redirect to log in page
      $this->buildSubmenu(false);
    }
  }
  
  public function executeCourses(sfWebRequest $request)
  {
    if (helperFunctions::isLoggedIn())
    {
      $this->buildSubmenu(true);
      $this->form = new skuleForm("frm", "maintenance/courses");
    }
    else
    {
      // redirect to log in page
      $this->buildSubmenu(false);
    }
  }
  
  public function executeInstructors(sfWebRequest $request)
  {
    if (helperFunctions::isLoggedIn())
    {
      $this->buildSubmenu(true);
      $this->form = new skuleForm("frm", "maintenance/instructors");
    }
    else
    {
      // redirect to log in page
      $this->buildSubmenu(false);
    }
  }
  
  public function executeDepartments(sfWebRequest $request)
  {
    if (helperFunctions::isLoggedIn())
    {
      $this->buildSubmenu(true);
      $this->form = new skuleForm("frm", "maintenance/departments");
    }
    else
    {
      // redirect to log in page
      $this->buildSubmenu(false);
    }
  }
  
  public function executeDisciplines(sfWebRequest $request)
  {
    if (helperFunctions::isLoggedIn())
    {
      $this->buildSubmenu(true);
      $this->form = new skuleForm("frm", "maintenance/disciplines");
    }
    else
    {
      // redirect to log in page
      $this->buildSubmenu(false);
    }
  }
  
  public function executeRatingfields(sfWebRequest $request)
  {
    if (helperFunctions::isLoggedIn())
    {
      $this->buildSubmenu(true);
      $this->form = new skuleForm("frm", "maintenance/ratingfields");
      
      $conn = Propel::getConnection();
      
      $this->ratingTypeList = array();
      $ratingTypeList = EnumItemPeer::getAllForParentNodeId(EnumItemPeer::RATING_TYPES_NODE_ID, $conn);
      foreach ($ratingTypeList as $enumObj){
        $this->ratingTypeList[$enumObj->getId()] = $enumObj->getDescr();
        //TODO
        $this->selectedRatingType = $enumObj->getId();
      }
      
    }
    else
    {
      // redirect to log in page
      $this->buildSubmenu(false);
    }
  }
  
  public function executeImporthistory(sfWebRequest $request)
  {
    if (helperFunctions::isLoggedIn())
    {
      $this->buildSubmenu(true);
      $this->form = new skuleForm("frm", "maintenance/importhistory");
    }
    else
    {
      // redirect to log in page
      $this->buildSubmenu(false);
    }
  }
  
  public function executeImportratings(sfWebRequest $request)
  {
    if (helperFunctions::isLoggedIn())
    {
      $this->buildSubmenu(true);
      $this->form = new skuleForm("frm", "maintenance/importratings");
    }
    else
    {
      // redirect to log in page
      $this->buildSubmenu(false);
    }
  }
  
  private function buildSubmenu($isLoggedIn)
  {
    if ($isLoggedIn) $submenu = new subMenu(subMenuOptions::MAINTENANCE);
    else $submenu = new subMenu(subMenuOptions::BLANK);
    //$submenu->setCourseId($request->getParameter("id"));
    $this->submenu = $submenu->get();
  }
}
