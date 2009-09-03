<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <?php include_http_metas() ?>
    <?php include_metas() ?>
    <?php include_title() ?>
    <link rel="shortcut icon" href="/favicon.ico" />
    <?php //TODO: below is temporary ?>
    <link rel="stylesheet" type="text/css" href="http://skuleclubs.heroku.com/stylesheets/compiled/screen.css" />
    
    <script type='text/javascript' src='/js/popupMenu.js'></script>
    <script type='text/javascript' src='/js/toolkit.js'></script>
    <script src="http://skuleclubs.heroku.com/javascripts/prototype.js?1251690643" type="text/javascript"></script>
	<script src="http://skuleclubs.heroku.com/javascripts/effects.js?1251690643" type="text/javascript"></script>
	<script src="http://skuleclubs.heroku.com/javascripts/dragdrop.js?1251690643" type="text/javascript"></script>
	<script src="http://skuleclubs.heroku.com/javascripts/controls.js?1251690643" type="text/javascript"></script>
	<script src="http://skuleclubs.heroku.com/javascripts/application.js?1251690643" type="text/javascript"></script>
  	<script src="http://skuleclubs.heroku.com/javascripts/text_counter.js?1251690643" type="text/javascript"></script>
    
  </head>
  <body class="skule_courses_body">
  	<?php echo searchBar::get(); ?>
  	<div id='container'>
  		<div id="header">
			<div id="top">
				<h1>
				<a style="background-image: url(/images/blank.gif?1251690643);" class="avatar" href="/">skule</a>
				
				<a href="/">SKULE&trade;</a>
				<div class="alpha">Redux</div>
				</h1>
				
				<?php //TODO: menu items are temporary?>
				<ul id="menu">
					<li><a href="/digest">The Digest</a></li>
					<li><a href="/calendar">Calendar</a></li>
					<li>Courses</li>
					<li><a href="/clubs">Clubs</a></li>
					<li><a href="/services">Services</a></li>
					<li><a href="http://engsoc.skule.ca/">EngSoc</a></li>
				</ul>

			</div>
		</div>
		<?php echo $sf_content ?>
		<div id="footer">
			<div id="copyright">
			Copyright &copy; 1970-2009
			<a href="http://engsoc.skule.ca/">University of Toronto Engineering Society</a>.
			All Rights Reserved
			| Updated Sept. 2, 2009
			</div>
		</div>
	</div>
	<div id='grayout'>
	</div>
  </body>
</html>
