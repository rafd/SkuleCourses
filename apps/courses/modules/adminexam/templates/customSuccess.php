<?php use_helper('Object')?>
<?php echo $submenu ?>
<div id="main"><div id="critique_content">
<h2>Custom Exams Manager</h2>
<p><a class="back" href='<?php echo url_for("adminexam/index")?>' style="padding-left: 20px;width:auto;">Back to Exam Menu</a></p>
<form name="searchForm" method="post" action="">
	<table><tr><td>
	<fieldset style='width:730px'>
	<legend>Search</legend>
	<table class="inputlayout">
		<tr>
			<td>Course: <input type="text" /></td>
			<td>Year:
				<select style="width:70px" id="year" onchange="return yosOnChange()">
				<?php for ($i=$date["year"]+1; $i>=$earliestYear; $i--):?>
		      	<option value="<?php echo $i?>"<?php if ($i==$date["year"]):?> selected<?php endif;?>><?php echo $i?></option>
		      	<?php endfor;?>
		      	</select>
			</td>
			<td>Term:
				<select style="width:90px" id="term" onchange="return yosOnChange()">
      				<option value="9">Fall</option>
      				<option value="1">Winter</option>
      				<option value="5">Summer</option>
      			</select>
			</td>
			<td><a class="reload" title="Retrieve/refresh results" onclick="return document.searchForm.submit();"></a></td>
		</tr>
	</table>
	<?php //include_partial('form', array('form' => $form)) ?>
	</fieldset>
	</td></tr></table>
	<form>
	<table>
		<tr>
			<td style="vertical-align:top">
				<fieldset style="width:350px">
					<legend>Exams Found</legend>
					<table class="disptable">
						<thead>
							<tr>
								<th width="14"></th>
								<th width="14"></th>
								<th width="14"></th>
								<th width="220">Description</th>
								<th width="60">Type</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><a class="select"></a></td>
								<td><a class="deletebtn"></a></td>
								<td><a class=""></a></td>
								<td>Pset</td>
							</tr>
						</tbody>
					</table>
				</fieldset>
			</td>
			<td style="vertical-align:top">
				<fieldset style="widtH:342px">
					<legend>Edit</legend>
				</fieldset>
			</td>
		</tr>
	</table>
	</form>
</form>
</div></div>