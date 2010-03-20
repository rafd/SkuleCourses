<?php

class EnumItemPeer extends BaseEnumItemPeer
{
  // node IDs
  const ROOT_ID = 1;
  const USER_TYPES_NODE_ID = 10;
  const RATING_TYPES_NODE_ID = 20;
  const EXAM_TYPES_NODE_ID = 60;
  const DISCIPLINES_NODE_ID = 100;
  const MAPPING_ITEMS_NODE_ID = 220; 
  
  // mapping file types
  const CSV_TYPE = 201;
  
  // mapping item IDs
  const MAPPING_IGNORE = 221;
  const MAPPING_COURSE_CODE = 222;
  const MAPPING_COURSE_NAME = 223;
  const MAPPING_INSTRUCTOR_NAME = 224;
  const MAPPING_QUESTION = 227;
  const MAPPING_NUMBER = 231;
  
  // exam types
  const QUIZ = 61;
  const TEST = 62;
  const EXAM = 63;
  const PROBLEM_SET = 64;

  // meta rating types
  const RATING_BOOLEAN = 21;
  const RATING_SCALE = 22;
  const RATING_NUMBER = 23;
  
  // user types
  const USER_ADMIN = 11;
  const USER_MODERATOR = 12;
  const USER_GUEST = 13;
  const USER_NORMAL = 14;
    
  public static function getAllForParentNodeId($parentId, PropelPDO $propelConnection=null)
  {
    $c = new Criteria();
    $c->add(EnumItemPeer::PARENT_ID, $parentId);
    $c->addAscendingOrderByColumn(EnumItemPeer::DESCR);
    return EnumItemPeer::doselect($c, $propelConnection);
  }
  
  /**
   * Returns the largest available ID for a given parent id
   * If none available, returns 0
   * @param PropelPDO $parentId
   * @param $conn
   * @return unknown_type
   */
  public static function getLargestAvailableIdForNodeId($parentId, PropelPDO $conn=null)
  {
    if (!isset($conn)) $conn = Propel::getConnection();
    
    $query = "SELECT MAX(%s) FROM %s WHERE %s=%s";
    $query = sprintf($query, EnumItemPeer::ID, EnumItemPeer::TABLE_NAME, EnumItemPeer::PARENT_ID, $parentId);
    $statement = $conn->prepare($query);
    $statement->execute();
    $resultset = $statement->fetchAll(PDO::FETCH_COLUMN, 0);
    $id = $resultset[0] + 1;
    
    $item = EnumItemPeer::retrieveByPK($id, $conn);
    if (!isset($item)) return $id;
    else return 0;
  }
}
