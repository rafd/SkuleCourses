<?php

# FROZEN_SF_LIB_DIR: /var/www/production/sfweb/www/cache/symfony-for-release/1.2.7/lib

require_once dirname(__FILE__).'/../lib/symfony/autoload/sfCoreAutoload.class.php';
sfCoreAutoload::register();

class ProjectConfiguration extends sfProjectConfiguration
{
  public function setup()
  {
    // for compatibility / remove and enable only the plugins you want
    $this->enableAllPluginsExcept(array('sfDoctrinePlugin', 'sfCompat10Plugin'));

    // this seems to be a bug in symfony
    // we manually include the handler here
    // bug report: http://trac.symfony-project.org/ticket/6566
    require_once dirname(__FILE__).'/../lib/skuleGlobalConfigHandler.php';
  }
}
