var vis=1;

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

function trim(str, chars) {
  return ltrim(rtrim(str, chars), chars);
}

function ltrim(str, chars) {
  chars = chars || "\\s";
  return str.replace(new RegExp("^[" + chars + "]+", "g"), "");
}

function rtrim(str, chars) {
  chars = chars || "\\s";
  return str.replace(new RegExp("[" + chars + "]+$", "g"), "");
}