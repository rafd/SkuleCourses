<?php
class skuleadminConst
{
  const DISCIPLINE_PARENT_ID = 100;
  const SEM_SPRING = 1;
  const SEM_WINTER = 9;
  const SEM_SUMMER = 5;
  const EXAMTYPE_PARENT_ID = 60;
  const USERTYPE_PARENT_ID = 10;
  const RATING_META_TYPES_PID = 20;
  const RATING_SCALE_TYPES_PID = 22;
  const INDIVIDUALEXAMFOLDER = '/exams/custom/';
  const EXAM_FILE_DATEFORMAT = 'Y-m-d-H-i-s';
  
  const DEPARTMENT_RECORDNUMBER = 10;
  const DISCIPLINE_RECORDNUMBER = 10;
  const COURSEINSTRUCTOR_ASSOCNUMBER = 10;
  const COURSE_RECORDNUMBER = 10;
  const EXAM_RECORDNUMBER = 10;
  const INSTRUCTOR_RECORDNUMBER = 10;
  const RATINGCRITERIA_RECORDNUMBER = 10; //ratingfield

  public static function decomposeURL(sfContext $context, sfRequest $request){
    $module = $context->getModuleName();
    $action = $context->getActionName();
    $parameters = $request->getParameterHolder()->getAll();
    
    return array("module"=>$module, "action"=>$action, "parameters"=>$parameters);
  }
  
  public static function setPageFromDecomposedURL($urlArray, $page){
    $url = $urlArray['module'].'/'.$urlArray['action'].'?';
    $found = false;
    foreach ($urlArray['parameters'] as $key => $value){
      if ($key=="page"){
        $found = true;
        $url .= $key.'='.$page.'&';
      } else {
        $url .= $key.'='.$value.'&';
      }
    }
    
    if (!$found){
      $url .= "page=$page";
    }

    return $url;
  }
  
}
?>