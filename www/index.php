<?php

require_once(dirname(__FILE__).'/../config/ProjectConfiguration.class.php');

$configuration = ProjectConfiguration::getApplicationConfiguration('courses', 'prod', false);

function skuleErrorHandler($errno, $errstr, $errfile, $errline)
{
  helperFunctions::errorHandler($errno, $errstr, $errfile, $errline);

  /* Don't execute PHP internal error handler */
  return true;
}

// set to the user defined error handler
$old_error_handler = set_error_handler("skuleErrorHandler");

sfContext::createInstance($configuration)->dispatch();
