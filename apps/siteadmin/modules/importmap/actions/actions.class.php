<?php

/**
 * importmap actions.
 *
 * @package    sf_sandbox
 * @subpackage importmap
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12474 2008-10-31 10:41:27Z fabien $
 */
class importmapActions extends sfActions
{
  public function executeIndex(sfWebRequest $request)
  {
    $this->import_mapping_list = ImportMappingPeer::doSelect(new Criteria());
  }

  public function executeNew(sfWebRequest $request)
  {
    $this->form = new ImportMappingForm();
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post'));

    $this->form = new ImportMappingForm();

    $this->processForm($request, $this->form);

    $this->setTemplate('new');
  }

  public function executeEdit(sfWebRequest $request)
  {
    $this->forward404Unless($import_mapping = ImportMappingPeer::retrieveByPk($request->getParameter('column'),
                $request->getParameter('import_file_type')), sprintf('Object import_mapping does not exist (%s).', $request->getParameter('column'),
                $request->getParameter('import_file_type')));
    $this->form = new ImportMappingForm($import_mapping);
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod('post') || $request->isMethod('put'));
    $this->forward404Unless($import_mapping = ImportMappingPeer::retrieveByPk($request->getParameter('column'),
                $request->getParameter('import_file_type')), sprintf('Object import_mapping does not exist (%s).', $request->getParameter('column'),
                $request->getParameter('import_file_type')));
    $this->form = new ImportMappingForm($import_mapping);

    $this->processForm($request, $this->form);

    $this->setTemplate('edit');
  }

  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();

    $this->forward404Unless($import_mapping = ImportMappingPeer::retrieveByPk($request->getParameter('column'),
                $request->getParameter('import_file_type')), sprintf('Object import_mapping does not exist (%s).', $request->getParameter('column'),
                $request->getParameter('import_file_type')));
    $import_mapping->delete();

    $this->redirect('importmap/index');
  }

  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    if ($form->isValid())
    {
      $import_mapping = $form->save();

      $this->redirect('importmap/edit?column='.$import_mapping->getColumn().'&import_file_type='.$import_mapping->getImportFileType());
    }
  }
}
