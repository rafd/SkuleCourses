<?php

/**
 * siteadmin actions.
 *
 * @package    SkuleCourses
 * @subpackage siteadmin
 * @author     Jason Ko, Jimmy Lu
 */
class siteadminActions extends sfActions
{

 /**
  * Executes index action
  *
  * @param sfRequest $request A request object
  */
  public function executeIndex(sfWebRequest $request)
  {
    if (!helperFunctions::isLoggedIn($request)) $this->redirect("siteadmin/login");
    
    $this->sectionNames = subMenuOptions::getMaintenanceSectionNames();
    $this->sectionDetails = subMenuOptions::getMaintenanceSectionDetails();
  }
  
  public function executeLogin(sfWebRequest $request){
    if (helperFunctions::isLoggedIn($request)) $this->redirect("siteadmin/index");
    
    if ($request->isMethod(sfRequest::POST) && $request->hasParameter('username') && $request->hasParameter('password')){
      $username = $request->getParameter("username");
      $password = $request->getParameter("password");
      
      if (helperFunctions::isMaliciousString($username) || helperFunctions::isMaliciousString($password)){
        $this->error = "* Malicious keywords detected. Do not attempt this again!";
      } else {
        $conn = Propel::getConnection();
        $admin = UserPeer::getByUsername($username, $conn);
        
        if (!is_object($admin) || $admin->getPassword() != $password){
          $this->error = "* Incorrect credentials.";
        } elseif ($admin->getTypeId() != EnumItemPeer::USER_ADMIN){
          $this->error = "* You do not have enough clearance to access this section.";
        } else {
          $this->getResponse()->setCookie('username', $username);
          
          // redirect to whatever page the user came from
          if ($request->hasParameter("redirect")){
            $redirect = $request->getParameter("redirect");
          } else {
            $redirect = "siteadmin/index";
          }
          $this->redirect($redirect);
        }
      }
    }
  }
  
  public function executeLogout(sfWebRequest $request){
    $this->getResponse()->setCookie("username", "", time()-3600);
    $this->redirect("siteadmin/login");
  }
}
