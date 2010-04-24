<?php

/**
 * Search by any fuzzy parameter
 *
 * @author     Jimmy Lu
 */
class fuzzySearch
{
  private $_profList;
  private $_courseList;
  private $_programList;

  /**
   * Returns the list of instructors found from the query
   *
   */
  public function getInstructorList()
  {
    return $this->_profList;
  }

  /**
   * Returns the list of courses found from the query
   */
  public function getCourseList()
  {
    return $this->_courseList;
  }

  /**
   * Returns the list of programs (disciplines) found from the query
   */
  public function getProgramList()
  {
    return $this->_programList;
  }

  /**
   * Executes query and hydrate this object
   *
   * @param       string $query the query being searched for
   */
  public function query($query, PropelPDO $propelConnection=null)
  {
    $refQuery = trim($query);

    if (strlen($refQuery) < 3)
    {
      throw new Exception("Too few characters in the query string");
    }
    elseif (helperFunctions::isMaliciousString($refQuery))
    {
      throw new Exception("Malicious string detected. Are you trying to wreck our system?");
    }
    else
    {
      // search for courses
      $c = new Criteria();
      $idCrit = $c->getNewCriterion(CoursePeer::ID, $refQuery."%", Criteria::LIKE);
      $nameCrit = $c->getNewCriterion(CoursePeer::DESCR, "%".$refQuery."%", Criteria::LIKE);
      $idCrit->addOr($nameCrit);
      $c->addAnd($idCrit);
      $c->setDistinct();
      $c->addAscendingOrderByColumn(CoursePeer::ID);
      $this->_courseList = CoursePeer::doselect($c, $propelConnection);

      // search for professors
      $c = new Criteria();
      $firstNameCrit = $c->getNewCriterion(InstructorPeer::FIRST_NAME, "%".$refQuery."%", Criteria::LIKE);
      $lastNameCrit = $c->getNewCriterion(InstructorPeer::LAST_NAME, "%".$refQuery."%", Criteria::LIKE);
      $firstNameCrit->addOr($lastNameCrit);
      $c->addAnd($firstNameCrit);
      $c->setDistinct();
      $c->addAscendingOrderByColumn(InstructorPeer::LAST_NAME);
      $this->_profList = InstructorPeer::doSelect($c, $propelConnection);

      // search for programs
      $c = new Criteria();
      $descrCrit = $c->getNewCriterion(DisciplinePeer::DESCR, "%".$refQuery."%", Criteria::LIKE);
      $c->addAnd($descrCrit);
      $c->setDistinct();
      $c->addAscendingOrderByColumn(DisciplinePeer::DESCR);
      $this->_programList = DisciplinePeer::doSelect($c, $propelConnection);
    }
  }
}