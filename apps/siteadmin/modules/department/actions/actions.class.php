<?php

/**
 * department actions.
 *
 * @package    sf_sandbox
 * @subpackage department
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12474 2008-10-31 10:41:27Z fabien $
 */
class departmentActions extends sfActions
{
  public function executeIndex(sfWebRequest $request)
  {
    $this->department_list = DepartmentPeer::doSelect(new Criteria());
  }

  public function executeNew(sfWebRequest $request)
  {
    $this->form = new DepartmentForm();
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post'));

    $this->form = new DepartmentForm();

    $this->processForm($request, $this->form);

    $this->setTemplate('new');
  }

  public function executeEdit(sfWebRequest $request)
  {
    $this->forward404Unless($department = DepartmentPeer::retrieveByPk($request->getParameter('id')), sprintf('Object department does not exist (%s).', $request->getParameter('id')));
    $values=array('edit'=>'true');
    $this->form = new DepartmentForm($department,$values);
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $this->forward404Unless($department = DepartmentPeer::retrieveByPk($request->getParameter('id')), sprintf('Object department does not exist (%s).', $request->getParameter('id')));
    $this->form = new DepartmentForm($department);

    $this->processForm($request, $this->form);

    $this->setTemplate('edit');
  }

  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();

    $this->forward404Unless($department = DepartmentPeer::retrieveByPk($request->getParameter('id')), sprintf('Object department does not exist (%s).', $request->getParameter('id')));
    $department->delete();

    $this->redirect('department/index');
  }

  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    if ($form->isValid())
    {
      $department = $form->save();

      $this->redirect('department/edit?id='.$department->getId());
    }
  }
}
