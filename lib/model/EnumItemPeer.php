<?php

class EnumItemPeer extends BaseEnumItemPeer
{
  const ROOT_ID = 1;
  const USER_TYPES_NODE_ID = 10;
  const RATING_TYPES_NODE_ID = 20;
  const EXAM_TYPES_NODE_ID = 60;
  const DISCIPLINES_NODE_ID = 100;
  
  public static function getAllForParentNodeId($parentId, PropelPDO $propelConnection=null)
  {
    $c = new Criteria();
    $c->add(EnumItemPeer::PARENT_ID, $parentId);
    $c->addAscendingOrderByColumn(EnumItemPeer::DESCR);
    return EnumItemPeer::doselect($c, $propelConnection);
  }
}
