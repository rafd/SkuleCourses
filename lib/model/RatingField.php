<?php

class RatingField extends BaseRatingField
{
  public function getRatingTypeString(PropelPDO $conn=null)
  {
    if ($conn == null) $conn = Propel::getConnection();
    $item = $this->getEnumItem($conn);
    
    if ($item->getId() == EnumItemPeer::RATING_BOOLEAN)
      return "In terms of true and false";
    else if ($item->getId() == EnumItemPeer::RATING_NUMBER)
      return "In a numerical number";
    else {
      if ($item->getParentId() == EnumItemPeer::RATING_SCALE){
        return "On a scale of 0 to ".($item->getDescr()-1).", 0 being least and ".($item->getDescr()-1)." being most";
      } else {
        // not a rating type
        throw new Exception("not a rating type");
      }
    }
  }
}
