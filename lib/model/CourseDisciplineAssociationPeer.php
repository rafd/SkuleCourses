<?php

class CourseDisciplineAssociationPeer extends BaseCourseDisciplineAssociationPeer
{
  public static function getRelatedDisciplinesForCourse(Course $course, PropelPDO $propelConnection)
  {
    $c = new Criteria();
    $c->addAscendingOrderByColumn(DisciplinePeer::DESCR);
    $rawResults = $course->getCourseDisciplineAssociationsJoinDiscipline($c,$propelConnection);
    
    $retResults = array();
    foreach ($rawResults as $result){
      $en = $result->getDiscipline();
      $retResults[] = array("programName"=>$en->getDescr(), "year"=>helperFunctions::getYearOfStudy($result->getYearOfStudy()), 
      	"disciplineId"=>$en->getId(), "numYear"=>$result->getYearOfStudy());
    }
    return $retResults;
  }
}
