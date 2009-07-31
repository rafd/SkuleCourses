<?php use_helper("DateForm")?>

<?php echo $submenu?>

<div id="content">
	<?php echo $form->getHeader()?>
	
		<h3>Maintenance - Rating Criteria</h3>
		<table class="layout">
			<tr>
				<td width="30%">
					<div class="selector">
						<?php for ($i=0; $i<100; $i++):?>
						<li>ABC123H1</li>
						<?php endfor;?>
					</div>
					<?php echo $form->getButtonField()?>
				</td>
				<td class="separator"></td>
				<td>
					<table class="inputlayout">
						<tr>
							<td>Criterion Description</td>
						</tr>
						<tr>
							<td><input id="txtDescr" type='text' style="width:300px"/></td>
						</tr>
						<tr>
							<td>Criterion Type</td>
						</tr>
						<tr>
							<td>
								<?php echo select_tag('selRatingType', options_for_select($ratingTypeList, $selectedRatingType))?>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	<?php echo $form->getFooter()?>
</div>