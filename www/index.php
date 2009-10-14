<?php

require_once(dirname(__FILE__).'/../config/ProjectConfiguration.class.php');

$configuration = ProjectConfiguration::getApplicationConfiguration('courses', 'prod', false);

function skuleErrorHandler($errno, $errstr, $errfile, $errline)
{
  helperFunctions::errorHandler($errno, $errstr, $errfile, $errline);

  /* Don't execute PHP internal error handler */
  return true;
}

function skuleShutdown()
{
  // this is used to register fatal error
  if ($error = error_get_last()){
    if ($error['type'] == E_ERROR)
      helperFunctions::errorHandler($error['type'], $error['message'], $error['file'], $error['line']);
    }
}

// set to the user defined error handler
// note: routing cache has been shut down to ensure that no random warnings are thrown
// on production
$old_error_handler = set_error_handler("skuleErrorHandler");
register_shutdown_function('skuleShutdown');

sfContext::createInstance($configuration)->dispatch();
