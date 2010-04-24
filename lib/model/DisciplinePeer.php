<?php

class DisciplinePeer extends BaseDisciplinePeer
{
  public static function doSelectAll($conn){
    $c = new Criteria();
    $c->addAscendingOrderByColumn(self::DESCR);
    return self::doSelect($c, $conn);
  }
}
