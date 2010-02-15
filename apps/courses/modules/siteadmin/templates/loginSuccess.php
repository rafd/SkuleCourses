<?php use_helper('Object')?>
<?php include_partial("global/submenu", array("menuOption"=>subMenuOptions::MAINTENANCE_LOGIN))?>
<div id="main"><div id="critique_content">
<h2>Skule Courses Maintenance</h2>
<p>You must have administrator credentials to access the Maintenance section of Skule Courses. Please login below.</p>
<?php if (isset($error)):?>
<p style="color:red"><?php echo $error?></p>
<?php endif;?>
<form name="loginForm" method="post" action="<?php echo url_for('siteadmin/login')?>">
<table class="inputlayout">
	<tr>
		<td>Username</td>
		<td><input type="text" name="username" /></td>
	</tr>
	<tr>
		<td>Password</td>
		<td><input type="password" name="password" /></td>
	</tr>
	<tr>
		<td></td>
		<td><input type="submit" value="Login" /></td>
	</tr>
</table>
</form>
</div></div>
