<?php

class Instructor extends BaseInstructor
{
  public function __toString()
  {
    return $this->getFirstName().' '.$this->getLastName();
  }
}
