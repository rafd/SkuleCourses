<?php

class Course extends BaseCourse
{
  public function delete(PropelPDO $con = null)
  {
    // delete course_discipline_assoc
    // delete course_instructor_assoc
    // delete course_detail
    // delete course_rating_data
    // delete auto_course_rating_data
    parent::delete($con);
  }
}
