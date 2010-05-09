<?php

class schedulerConfiguration extends sfApplicationConfiguration
{
  public function configure()
  {
  	$this->setWebDir($this->getRootDir().'/www');  	
  }
}
