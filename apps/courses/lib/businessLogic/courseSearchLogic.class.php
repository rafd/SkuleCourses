<?php

/**
 * Static class used for finding courses with parameters
 *
 * @author     Jimmy Lu
 */
class courseSearchLogic{
  
  public static function findCoursesByInstructorId($instructorId, $propelConnection)
  {
    $c = new Criteria();
    $c->addJoin(CoursePeer::ID,CourseInstructorAssociationPeer::COURSE_ID);
    $c->add(CourseInstructorAssociationPeer::INSTRUCTOR_ID,$instructorId);
    $c->setDistinct();
    $c->addAscendingOrderByColumn(CoursePeer::ID);
    return CoursePeer::doselect($c, $propelConnection);
  }
  
  /**
   * Fetches a list of Course objects
   *
   * @param       int $disciplintId The EnumItem id of discipline
   * @param       int $year Year of study
   * @return      A list of course objects
   */
  public static function findCoursesByDisciplineIdAndYear($disciplineId, $year, $propelConnection)
  {
    $c = new Criteria();
    $c->addJoin(CoursePeer::ID, CourseDisciplineAssociationPeer::COURSE_ID);
    $crit1 = $c->getNewCriterion(CourseDisciplineAssociationPeer::DISCIPLINE_ID, $disciplineId);
    $crit2 = $c->getNewCriterion(CourseDisciplineAssociationPeer::YEAR_OF_STUDY, $year);
    $c->addAnd($crit1, $crit2);
    $c->setDistinct();
    $c->addAscendingOrderByColumn(CoursePeer::ID);
    return CoursePeer::doselect($c, $propelConnection);
  }
  
  public static function findCourseById($courseId, $propelConnection)
  {
    return CoursePeer::retrieveByPK($courseId, $propelConnection);
  }
  
  public static function findCoursesByName($descr, $propelConnection)
  {
    $c = new Criteria();
    $c->add(CoursePeer::DESCR, "%".$descr."%");
    $c->addAscendingOrderByColumn(CoursePeer::ID);
    return CoursePeer::doselect($c, $propelConnection);
  }
}