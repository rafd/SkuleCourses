<?php

/**
 * autorating actions.
 *
 * @package    sf_sandbox
 * @subpackage autorating
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12474 2008-10-31 10:41:27Z fabien $
 */
class autoratingActions extends sfActions
{
  public function executeIndex(sfWebRequest $request)
  {
    $this->auto_course_rating_list = AutoCourseRatingPeer::doSelect(new Criteria());
  }

  public function executeNew(sfWebRequest $request)
  {
    $this->form = new AutoCourseRatingForm();
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post'));

    $this->form = new AutoCourseRatingForm();

    $this->processForm($request, $this->form);

    $this->setTemplate('new');
  }

  public function executeEdit(sfWebRequest $request)
  {
    $this->forward404Unless($auto_course_rating = AutoCourseRatingPeer::retrieveByPk($request->getParameter('id')), sprintf('Object auto_course_rating does not exist (%s).', $request->getParameter('id')));
    $this->form = new AutoCourseRatingForm($auto_course_rating);
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $this->forward404Unless($auto_course_rating = AutoCourseRatingPeer::retrieveByPk($request->getParameter('id')), sprintf('Object auto_course_rating does not exist (%s).', $request->getParameter('id')));
    $this->form = new AutoCourseRatingForm($auto_course_rating);

    $this->processForm($request, $this->form);

    $this->setTemplate('edit');
  }

  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();

    $this->forward404Unless($auto_course_rating = AutoCourseRatingPeer::retrieveByPk($request->getParameter('id')), sprintf('Object auto_course_rating does not exist (%s).', $request->getParameter('id')));
    $auto_course_rating->delete();

    $this->redirect('autorating/index');
  }

  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    if ($form->isValid())
    {
      $auto_course_rating = $form->save();

      $this->redirect('autorating/edit?id='.$auto_course_rating->getId());
    }
  }
}
