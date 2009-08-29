<?php

/*
 * This script is the server handler for appletExamsUploader
 */


/*
 * check http basic authentication
 */
if ( !isset($_SERVER['PHP_AUTH_USER']))
{
  header('WWW-Authenticate: Basic realm="Upload Area"');
  header('HTTP/1.0 401 Unauthorized');
  echo 'Access denied';
  exit;
}
else
{
  $username = $_SERVER['PHP_AUTH_USER'];
  $password = $_SERVER['PHP_AUTH_PW'];

  // get authorization info from configs
  require_once(dirname(__FILE__).'/../../config/ProjectConfiguration.class.php');
  $configuration = ProjectConfiguration::getApplicationConfiguration('courses', 'prod', true);
  $instance = sfContext::createInstance($configuration);
  include($instance->getConfigCache()->checkConfig('config/skuleGlobal.yml'));

  if ( $username != $appletUploaderParams['username'] or $password != $appletUploaderParams['password'] ) 
    die ("Authentication failed!");
}

/*
 * check if something has been uploaded
 */
if ( !isset($_FILES) or !count ($_FILES) or !isset ( $_FILES['uploadfile'] ) )
{
  die ("No file data received (File might be to large).");
}
if (!isset($_POST['year']))
  die ("No year info received.");

/*
 * check file size
 */
$maxfilesize = 5000; //kByte
if ($_FILES['uploadfile']['size'] > $maxfilesize*1024)
{
  die ("File exceeds maximum filesize: $maxfilesize kByte.");
}

// Check if the target directory exists
// If not, we create the directory

$year = $_POST['year'];
$tgt_path = "/exams/official/".$year;

//make directories
if (!is_dir($tgt_path)) {
  if (!mkdir($tgt_path))
    die ("Error at creating directories");
}

/*
 * get file info
 */
$tmp_name  = $_FILES['uploadfile']['tmp_name'];
$file_name = $_FILES['uploadfile']['name'];

/*
 * check file name for validity
 */

if ( strstr($file_name, ".." ) )
{
  die ("Illegal filename.");
}

$tgt_path = $tgt_path."/".$file_name;

/*
 * check if file exists
 */
if ( file_exists ( $tgt_path) )
{
  echo "File {$_FILES['uploadfile']['name']} exists - not uploaded.";
}

/*
 * move temporary file to target location and check for errors
 */
if ( !move_uploaded_file( $tmp_name, $tgt_path ) )
{
  die ("Problem during upload.");
}

/*
 * report upload succes
 */
echo "Upload successful.";
