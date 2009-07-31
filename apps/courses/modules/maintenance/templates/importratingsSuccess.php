<?php use_helper("DateForm")?>

<?php echo $submenu?>

<div id="content">
	<?php echo $form->getHeader()?>
	
		<h3>Maintenance - Rating Fields</h3>
		<table class="layout">
			<tr>
				<td><h4>Column Mapping</h4>
					<table class="inputlayout">
						<tr>
							<td>
								<table class="disptable">
									<tr>
										<th width="14"></th>
										<th width="30">Column</th>
										<th width="250">Column Type</th>
										<th width="350">Mapped Criterion</th>
										<th width="30">Criterion Rating</th>
									</tr>
									<tr>
										<td valign="middle"><a class="select"></a></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</table>
								<div class='buttonfield' style="margin-top: 10px">
									<a class='savebtn' title='Save mappings' style="float:left" onclick='return document.<?php echo $form->getFormName()?>.submit();'></a>
									<a class='addbtn' title='Add new column mapping' style="float:left"></a>
									<a class='deletebtn' title='Delete selected column mapping' style="float: left"></a>
									<a class='refreshbtn' title='Discard changes' style="float: left"></a>
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
				<td><h4>Import File</h4>
					<table class="inputlayout">
						<tr>
							<td>
								<input type="file" style="display:none"></input>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	<?php echo $form->getFooter()?>
</div>