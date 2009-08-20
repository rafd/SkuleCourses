<?php

class skuleGlobalConfigHandler extends sfYamlConfigHandler
{
  public function execute($configFiles)
  {
    // parse the yaml
    $config = $this->parseYamls($configFiles);
 
    // generate php parameters
    
    //- mail notification
    $data  = "<?php\n";
    $data .= "\$mailNotificationParams = array();\n";
 
    if (isset($config['mail_notification']['sender_address']))
    {
      $data .= sprintf("\$mailNotificationParams['sender_address']=('%s');\n", $config['mail_notification']['sender_address']);
    }
 
    if (isset($config['mail_notification']['sender_ssl']))
    {
      $data .= sprintf("\$mailNotificationParams['sender_ssl']=('%s');\n", $config['mail_notification']['sender_ssl']);
    }
    
    if (isset($config['mail_notification']['sender_smtp']))
    {
      $data .= sprintf("\$mailNotificationParams['sender_smtp']=('%s');\n", $config['mail_notification']['sender_smtp']);
    }
    
    if (isset($config['mail_notification']['sender_username']))
    {
      $data .= sprintf("\$mailNotificationParams['sender_username']=('%s');\n", $config['mail_notification']['sender_username']);
    }
    
    if (isset($config['mail_notification']['sender_password']))
    {
      $data .= sprintf("\$mailNotificationParams['sender_password']=('%s');\n", $config['mail_notification']['sender_password']);
    }
    
    if (isset($config['mail_notification']['receiver']))
    {
      foreach ($config['mail_notification']['receiver'] as $address){
        $data .= sprintf("\$mailNotificationParams['receiver'][]=('%s');\n", $address);
      }
    }
 
    return $data;
  }
}