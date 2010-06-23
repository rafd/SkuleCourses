<?php


// this check prevents access to debug front controllers that are deployed by accident to production servers.
// feel free to remove this, extend it or make something more sophisticated.
if (!in_array(@$_SERVER['REMOTE_ADDR'], array('127.0.0.1', '::1')))
{
  die('You are not allowed to access this file. Check '.basename(__FILE__).' for more information.');
}

require_once(dirname(__FILE__).'/../config/ProjectConfiguration.class.php');

$configuration = ProjectConfiguration::getApplicationConfiguration('courses', 'dev', true);

function skuleErrorHandler($errno, $errstr, $errfile, $errline)
{
    //helperFunctions::errorHandler($errno, $errstr, $errfile, $errline);

    /* Don't execute PHP internal error handler */
    return false;
}

function skuleShutdown()
{
  // this is used to register fatal error
  /*if ($error = error_get_last()){
    if ($error['type'] == E_ERROR)
      helperFunctions::errorHandler($error['type'], $error['message'], $error['file'], $error['line']);
  }*/
}

// set to the user defined error handler
//$old_error_handler = set_error_handler("skuleErrorHandler");
//register_shutdown_function('skuleShutdown');

// set default timezone
date_default_timezone_set('America/Toronto');

sfContext::createInstance($configuration)->dispatch();
