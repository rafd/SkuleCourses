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

				document.getElementById("divDetail").style.visibility="visible";
			} else {
			  	img.src = "/images/expand.gif";
				img.title = "Add detail info";

				document.getElementById("txtDescr").value = "";
				document.getElementById("txtFirstOffered").value = "";
				document.getElementById("txtLastOffered").value = "";
				document.getElementById("divDetail").style.visibility="hidden";
			}
			return false;
		}
	</script>
	
	<?php echo $form->getHeader()?>
		
		<h3>Maintenance - Course Browser</h3>
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
										<td>
											<table class="innerlayout">
												<tr>
													<td width="50%">Course Code</td>
													<td></td>
												</tr>
												<tr>
													<td><input type='text' id="txtId" readonly/></td>
													<td></td>
												</tr>
												<tr>
													<td>Course Name</td>
													<td>Is An Engineering Course?</td>
												</tr>
												<tr>
													<td><input id="txtName" type='text'/></td>
													<td><input id="chkIsEng" type='checkbox'/></td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td><h4>Detailed Information
								<img id="addDetail" class="btn" title="Add detail info" src="/images/expand.gif" onclick="return addDetailJs();"/>
								</h4>
								<div id="divDetail" style="visibility:hidden">
									<table class="inputlayout">
										<tr>
											<td>
												<table class="innerlayout">
													<tr>
														<td>Course Description</td>
													</tr>
													<tr>
														<td>
															<textarea rows="5" cols="55" wrap="soft" id="txtDescr"></textarea>
														</td>
													</tr>
												</table>
											</td>
										</tr>
										<tr>
											<td>
												<table class="innerlayout">
													<tr>
														<td width="50%">First Offered On</td>
														<td>Last Offered On</td>
													</tr>
													<tr>
														<td>
															<?php echo input_date_tag('txtFirstOffered', '', array("rich"=>true, "calendar_button_img"=>"/images/calendar.gif", "class"=>"date"))?>
														</td>
														<td>
															<?php echo input_date_tag('txtLastOffered', '', array("rich"=>true, "calendar_button_img"=>"/images/calendar.gif", "class"=>"date"))?>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	<?php echo $form->getFooter()?>
</div>