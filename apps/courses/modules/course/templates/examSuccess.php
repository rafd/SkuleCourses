<?php echo $submenu ?>
<div id="content">
	<h3>Tests/Exams for <?php echo $courseObj->getId()?> (<?php echo $courseObj->getDescr()?>)
	<br/>
	<?php echo helperFunctions::translateTerm($year)?> Edition</h3></h3>

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
				  <li><a href='/<?php echo $subArr["path"]?>'><?php echo $subArr["descr"]?></a></li>
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
				  <li><?php echo link_to($subArr["descr"], $subArr["path"])?></li>
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
				  <li><?php echo link_to($subArr["descr"], $subArr["path"])?></li>
				  <?php endforeach;?>
				</ul>
			</td>
		</tr>
		<?php endif;?>
	</table>
</div>