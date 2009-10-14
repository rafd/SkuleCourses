<?PHP

class searchBar
{
  public static function get()
  {
    sfProjectConfiguration::getActive()->loadHelpers(array("Url"));
    sfProjectConfiguration::getActive()->loadHelpers(array("Tag"));
    
    return "<script type='text/javascript'>
    	var skuleCoursesSearchDefaultStr = 'Search in Skule Courses';
    
    	function skuleCoursesSearchBarOnFocus(thisObj){
    		if (thisObj.value==skuleCoursesSearchDefaultStr){thisObj.value='';}
    	}
    	
    	function skuleCoursesSearchBarOnBlur(thisObj){
    		if (trim(thisObj.value)==''){thisObj.value=skuleCoursesSearchDefaultStr;}
    	}
    </script>
    
    <div id='skulebar'>
		<a id='skule' href='http://www.skule.ca'>SKULE&trade;</a>
		<form method='get' action='".url_for("search/fuzzySearch")."' name='frmSearchBar'>
		<div style='margin: 0pt; padding: 0pt; display: inline;'>
		</div>
		<input type='text' title='Quick search in Skule Courses' size='30' onfocus='skuleCoursesSearchBarOnFocus(this)' onblur='skuleCoursesSearchBarOnBlur(this)' name='query' id='search_search' autocomplete='off'/>
		<input id='club_submit' type='submit' value='Search' name='commit' style='cursor:pointer '/>
		<script type='text/javascript'>document.frmSearchBar.query.value=skuleCoursesSearchDefaultStr;</script>
		</form>
		<a href='mailto:courses@webdev.skule.ca' title='Send us an email if you have any concerns about Skule Courses' style='margin-left:20px;width:23px;height:2em;float:left;vertical-align:middle;background: center center url(/skule_images/mailto.gif) no-repeat;'></a>
		<div id='user'>
		</div>
		</div>";

  }
}