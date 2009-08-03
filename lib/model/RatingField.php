<?php

class RatingField extends BaseRatingField
{
  public function getRatingTypeString()
  {
    switch ($this->getTypeId()){
      case EnumItemPeer::RATING_BOOLEAN:
        return "In terms of true and false";
      case EnumItemPeer::RATING_SCALE_FIVE:
        return "On a scale of 1 to 5, 1 being least and 5 being most";
      case EnumItemPeer::RATING_SCALE_SEVEN:
        return "On a scale of 1 to 7, 1 being least and 7 being most";
      default:
        return "";
    }
  }
}
