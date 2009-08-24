<?php

/**
 * enumitem actions.
 *
 * @package    sf_sandbox
 * @subpackage enumitem
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12474 2008-10-31 10:41:27Z fabien $
 */
class enumitemActions extends sfActions
{
  public function executeIndex(sfWebRequest $request)
  {
    $this->enum_item_list = EnumItemPeer::doSelect(new Criteria());
  }

  public function executeNew(sfWebRequest $request)
  {
    $this->form = new EnumItemForm();
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post'));

    $this->form = new EnumItemForm();

    $this->processForm($request, $this->form);

    $this->setTemplate('new');
  }

  public function executeEdit(sfWebRequest $request)
  {
    $this->forward404Unless($enum_item = EnumItemPeer::retrieveByPk($request->getParameter('id')), sprintf('Object enum_item does not exist (%s).', $request->getParameter('id')));
    $this->form = new EnumItemForm($enum_item);
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $this->forward404Unless($enum_item = EnumItemPeer::retrieveByPk($request->getParameter('id')), sprintf('Object enum_item does not exist (%s).', $request->getParameter('id')));
    $this->form = new EnumItemForm($enum_item);

    $this->processForm($request, $this->form);

    $this->setTemplate('edit');
  }

  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();

    $this->forward404Unless($enum_item = EnumItemPeer::retrieveByPk($request->getParameter('id')), sprintf('Object enum_item does not exist (%s).', $request->getParameter('id')));
    $enum_item->delete();

    $this->redirect('enumitem/index');
  }

  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    if ($form->isValid())
    {
      $enum_item = $form->save();

      $this->redirect('enumitem/edit?id='.$enum_item->getId());
    }
  }
}
