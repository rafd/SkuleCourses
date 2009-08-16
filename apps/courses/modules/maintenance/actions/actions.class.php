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
    if (helperFunctions::isLoggedIn($request))
    {
      $this->buildSubmenu();
    }
    else
    {
      // redirect to log in page
      $this->buildSubmenu();
    }
  }

  public function executeCourses(sfWebRequest $request)
  {
    if (helperFunctions::isLoggedIn($request))
    {
      $this->buildSubmenu();
      $this->form = new skuleForm("frm", "maintenance/courses", $request);
    }
    else
    {
      // redirect to log in page
      $this->buildSubmenu();
    }
  }

  public function executeInstructors(sfWebRequest $request)
  {
    if (helperFunctions::isLoggedIn($request))
    {
      $this->buildSubmenu();
      $this->form = new skuleForm("frm", "maintenance/instructors", $request);
    }
    else
    {
      // redirect to log in page
      $this->buildSubmenu();
    }
  }

  public function executeDepartments(sfWebRequest $request)
  {
    if (helperFunctions::isLoggedIn($request))
    {
      $this->buildSubmenu();
      $this->form = new skuleForm("frm", "maintenance/departments", $request);
    }
    else
    {
      // redirect to log in page
      $this->buildSubmenu();
    }
  }

  public function executeDisciplines(sfWebRequest $request)
  {
    if (helperFunctions::isLoggedIn($request))
    {
      $this->buildSubmenu();
      $this->form = new skuleForm("frm", "maintenance/disciplines", $request);
    }
    else
    {
      // redirect to log in page
      $this->buildSubmenu();
    }
  }

  public function executeRatingfields(sfWebRequest $request)
  {
    if (helperFunctions::isLoggedIn($request))
    {
      $this->buildSubmenu();
      $this->form = new skuleForm("frm", "maintenance/ratingfields", $request);

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
      $this->buildSubmenu();
    }
  }

  public function executeImporthistory(sfWebRequest $request)
  {
    if (helperFunctions::isLoggedIn($request))
    {
      $this->buildSubmenu();
      $this->form = new skuleForm("frm", "maintenance/importhistory", $request);
    }
    else
    {
      // redirect to log in page
      $this->buildSubmenu();
    }
  }

  public function executeImportratings(sfWebRequest $request)
  {
    if (helperFunctions::isLoggedIn($request))
    {
      $this->buildSubmenu();
      $this->form = new skuleForm("frm", "maintenance/importratings", $request);
    }
    else
    {
      // redirect to log in page
      $this->buildSubmenu();
    }
  }

  private function buildSubmenu()
  {
    $submenu = new subMenu(subMenuOptions::MAINTENANCE);
    //$submenu->setCourseId($request->getParameter("id"));
    $this->submenu = $submenu->get();
  }
}
