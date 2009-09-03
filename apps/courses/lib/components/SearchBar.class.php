<?PHP

class searchBar
{
  public static function get()
  {
    sfProjectConfiguration::getActive()->loadHelpers(array("Url"));
    sfProjectConfiguration::getActive()->loadHelpers(array("Tag"));
    
    //TODO: fix this
    return "<div id='skulebar'>
		<a id='skule' href='/'>Skule Courses</a>
		<form method='get' action='".url_for("search/fuzzySearch")."' name='frmSearchBar'>
		<div style='margin: 0pt; padding: 0pt; display: inline;'>
		</div>
		<input type='text' title='Quick search in Skule Courses' size='30' name='query' id='search_search' autocomplete='off'/>
		</form>
		<div id='user'>
		<a href='/login'>Login</a>
		</div>
		</div>";

  }
}