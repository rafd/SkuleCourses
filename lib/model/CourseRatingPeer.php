<?php

class CourseRatingPeer extends BaseCourseRatingPeer
{
  //TODO: incorporate AutoCourseRating
  public static function getAvailableYearsForCourseId($courseId, PropelPDO $propelConnection)
  {
    $query = "SELECT DISTINCT YEAR(%s) AS y FROM %s WHERE %s='%s' ORDER BY y DESC";
    $query = sprintf($query, CourseRatingPeer::INPUT_DT, CourseRatingPeer::TABLE_NAME, CourseRatingPeer::COURSE_ID, $courseId);
    $statement = $propelConnection->prepare($query);
    $statement->execute();
    $resultset = $statement->fetchAll(PDO::FETCH_COLUMN, 0);
    return $resultset;
  }
}
