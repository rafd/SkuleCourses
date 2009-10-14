<?php echo $submenu ?>
<div id="main"><div id="critique_content">
	<h2><?php echo $courseObj->getId()?> (<?php echo $courseObj->getDescr()?>)</h2>
	<h3>Exams Repository of <?php echo helperFunctions::translateTerm($year)?></h3>

	<table class="layout">
		<?php if (isset($examArr)):?>
		<tr>
			<td>
				<b>Exams</b>
			</td>
		</tr>
		<tr>
			<td>
				<ul>
				  <?php foreach ($examArr as $subArr):?>
				  <li><a href='/<?php echo $subArr["path"]?>' target='_blank'><?php echo $subArr["descr"]?></a></li>
				  <?php endforeach;?>
				</ul>
			</td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<?php endif;?>

		<?php if (isset($testArr)):?>
		<tr>
			<td>
				<b>Tests</b>
			</td>
		</tr>
		<tr>
			<td>
				<ul>
				  <?php foreach ($testArr as $subArr):?>
				  <li><a href='/<?php echo $subArr["path"]?>' target='_blank'><?php echo $subArr["descr"]?></a></li>
				  <?php endforeach;?>
				</ul>
			</td>
		</tr>
		<tr><td>&nbsp;</td></tr>
		<?php endif;?>

		<?php if (isset($quizArr)):?>
		<tr>
			<td>
				<b>Quizes</b>
			</td>
		</tr>
		<tr>
			<td>
				<ul>
				  <?php foreach ($quizArr as $subArr):?>
				  <li><a href='/<?php echo $subArr["path"]?>' target='_blank'><?php echo $subArr["descr"]?></a></li>
				  <?php endforeach;?>
				</ul>
			</td>
		</tr>
		<?php endif;?>
	</table>
</div></div>