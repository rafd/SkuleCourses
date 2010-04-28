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
    return AutoCourseRatingPeer::doSelectJoinAll($c, $propelConnection);
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
    $raw = CourseInstructorAssociationPeer::doSelectJoinInstructor($c, $conn);
    
    foreach ($raw as $obj){
      $results[] = $obj->getInstructor();
    }
    
    return $results;
  }
  
  /**
   * Used in import history to display the number of good and mismatched entries
   * grouped by import_dt
   * @param PropelPDO $conn
   * @return an associative array with [datetime, number of good entries, number of
   * bad entries]
   */
  public static function getImportHistory(PropelPDO $conn=null)
  {
    if (!isset($conn)) $conn = Propel::getConnection();
    
    $table = AutoCourseRatingPeer::IMPORT_DT;
    $pos = strrpos($table, '.');
    $IMPORT_DT = substr($table, $pos+1);
    
    $query = "SELECT DISTINCT c.%s AS import_dt,
    (SELECT COUNT(1) FROM %s a WHERE a.%s = c.%s) AS num_good,
    (SELECT COUNT(1) FROM %s a WHERE a.%s = c.%s) AS num_mismatched
    FROM %s c
    ORDER BY c.%s DESC";
    
    $query = sprintf($query, $IMPORT_DT, AutoCourseRatingPeer::TABLE_NAME, 
      $IMPORT_DT, $IMPORT_DT, AutoCourseRatingMismatchedPeer::TABLE_NAME,
      $IMPORT_DT, $IMPORT_DT, AutoCourseRatingPeer::TABLE_NAME, $IMPORT_DT);
      
    $statement = $conn->prepare($query);
    $statement->execute();
    $results = $statement->fetchAll();
    
    return $results;
  }
  
  public static function isYearPresent($year, PropelPDO $conn=null){
    if (!isset($conn)) $conn = Propel::getConnection();
    $query = "SELECT 1 FROM %s JOIN %s ON %s=%s WHERE %s = %s";
    $query = sprintf($query, AutoCourseRatingPeer::TABLE_NAME, CourseInstructorAssociationPeer::TABLE_NAME, 
      CourseInstructorAssociationPeer::ID, AutoCourseRatingPeer::COURSE_INS_ID, CourseInstructorAssociationPeer::YEAR, $year);
    $statement = $conn->prepare($query);
    $statement->execute();
    $results = $statement->fetchAll();
    if (count($results) >= 1) return true;
    else return false;
  }
  
  public static function getMatchedRowsForDt($importDt, PropelPDO $conn=null)
  {
    if (!isset($conn)) $conn = Propel::getConnection();
    
    $c = new Criteria();
    $c->addJoin(AutoCourseRatingPeer::COURSE_INS_ID, CourseInstructorAssociationPeer::ID);
    $c->addJoin(AutoCourseRatingPeer::FIELD_ID, RatingFieldPeer::ID);
    $crit = $c->getNewCriterion(AutoCourseRatingPeer::IMPORT_DT, $importDt);
    $c->addAnd($crit);
    $c->addAscendingOrderByColumn(CourseInstructorAssociationPeer::YEAR);
    $c->addAscendingOrderByColumn(CourseInstructorAssociationPeer::COURSE_ID);
    $c->addAscendingOrderByColumn(RatingFieldPeer::ID);
    $c->addAscendingOrderByColumn(AutoCourseRatingPeer::RATING);
    
    return AutoCourseRatingPeer::doSelectJoinAll($c, $conn);
  }
}
