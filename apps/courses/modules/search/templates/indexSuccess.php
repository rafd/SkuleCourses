<?php use_helper('Object')?>
<?php echo $submenu ?>
<div id="main"><div id="critique_content">
	<h2>Welcome to Skule Courses</h2>

	<div class="search_block" onmouseover="this.style.backgroundColor='#ccc'" onmouseout="this.style.backgroundColor='#C0C0C0'">
		<p class="title" style="padding-top:10px">A.</p>
		<form method='get' action='<?php echo url_for("search/fuzzySearch")?>' name='frmSearchBar'>
			<input type='text' title='Quick search in Skule Courses' style="width: 250px" name='query' id='search_me' />
			<input type='submit' value='Search' name='commit' />
		</form>
		<p style="margin: 3px 0 0 0">Type in the course code, course name, instructor name, or program, and away you go!</p>
	</div>
	
	<p style="text-align:center; margin: 10px 0 10px 0;font-size:16px; font-weight:bold">OR</p>
	
	<div class="search_block" onmouseover="this.style.backgroundColor='#ccc'" onmouseout="this.style.backgroundColor='#C0C0C0'">
		<p class="title" style="margin-top:-2px">B.</p>
		Use <?php echo link_to("Detailed Search", "search/index?selSearchType=1")?> for more refined results.
	</div>
</div></div>
<img class='hidden' src='/skule_images/reload.on.gif' />