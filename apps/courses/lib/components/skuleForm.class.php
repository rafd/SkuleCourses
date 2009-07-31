<?php

class skuleForm
{
  private $_formName;
  private $_actionUrl;
  
  public function __construct($formName, $actionUrl)
  {
    $this->_formName = $formName;
    $this->_actionUrl = $actionUrl;
  }
  
  public function getFormName()
  {
    return $this->_formName;
  }
  
  public function getActionUrl()
  {
    return $this->_actionUrl;
  }
  
  public function getHeader()
  {
    sfProjectConfiguration::getActive()->loadHelpers(array("Url"));
    sfProjectConfiguration::getActive()->loadHelpers(array("Tag"));
    
    //TODO: hidden element
    return "<form name='{$this->_formName}' method='post' action='".url_for($this->_actionUrl)."'>
    	<input type='hidden' name='' value='"."'/>";
  }
  
  public function getFooter()
  {
    return "</form>";
  }
  
  public function getButtonField()
  {
    echo "<div class='buttonfield'>
		<a class='deletebtn' title='Delete current item'></a>
		<a class='addbtn' title='Add new item'></a>
		<a class='savebtn' title='Save changes' onclick='return document.{$this->_formName}.submit();'></a>
		</div>";
  }
}