/**
 * Animate a box being shuffled on, growing in height until its maxHeight 
 * has been reached
 * @param elId Element to be transitioned
 * @return
 */
function toggleTransitionOn(elId)
{
  var totalTime = 100; // must be over in 1 second
  var increment = 20;
  
  el = document.getElementById(elId);
  el.style.display = "block";
  
  totalHeight = splice(el.style.maxHeight, "px");
  totalHeight = totalHeight[0];
  pause = Math.ceil(totalTime/(totalHeight/increment));
  
  setTimeout("changeBoxSize('"+elId+"', "+increment+", "+pause+")", pause);
}

function changeBoxSize(elId, increment, pause){
  el = document.getElementById(elId);
  
  totalHeight = splice(el.style.maxHeight, "px");
  totalHeight = totalHeight[0];
  
  height = splice(el.style.height, "px");
  height = height[0];
  if (!height){
    height = 0;
  }
  
  if (parseInt(height) < parseInt(totalHeight)) {
    el.style.height = (parseInt(height) + parseInt(increment)) + "px";
    setTimeout("changeBoxSize('"+elId+"', "+increment+", "+pause+")", pause);
  }
}