<?php

class EnumItem extends BaseEnumItem
{
  public function __toString()
  {
    return strval($this->getDescr());
  }
}
