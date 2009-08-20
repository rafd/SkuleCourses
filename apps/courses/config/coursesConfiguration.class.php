<?php

class coursesConfiguration extends sfApplicationConfiguration
{
  public function configure()
  {
  	$this->setWebDir($this->getRootDir().'/www');  	
  }
}
