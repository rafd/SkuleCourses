<?php

class AutoCourseRatingPeer extends BaseAutoCourseRatingPeer
{
  public static function getAvailableYearsForCourseId($courseId, PropelPDO $propelConnection)
  {
    $query = "SELECT DISTINCT %s as y FROM %s JOIN %s ON %s=%s WHERE %s='%s' ORDER BY y DESC";
    $query = sprintf($query, CourseInstructorAssociationPeer::YEAR, AutoCourseRatingPeer::TABLE_NAME, CourseInstructorAssociationPeer::TABLE_NAME,
      AutoCourseRatingPeer::COURSE_INS_ID, CourseInstructorAssociationPeer::ID, CourseInstructorAssociationPeer::COURSE_ID, $courseId);
    $statement = $propelConnection->prepare($query);
    $statement->execute();
    $resultset = $statement->fetchAll(PDO::FETCH_COLUMN, 0);
    return $resultset;
  }
  
  public static function getCourseDataArrayForCourseAndInstructorAndYear($courseId, $instructorId, $year, PropelPDO $propelConnection)
  {
    $c = new Criteria();
    $c->addJoin(AutoCourseRatingPeer::COURSE_INS_ID, CourseInstructorAssociationPeer::ID);
    $crit1 = $c->getNewCriterion(CourseInstructorAssociationPeer::COURSE_ID, $courseId);
    $crit2 = $c->getNewCriterion(CourseInstructorAssociationPeer::YEAR, $year);
    $crit3 = $c->getNewCriterion(CourseInstructorAssociationPeer::INSTRUCTOR_ID, $instructorId);
    $c->addAnd($crit1);
    $c->addAnd($crit2);
    $c->addAnd($crit3);
    $c->addAscendingOrderByColumn(AutoCourseRatingPeer::FIELD_ID);
    $c->addAscendingOrderByColumn(AutoCourseRatingPeer::ID);
    $c->addAscendingOrderByColumn(AutoCourseRatingPeer::RATING);
    return AutoCourseRatingPeer::doSelect($c, $propelConnection);
  }
  
  
}
