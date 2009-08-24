<?php

class Department extends BaseDepartment
{
  public function __toString()
  {
    return strval($this->getId());
  }
	
}
