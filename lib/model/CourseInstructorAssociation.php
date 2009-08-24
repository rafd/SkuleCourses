<?php

class CourseInstructorAssociation extends BaseCourseInstructorAssociation
{
  public function __toString()
  {
    return $this->getCourseId();
  }
}
