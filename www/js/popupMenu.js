//architecture designed by javascript-array.com
//visit http://javascript-array.com for more js code

var timeout         = 500;
var closetimer		  = 0;
var ddmenuitem      = 0;

// open hidden layer
function mopen(id, noclickout)
{	
	// cancel close timer
	mcancelclosetime();

	// close old layer
	if(ddmenuitem) ddmenuitem.style.visibility = 'hidden';

	// get new layer and show it
	if (id){
		ddmenuitem = document.getElementById(id);
		ddmenuitem.style.visibility = 'visible';
		// click-out
		if (noclickout) {document.onclick = "";} 
		else {document.onclick = mclose; }
	}

}
// close showed layer
function mclose()
{
	if(ddmenuitem) ddmenuitem.style.visibility = 'hidden';
}

// go close timer
function mclosetime()
{
	closetimer = window.setTimeout(mclose, timeout);
}

// cancel close timer
function mcancelclosetime()
{
	if(closetimer)
	{
		window.clearTimeout(closetimer);
		closetimer = null;
	}
}