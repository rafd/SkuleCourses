<?php

/**
 * search actions.
 *
 * @package    skule_courses\
 * @subpackage search
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12479 2008-10-31 10:54:40Z fabien $
 */
class searchActions extends sfActions
{
 /**
  * Executes index action
  *
  * @param sfRequest $request A request object
  */
  public function executeIndex(sfWebRequest $request)
  {
    $this->searchBar = SearchBar::get();

    $this->enum = EnumItemPeer::retrieveByPK(100, Propel::getConnection());
  }
}