<?php echo $submenu ?>
<div id="main"><div id="critique_content">
	<h2><?php echo $courseObj->getId()?> (<?php echo $courseObj->getDescr()?>)</h2>
	<h3>Exams Repository of <?php echo helperFunctions::translateTerm($year)?></h3>

	<?php if (isset($examArr)):?>
	<div class="critique_block">
		<div class="box">
			<div class="title_bar">Exams</div>
			<ul>
			  <?php foreach ($examArr as $subArr):?>
			  <li><a href='/<?php echo $subArr["path"]?>' target='_blank'><?php echo $subArr["descr"]?></a></li>
			  <?php endforeach;?>
			</ul>
		</div>
	</div>
	<?php endif;?>

	<?php if (isset($testArr)):?>
	<div class="critique_block">
		<div class="box">
			<div class="title_bar">Tests</div>
			<ul>
			  <?php foreach ($testArr as $subArr):?>
			  <li><a href='/<?php echo $subArr["path"]?>' target='_blank'><?php echo $subArr["descr"]?></a></li>
			  <?php endforeach;?>
			</ul>
		</div>
	</div>
	<?php endif;?>

	<?php if (isset($quizArr)):?>
	<div class="critique_block">
		<div class="box">
			<div class="title_bar">Quizes</div>
			<ul>
			  <?php foreach ($quizArr as $subArr):?>
			  <li><a href='/<?php echo $subArr["path"]?>' target='_blank'><?php echo $subArr["descr"]?></a></li>
			  <?php endforeach;?>
			</ul>
		</div>
	</div>
	<?php endif;?>
	
	<?php if (isset($psetArr)):?>
	<div class="critique_block">
		<div class="box">
			<div class="title_bar">Problem Sets</div>
			<ul>
				<?php foreach ($psetArr as $subArr):?>
				<li><a href='/<?php echo $subArr["path"]?>' target='_blank'><?php echo $subArr["descr"]?></a></li>
			    <?php endforeach;?>
			</ul>
		</div>
	</div>
	<?php endif;?>
		
</div></div>