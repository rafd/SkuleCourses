<?php


require_once(dirname(__FILE__).'/../config/ProjectConfiguration.class.php');

$configuration = ProjectConfiguration::getApplicationConfiguration('courses', 'prod', true);
sfContext::createInstance($configuration)->dispatch();
