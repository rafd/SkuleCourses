<?php

class skuleGlobalConfigHandler extends sfYamlConfigHandler
{
  public function execute($configFiles)
  {
    // parse the yaml
    $config = $this->parseYamls($configFiles);
    
    // generate php parameters
    $data  = "<?php\n";
    
    //- mail notification
    
    $data .= "\$mailNotificationParams = array();\n";
 
    if (isset($config['mail_notification']['sender_address']))
      $data .= sprintf("\$mailNotificationParams['sender_address']=('%s');\n", $config['mail_notification']['sender_address']);

    if (isset($config['mail_notification']['sender_ssl']))
      $data .= sprintf("\$mailNotificationParams['sender_ssl']=('%s');\n", $config['mail_notification']['sender_ssl']);
    
    if (isset($config['mail_notification']['sender_smtp']))
      $data .= sprintf("\$mailNotificationParams['sender_smtp']=('%s');\n", $config['mail_notification']['sender_smtp']);
    
    if (isset($config['mail_notification']['sender_username']))
      $data .= sprintf("\$mailNotificationParams['sender_username']=('%s');\n", $config['mail_notification']['sender_username']);
    
    if (isset($config['mail_notification']['sender_password']))
      $data .= sprintf("\$mailNotificationParams['sender_password']=('%s');\n", $config['mail_notification']['sender_password']);
    
    if (isset($config['mail_notification']['receiver']))
    {
      foreach ($config['mail_notification']['receiver'] as $address)
        $data .= sprintf("\$mailNotificationParams['receiver'][]=('%s');\n", $address);
    }
    
    //- skule global
    
    $data .= "\$skuleGlobalParams = array();\n";
    
    if (isset($config['global']['domain']))
      $data .= sprintf("\$skuleGlobalParams['domain']=('%s');\n", $config['global']['domain']);
      
    if (isset($config['global']['port']))
      $data .= sprintf("\$skuleGlobalParams['port']=('%s');\n", $config['global']['port']);
      
    if (isset($config['global']['login_redirect']))
      $data .= sprintf("\$skuleGlobalParams['login_redirect']=('%s');\n", $config['global']['login_redirect']);
 
    //- applet uploader
    
    $data .= "\$appletUploaderParams = array();\n";
    
    if (isset($config['applet_uploader']['username']))
      $data .= sprintf("\$appletUploaderParams['username']=('%s');\n", $config['applet_uploader']['username']);
      
    if (isset($config['applet_uploader']['password']))
      $data .= sprintf("\$appletUploaderParams['password']=('%s');\n", $config['applet_uploader']['password']);
      
    return $data;
  }
}