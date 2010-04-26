<?php

class AutoCourseRatingMismatchedPeer extends BaseAutoCourseRatingMismatchedPeer
{
  public static function getMismatchedRowsForDt($importDt, PropelPDO $conn=null)
  {
    if (!isset($conn)) $conn = Propel::getConnection();
    
    $c = new Criteria();
    $crit = $c->getNewCriterion(AutoCourseRatingMismatchedPeer::IMPORT_DT, $importDt);
    $c->addAnd($crit);
    $c->addAscendingOrderByColumn(AutoCourseRatingMismatchedPeer::ROW);
    
    return AutoCourseRatingMismatchedPeer::doSelect($c, $conn);
  }
}
