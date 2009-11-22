<?php

class DepartmentPeer extends BaseDepartmentPeer
{
  public static function getAll(PropelPDO $propelConnection){
    $c = new Criteria();
    $c->addAscendingOrderByColumn(DepartmentPeer::ID);
    return DepartmentPeer::doSelect($c, $propelConnection);
  }
}
