<?php

/**
 * adminratingCriteria actions.
 *
 * @package    sf_sandbox
 * @subpackage adminratingCriteria
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12474 2008-10-31 10:41:27Z fabien $
 */
class adminratingCriteriaActions extends sfActions
{
  public function executeIndex(sfWebRequest $request)
  {
    $this->rating_field_list = RatingFieldPeer::doSelect(new Criteria());
    $this->form = new RatingFieldForm();
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post'));

    $this->form = new RatingFieldForm();

    $this->processForm($request, $this->form);

    $this->setTemplate('index');
  }

  public function executeEdit(sfWebRequest $request)
  {
    $this->forward404Unless($rating_field = RatingFieldPeer::retrieveByPk($request->getParameter('id')), sprintf('Object rating_field does not exist (%s).', $request->getParameter('id')));
    $this->form = new RatingFieldForm($rating_field);
    $this->rating_field_list = RatingFieldPeer::doSelect(new Criteria());
    $this->setTemplate('index');
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $this->forward404Unless($rating_field = RatingFieldPeer::retrieveByPk($request->getParameter('id')), sprintf('Object rating_field does not exist (%s).', $request->getParameter('id')));
    $this->form = new RatingFieldForm($rating_field);

    $this->processForm($request, $this->form);

    $this->setTemplate('index');
  }

  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();

    $this->forward404Unless($rating_field = RatingFieldPeer::retrieveByPk($request->getParameter('id')), sprintf('Object rating_field does not exist (%s).', $request->getParameter('id')));
    $rating_field->delete();

    $this->redirect('adminratingCriteria/index');
  }

  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    if ($form->isValid())
    {
      $rating_field = $form->save();

      $this->redirect('adminratingCriteria/edit?id='.$rating_field->getId());
    }
  }
}
