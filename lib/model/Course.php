<?php

class Course extends BaseCourse
{
  public function __toString()
  {
    return strval($this->getId());
  }
  
  public function delete(PropelPDO $con = null)
  {
    // delete course_discipline_assoc
    // delete course_instructor_assoc
    // delete course_detail
    // delete course_rating_data
    // delete auto_course_rating_data
    parent::delete($con);
  }
  
  /**
   * Overrides the propel generated getCourseComments by imposing the results to be
   * retrieved ordered by import_dt
   * @see lib/model/om/BaseCourse#getCourseComments($criteria, $con)
   */
  public function getCourseComments($criteria = null, PropelPDO $con = null, $fetchUnapproved=false)
  {
    if ($criteria === null) {
      $criteria = new Criteria(CoursePeer::DATABASE_NAME);
	}
	  elseif ($criteria instanceof Criteria)
	{
	  $criteria = clone $criteria;
	}
	
	if (!$fetchUnapproved){
	  $crit = $criteria->getNewCriterion(CourseCommentPeer::APPROVED, 1);
	  $criteria->addAnd($crit);
	}
	$criteria->addDescendingOrderByColumn(CourseCommentPeer::INPUT_DT);
    
    return parent::getCourseComments($criteria, $con);
  }
}
