<?php

class CourseInstructorAssociationPeer extends BaseCourseInstructorAssociationPeer
{
  
  public static function getLatestInstructorsForCourseId($courseId, PropelPDO $propelConnection=null)
  {
    $query = "SELECT DISTINCT CONCAT(%s,', ',%s) AS name, %s FROM %s RIGHT JOIN %s ON %s=%s WHERE %s='%s' AND %s=(SELECT MAX(%s) FROM %s WHERE %s='%s') ORDER BY name ASC";
    $query = sprintf($query, InstructorPeer::LAST_NAME, InstructorPeer::FIRST_NAME, InstructorPeer::ID, CourseInstructorAssociationPeer::TABLE_NAME, InstructorPeer::TABLE_NAME, InstructorPeer::ID, 
      CourseInstructorAssociationPeer::INSTRUCTOR_ID, CourseInstructorAssociationPeer::COURSE_ID, $courseId, CourseInstructorAssociationPeer::YEAR,
      CourseInstructorAssociationPeer::YEAR, CourseInstructorAssociationPeer::TABLE_NAME, CourseInstructorAssociationPeer::COURSE_ID, $courseId);
    $statement = $propelConnection->prepare($query);
    $statement->execute();
    $resultset = $statement->fetchAll();
    return $resultset;
  }
  
  public static function getHistoricalInstructorsForCourseId($courseId, PropelPDO $propelConnection)
  {
    $query = "SELECT DISTINCT CONCAT(%s,', ',%s) AS name, %s FROM %s RIGHT JOIN %s ON %s=%s WHERE %s<>(SELECT MAX(%s) FROM %s WHERE %s='%s') AND %s='%s' ORDER BY name ASC";
    $query = sprintf($query, InstructorPeer::LAST_NAME, InstructorPeer::FIRST_NAME, InstructorPeer::ID, InstructorPeer::TABLE_NAME, CourseInstructorAssociationPeer::TABLE_NAME,
      InstructorPeer::ID, CourseInstructorAssociationPeer::INSTRUCTOR_ID, CourseInstructorAssociationPeer::YEAR, CourseInstructorAssociationPeer::YEAR,
      CourseInstructorAssociationPeer::TABLE_NAME, CourseInstructorAssociationPeer::COURSE_ID, $courseId, CourseInstructorAssociationPeer::COURSE_ID, $courseId);
    $statement = $propelConnection->prepare($query);
    $statement->execute();
    $resultset = $statement->fetchAll();
    return $resultset;
  }
  
  public static function getInstructorsForCourseAndYear($courseId, $year, PropelPDO $propelConnection)
  {
    $c = new Criteria();
    $c->addJoin(CourseInstructorAssociationPeer::INSTRUCTOR_ID, InstructorPeer::ID);
    $crit1 = $c->getNewCriterion(CourseInstructorAssociationPeer::COURSE_ID, $courseId);
    $crit2 = $c->getNewCriterion(CourseInstructorAssociationPeer::YEAR, $year);
    $c->addAnd($crit1);
    $c->addAnd($crit2);
    $c->addAscendingOrderByColumn(InstructorPeer::LAST_NAME);
    return InstructorPeer::doSelect($c, $propelConnection);
  }
}
