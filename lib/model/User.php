<?php

class User extends BaseUser
{
  public function __toString()
  {
    return $this->getUserName();
  }
}
