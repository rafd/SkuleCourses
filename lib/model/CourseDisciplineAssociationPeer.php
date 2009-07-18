<?php

class CourseDisciplineAssociationPeer extends BaseCourseDisciplineAssociationPeer
{
  public static function getRelatedDisciplinesForCourse(Course $course, PropelPDO $propelConnection)
  {
    $c = new Criteria();
    $c->addAscendingOrderByColumn(EnumItemPeer::DESCR);
    $rawResults = $course->getCourseDisciplineAssociationsJoinEnumItem($c,$propelConnection);
    
    $retResults = array();
    foreach ($rawResults as $result){
      $en = $result->getEnumItem();
      $retResults[] = array("programName"=>$en->getDescr(), "year"=>helperFunctions::getYearOfStudy($result->getYearOfStudy()), 
      	"disciplineId"=>$en->getId(), "numYear"=>$result->getYearOfStudy());
    }
    return $retResults;
  }
}
