<?php

class InstructorPeer extends BaseInstructorPeer
{
  public static function getAll($propelConnection)
  {
    $c = new Criteria();
    $c->addAscendingOrderByColumn(InstructorPeer::LAST_NAME);
    return InstructorPeer::doSelect($c, $propelConnection);
  }
}
