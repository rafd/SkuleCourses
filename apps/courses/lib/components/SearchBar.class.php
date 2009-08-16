<?PHP

class searchBar
{
  public static function get()
  {
    sfProjectConfiguration::getActive()->loadHelpers(array("Url"));
    sfProjectConfiguration::getActive()->loadHelpers(array("Tag"));
    
    return "<div id='searchbar'>
      <form name='frmSearchBar' method='get' action='".url_for("search/fuzzySearch")."'>
        Quick course search
        <table>
          <tr>
            <td>
              <input name='query' type='text' style='width:200px' />
            </td>
            <td>
              <a class='find' onclick='return document.frmSearchBar.submit();'></a>
            </td>
          </tr>
        </table>
      </form>
      <img class='hidden' src='/images/find.on.gif' />
    </div>";
  }
}