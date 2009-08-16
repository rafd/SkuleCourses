<?php

class InstructorPeer extends BaseInstructorPeer
{
  public static function getAll(PropelPDO $propelConnection)
  {
    $c = new Criteria();
    $c->addAscendingOrderByColumn(InstructorPeer::LAST_NAME);
    return InstructorPeer::doSelect($c, $propelConnection);
  }
  
  public static function findInstructorByName($firstName, $lastName, PropelPDO $conn)
  {
    $c = new Criteria();
    $crit1 = $c->getNewCriterion(self::FIRST_NAME, $firstName);
    $crit2 = $c->getNewCriterion(self::LAST_NAME, $lastName);
    $c->addAnd($crit1);
    $c->addAnd($crit2);
    $instrList = self::doSelect($c, $conn);
    
    if (!isset($instrList) || count($instrList)==0)
    {
      throw new Exception("no instructor found",1);
    } else if (count($instrList)==1)
    {
      return $instrList[0];
    } else
    {
      throw new Exception("duplicate instructors found",2);
    }
  }
}
