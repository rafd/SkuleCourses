<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <?php include_http_metas() ?>
    <?php include_metas() ?>
    <title>Skule Courses</title>
    <link rel="shortcut icon" href="/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="/css/screen.css" />
    <link rel="stylesheet" type="text/css" href="/css/form.css" />
    <script type='text/javascript' src='/js/popupMenu.js'></script>
    <script type='text/javascript' src='/js/toolkit.js'></script>
  </head>
  <body class="skule_courses_body">
  	<?php include_partial('global/skuleBar') ?>
  	<div id='container'>
  		<div id="header">
			<div id="top">
				<h1>
				<a class="avatar" style="background-image: url(/images/avatars/skule.png);" href="http://www.skule.ca">skule</a>
				<a href="http://www.skule.ca">SKULE&trade;</a>
				<div class="alpha">Redux</div>
				</h1>

				<ul id="menu">
					<li><a href="http://redux.skule.ca/calendar">Calendar</a></li>
					<li><a href="http://redux.skule.ca/clubs">Clubs</a></li>
					<li>Courses</li>
					<li><a href="http://redux.skule.ca/services">Services</a></li>
					<li><a href="http://engsoc.skule.ca/">EngSoc</a></li>
				</ul>

			</div>
		</div>
		<?php echo $sf_content ?>
		<div id="footer">
			<div id="copyright">
			<p>Disclaimer: Neither Skule&trade; nor the developers of this site guarantee the accuracy of the information provided
			in Skule Courses.</p>
			Copyright &copy; 1970-2009
			<a href="http://engsoc.skule.ca/">University of Toronto Engineering Society</a>.
			All Rights Reserved
			| Updated Dec 6, 2009
			</div>
		</div>
	</div>
	<div id='grayout'>
	</div>
  </body>
</html>
