var vis=1;

/**
 * raise a gray curtain on the screen to blanket all existing elements
 * requires grayout element to exist on the page
 * @param dialog_name the element to be raised in front of the blanket
 * @return null
 */
function grayout(dialog_name) 
{  
  var cover=document.getElementById('grayout');

  if(vis)
  {
    vis=0;
    cover.style.display='block';      
    document.getElementById(dialog_name).style.display='block';
  } 
  else 
  {   
    vis=1;
    cover.style.display='none'; 
    document.getElementById(dialog_name).style.display='none';
  }
}

/**
 * remove white spaces from both ends of the string
 * @param str string input
 * @param chars additional chars to be removed
 * @return trimed string
 */
function trim(str, chars) {
  return ltrim(rtrim(str, chars), chars);
}

/**
 * left trim
 * @param str
 * @param chars
 * @return
 */
function ltrim(str, chars) {
  chars = chars || "\\s";
  return str.replace(new RegExp("^[" + chars + "]+", "g"), "");
}

/**
 * right trim
 * @param str
 * @param chars
 * @return
 */
function rtrim(str, chars) {
  chars = chars || "\\s";
  return str.replace(new RegExp("[" + chars + "]+$", "g"), "");
}

/**
 * Replace new line character with <br/>
 * @param text
 * @return string
 */
function nl2br(text) {
  return text.replace(/\r\n|\r|\n/g, "<br/>");
}

/**
 * Replace <br/> with new line character
 * @param text
 * @return string
 */
function br2nl(text) {
  return text.replace(/<br\/>|<br \/>|<br>/g, "\n");
}

/**
 * Add slash in front of the desired char
 * @param text
 * @return string
 */
function addSlash(str) {
  str=str.replace(/\'/g,'\\\'');
  return str;
}

/**
 * splice the string into arrays
 * @param string string to be spliced
 * @param separator
 * @return array of string elements
 */
function splice(string, separator) {
  var remainder = string;
  var ret = new Array();
  var separatorLen = separator.length;
  var strLen = string.length;
  var count = 0;
  
  while (remainder.indexOf(separator) != -1){
    var i = remainder.indexOf(separator);
    var a = remainder.substring(0, i);
    //if (a.length == 0) {break;}
    ret[count] = a;
    remainder = remainder.substring(i+separatorLen);
    count++;
  }
  
  return ret;
}