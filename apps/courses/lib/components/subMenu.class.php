<?php

class subMenuOptions
{
  const SEARCH = 1;
  const COURSE = 2;
  const COURSE_CRITIQUE = 3;
  const COURSE_EXAM = 4;
  const COURSE_COMMENTING = 5;
  const MAINTENANCE = 10;
  const MAINTENANCE_COURSE = 11;
  const MAINTENANCE_INSTRUCTOR = 12;
  const MAINTENANCE_DEPARTMENT = 13;
  const MAINTENANCE_DISCIPLINE = 14;
  const MAINTENANCE_EXAM = 15;
  const MAINTENANCE_RATING = 16;
  const MAINTENANCE_LOGIN = 17;
  const MAINTENANCE_COMMENTING = 18;
  const ERROR = 20;
  
  public static function getMaintenanceSectionNames(){
    return array(subMenuOptions::MAINTENANCE_COURSE=>"Courses", 
    subMenuOptions::MAINTENANCE_INSTRUCTOR=>"Instructors",
    subMenuOptions::MAINTENANCE_DEPARTMENT=>"Departments",
    subMenuOptions::MAINTENANCE_DISCIPLINE=>"Disciplines",
    subMenuOptions::MAINTENANCE_EXAM=>"Exams",
    subMenuOptions::MAINTENANCE_RATING=>"Ratings",
    subMenuOptions::MAINTENANCE_COMMENTING=>"Commenting");
  }
  
  public static function getMaintenanceSections()
  {
    return array(subMenuOptions::MAINTENANCE_COURSE=>"admincourse/index", 
    subMenuOptions::MAINTENANCE_INSTRUCTOR=>"admininstructor/index",
    subMenuOptions::MAINTENANCE_DEPARTMENT=>"admindepartment/index",
    subMenuOptions::MAINTENANCE_DISCIPLINE=>"admindiscipline/index",
    subMenuOptions::MAINTENANCE_EXAM=>"adminexam/index",
    subMenuOptions::MAINTENANCE_RATING=>"adminratingCriteria/index",
    subMenuOptions::MAINTENANCE_COMMENTING=>"admincommenting/index");
  }
  
  public static function getMaintenanceSectionDetails(){
    return array(subMenuOptions::MAINTENANCE_COURSE=>"Add, modify or remove courses.", 
    subMenuOptions::MAINTENANCE_INSTRUCTOR=>"Add, modify or remove instructors.",
    subMenuOptions::MAINTENANCE_DEPARTMENT=>"Add, modify or remove departments.",
    subMenuOptions::MAINTENANCE_DISCIPLINE=>"Add, modify or remove disciplines (academic programs).",
    subMenuOptions::MAINTENANCE_EXAM=>"Add, modify or remove exams.",
    subMenuOptions::MAINTENANCE_RATING=>"Manage course ratings.",
    subMenuOptions::MAINTENANCE_COMMENTING=>"Manage course commenting.");
  }
}