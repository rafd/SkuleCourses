<?php use_helper("DateForm")?>

<?php echo $submenu?>

<div id="content">
	<script type="text/javascript">
		var addDetailJs = function()
		{
			var img = document.getElementById("addDetail");
			if (img.src.indexOf("expand.gif") != -1){
				img.src = "/images/collapse.gif";
				img.title = "Remove detail info";

				document.getElementById("divDetail").style.display="block";
			} else {
			  	img.src = "/images/expand.gif";
				img.title = "Add detail info";

				document.getElementById("txtDescr").value = "";
				document.getElementById("divDetail").style.display="none";
			}
			return false;
		}

		var addAssociatedCourse = function()
		{
			
		}
	</script>
	
	<?php echo $form->getHeader()?>
	
		<h3>Maintenance - Instructor Browser</h3>
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
							<td><h4>Basic Information</h4>
								<table class="inputlayout">
									<tr>
										<td width="50%">Last Name</td>
										<td>First Name</td>
									</tr>
									<tr>
										<td><input id="txtLastName" type='text'/></td>
										<td><input id="txtFirstName" type='text'/></td>
									</tr>
									<tr>
										<td>Associated Department</td>
										<td></td>
									</tr>
									<tr>
										<td><select></select></td>
										<td></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td><h4>Detailed Information
								<img id="addDetail" class="btn" title="Add detail info" src="/images/expand.gif" onclick="return addDetailJs();"/>
								</h4>
								<div id="divDetail" style="display:none">
									<table class="inputlayout">
										<tr>
											<td>Instructor Description</td>
										</tr>
										<tr>
											<td>
												<textarea rows="5" cols="55" wrap="soft" id="txtDescr"></textarea>
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
						<tr>
							<td><h4>Associated Courses
								<img id="addAssociation" class="btn" title="Add an associated course" src="/images/add.gif"/>
								</h4>
								<table class="inputlayout">
									<tr>
										<td>
											<table class="disptable" width="460">
												<tr>
													<th width="13"></th>
													<th>Year</th>
													<th>Course</th>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	<?php echo $form->getFooter()?>
</div>