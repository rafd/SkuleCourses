<?php

class UserPeer extends BaseUserPeer
{
  public static function getByUsername($username, PropelPDO $conn){
    $c = new Criteria();
    $crit1 = $c->getNewCriterion(self::USER_NAME, $username);
    $c->addAnd($crit1);
    
    $res = self::doSelect($c, $conn);
    
    if (isset($res) && count($res) >= 1)
      return $res[0];
    else
      return null;
  }
}
