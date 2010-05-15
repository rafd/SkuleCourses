<?php

/**
 * Finds all compatible course sections with the given constraints
 * @author Jimmy
 * 
 */

//TODO untested
class FetchLogic
{
  private $_nonAvailableSlots;
  private $_term;
  private $_compatibleSections;
  
  /**
   * 
   * @param $term
   * @param $nonAvailableSlots The non-available slots are passed in as follows:
   * [key=1 (Monday) => array("0900-1100", "1600-1700"),
   * [key=2 (Tuesday) => array()...etc.] 
   * @return unknown_type
   */
  public function setConstraints($term, $nonAvailableSlots){
    $this->_nonAvailableSlots = $nonAvailableSlots;
    $this->_term = $term;
  }
  
  public function fetchCompatible(){
    $conn = Propel::getConnection();
    $rawSectionData = CourseSectionPeer::getSectionsForTerm($this->_term, $conn);
    $this->_compatibleSections = array();
    
    // first we need to group the raw data by courses
    $count = count($rawSectionData);
    $groupedSectionArr = array();
    for ($i=0; $i<$count; $i++){
      $sectionObj = $rawSectionData[$i];
      
      if ($i==0 || $groupedSectionArr["course"]!=$sectionObj->getCourseId()){
        
        if ($i != 0){
          // now that we know the number of total LEC, TUT and PRA, we can
          // begin to eliminate the incompatible ones
          $groupedSectionArr = getCompatibleSlotsForCourse($groupedSectionArr);
          if (isset($groupedSectionArr)){
            $this->_compatibleSections[] = $groupedSectionArr;
          }
          
        }
        
        // get the array ready for the next course
        $groupedSectionArr = array();
        $groupedSectionArr["course"] = $sectionObj->getCourseId();
        
      } elseif ($i==($count-1)){
        
        // store the last row
        $sectionType = $sectionObj->getSectionType();
        if (!isset($groupedSectionArr[$sectionType]))
          $groupedSectionArr[$sectionType] = array();
        $sectionNum = $sectionObj->getSectionNum();
        $meetTime = $sectionObj->getMeetTime();
        if (isset($groupedSectionArr[$sectionType][$sectionNum]))
          $groupedSectionArr[$sectionType][$sectionNum][] = $meetTime;
        else
          $groupedSectionArr[$sectionType][$sectionNum] = array($meetTime);
        
        // begin eliminating the incompatible ones
        $groupedSectionArr = getCompatibleSlotsForCourse($groupedSectionArr);
        if (isset($groupedSectionArr)){
          $this->_compatibleSections[] = $groupedSectionArr;
        }
      }
      
      $sectionType = $sectionObj->getSectionType();
      if (!isset($groupedSectionArr[$sectionType]))
        $groupedSectionArr[$sectionType] = array();
      
      $sectionNum = $sectionObj->getSectionNum();
      $meetTime = $sectionObj->getMeetTime();
      if (isset($groupedSectionArr[$sectionType][$sectionNum]))
        $groupedSectionArr[$sectionType][$sectionNum][] = $meetTime;
      else
        $groupedSectionArr[$sectionType][$sectionNum] = array($meetTime);
    }
    
    return $this->_compatibleSections;
  }
  
  /**
   * 
   * @param $rawTime e.g. T1500
   * @return array(weekday, time);
   */
  private function decipherTime($rawTime){
    $weekday = substr($rawTime, 0, 1);
    $time = substr($rawTime, 1, 4);
    return array(helperFunctions::translateWeekDayAbbrv($weekday), $time);
  }
  
  private function getCompatibleSlotsForCourse($groupedSectionArr){
    $nums = array(count($groupedSectionArr[CourseSectionPeer::LECTURE]),
      count($groupedSectionArr[CourseSectionPeer::TUTORIAL]),
      count($groupedSectionArr[CourseSectionPeer::PRACTICAL]));

    $index = 0; $courseNoGood = false;
    foreach (array(CourseSectionPeer::LECTURE, CourseSectionPeer::TUTORIAL, CourseSectionPeer::PRACTICAL) as $sectionType){
      $notCompatibleList = array();
      
      // check each slot for compatibility
      foreach ($groupedSectionArr[$sectionType] as $sectionNum => $sectionTimes){
        $notCompatible = false;
        foreach ($sectionTimes as $meetTime){
          if (!$this->isCompatibleMeetTime($meetTime)){
            $notCompatible = true;
            break;
          }
        }
      
        if ($notCompatible) $notCompatibleList[] = $sectionNum;
      }
      
      // delete the incompatible ones
      if ($nums[$index] != count($notCompatibleList)){
        foreach ($notCompatibleList as $sectionNum){
          unset($groupedSectionArr[$sectionType][$sectionNum]);
        }
      } else {
        $courseNoGood = true;
        break;
      }

      $index++;
    }
    
    // return the now compatible slots
    if (!$courseNoGood){
      return $groupedSectionArr;
    } else return null;
  }
  
  private function isCompatibleMeetTime($meetTime){
    $beginTime = substr($meetTime, 0, 5);
    $endTime = substr($meetTime, 5, 5);
    
    $actBeginTime = $this->decipherTime($beginTime);
    $actEndTime = $this->decipherTime($endTime);
    
    $nonAvailableTimes = $this->_nonAvailableSlots[$actBeginTime[0]];
    
    foreach ($nonAvailableTimes as $timeRange){
      $NABeginTime = substr($timeRange, 0, 4);
      $NAEndTime = substr($timeRange, 4, 4);
      
      if (($actBeginTime[1]>$NABeginTime && $actBeginTime[1]<$NAEndTime) ||
        ($actEndTime[1]>$NABeginTime && $actEndTime[1]<$NAEndTime)){
        return false;
      }
    }
    
    return true;
  }
}