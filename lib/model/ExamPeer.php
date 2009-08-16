<?php

class ExamPeer extends BaseExamPeer
{
  public static function getAvailableYearsForCourseId($courseId, PropelPDO $propelConnection)
  {
    $query = "SELECT DISTINCT %s FROM %s WHERE %s='%s' ORDER BY %s DESC";
    $query = sprintf($query, ExamPeer::YEAR, ExamPeer::TABLE_NAME, ExamPeer::COURSE_ID, $courseId, ExamPeer::YEAR);
    $statement = $propelConnection->prepare($query);
    $statement->execute();
    $resultset = $statement->fetchAll(PDO::FETCH_COLUMN, 0);
    return $resultset;
  }
  
  public static function getExamsForYearAndCourseId($courseId, $year, PropelPDO $propelConnection)
  {
    $c = new Criteria();
    $crit1 = $c->getNewCriterion(ExamPeer::COURSE_ID, $courseId);
    $crit2 = $c->getNewCriterion(ExamPeer::YEAR, $year);
    $c->addAnd($crit1);
    $c->addAnd($crit2);
    $c->addAscendingOrderByColumn(ExamPeer::TYPE);
    $c->addAscendingOrderByColumn(ExamPeer::DESCR);
    return ExamPeer::doSelect($c, $propelConnection);
  }
}
