<?php

class CoursePeer extends BaseCoursePeer
{
  /**
   * Fetches a list of Course objects
   *
   * @param       string $descr The DESCR of course object to be searched
   * @return      A list of course objects
   */
  public static function findCoursesByName($descr, PropelPDO $propelConnection=null)
  {
    $c = new Criteria();
    $c->add(CoursePeer::DESCR, "%".$descr."%");
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
  public static function findCoursesByDisciplineIdAndYear($disciplineId, $year, PropelPDO $propelConnection=null)
  {
    $c = new Criteria();
    $c->addJoin(CoursePeer::ID, CourseDisciplineAssociationPeer::COURSE_ID);
    $crit1 = $c->getNewCriterion(CourseDisciplineAssociationPeer::DISCIPLINE_ID, $disciplineId);
    $c->addAnd($crit1);
    
    if ($year>0){
	    $crit2 = $c->getNewCriterion(CourseDisciplineAssociationPeer::YEAR_OF_STUDY, $year);
	    $c->addAnd($crit2);
    }
    
    $c->setDistinct();
    $c->addAscendingOrderByColumn(CoursePeer::ID);
    return CoursePeer::doselect($c, $propelConnection);
  }
  
  /**
   * Fetches a list of Course objects
   *
   * @param       int $instructorId ID of instructor object
   * @return      A list of course objects
   */
  public static function findCoursesByInstructorId($instructorId, PropelPDO $propelConnection=null)
  {
    $c = new Criteria();
    $c->addJoin(CoursePeer::ID,CourseInstructorAssociationPeer::COURSE_ID);
    $c->add(CourseInstructorAssociationPeer::INSTRUCTOR_ID,$instructorId);
    $c->setDistinct();
    $c->addAscendingOrderByColumn(CoursePeer::ID);
    return CoursePeer::doselect($c, $propelConnection);
  }
}
