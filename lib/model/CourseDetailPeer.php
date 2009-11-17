<?php

class CourseDetailPeer extends BaseCourseDetailPeer
{
  public static function getObjectForCourseId($courseId, PropelPDO $propelConnection=null){
    $c = new Criteria();
  	$c->add(CourseDetailPeer::COURSE_ID,$courseId);
    return CourseDetailPeer::doSelectOne($c, $propelConnection);
  }
}
