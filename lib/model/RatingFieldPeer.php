<?php

class RatingFieldPeer extends BaseRatingFieldPeer
{
  const NUMBER_ENROLLED = 1;
  const NUMBER_RESPONDED = 2;
  const RETAKE = 3;
  
  public static function doSelectAll($conn=null){
    $c = new Criteria();
    $c->addAscendingOrderByColumn(self::ID);
    return self::doSelect($c, $conn);
  }
}
