<?php

class CourseSectionPeer extends BaseCourseSectionPeer
{
  const TUTORIAL = "TUT";
  const LECTURE = "LEC";
  const PRACTICAL = "PRA";
  
  public static function getSectionsForTerm($term, PropelPDO $propelConnection=null)
  {
    $c = new Criteria();
    $crit1 = $c->getNewCriterion(self::TERM, $term);
    $c->addAnd($crit1);
    $c->addAscendingOrderByColumn(self::COURSE_ID);
    $c->addAscendingOrderByColumn(self::SECTION_TYPE);
    $c->addAscendingOrderByColumn(self::SECTION_NUM);
    return self::doSelect($c, $propelConnection);
  }
}
