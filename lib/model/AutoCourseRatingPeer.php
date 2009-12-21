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
  
  public static function getAvailableInstructorsForCourseIdAndYear($courseId, $year, PropelPDO $conn){
    $query = "SELECT DISTINCT %s as i FROM %s JOIN %s ON %s=%s WHERE %s='%s' AND %s=%s";
    $query = sprintf($query, CourseInstructorAssociationPeer::ID, AutoCourseRatingPeer::TABLE_NAME, CourseInstructorAssociationPeer::TABLE_NAME,
      AutoCourseRatingPeer::COURSE_INS_ID, CourseInstructorAssociationPeer::ID, CourseInstructorAssociationPeer::COURSE_ID, $courseId,
      CourseInstructorAssociationPeer::YEAR, $year);
    $statement = $conn->prepare($query);
    $statement->execute();
    $ids = $statement->fetchAll(PDO::FETCH_COLUMN, 0);
    
    $results = array();
    $c = new Criteria();
    $c->addJoin(CourseInstructorAssociationPeer::INSTRUCTOR_ID, InstructorPeer::ID);
    foreach ($ids as $id){
      $crit = $c->getNewCriterion(CourseInstructorAssociationPeer::ID, $id);
      $c->addOr($crit);
    }
    $c->addAscendingOrderByColumn(InstructorPeer::LAST_NAME);
    $c->addAscendingOrderByColumn(InstructorPeer::FIRST_NAME);
    $raw = CourseInstructorAssociationPeer::doSelect($c, $conn);
    
    foreach ($raw as $obj){
      $results[] = $obj->getInstructor();
    }
    
    return $results;
  }
}
