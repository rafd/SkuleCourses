<?php

class ImportMappingPeer extends BaseImportMappingPeer
{
  public static function getAll()
  {
    //FIXME doSelectJoinAll throws error while addJoin doesn't hydrate the objects
    $c = new Criteria();
    $c->addAscendingOrderByColumn(self::COLUMN);
    $c->addJoin(self::MAPPING, EnumItemPeer::ID);
    $c->addJoin(self::RATING_FIELD_ID, RatingFieldPeer::ID);
    return self::doSelect($c);
  }
}
