<?PHP

class SearchBar
{
  public static function get()
  {
    return "<div id='searchbar'>
      <form name='frmSearchBar' method=post action=''>
        Quick course search
        <table>
          <tr>
            <td>
              <input type='text' value='dfdf' style='width:200px' />
            </td>
            <td>
              <input type='submit' value='GO'/>
            </td>
          </tr>
        </table>
      </form>
    </div>";
  }
}