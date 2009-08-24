<?php

class siteadminConfiguration extends sfApplicationConfiguration
{
  public function configure()
  {
  	$this->setWebDir($this->getRootDir().'/www'); 
  }
}
