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
	
		<h3>Maintenance - Department Browser</h3>
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
							<td>Code</td>
							<td>Name</td>
						</tr>
						<tr>
							<td><input id="txtCode" type='text' readonly style="width:60px"/></td>
							<td><input id="txtName" type='text' style="width:300px"/></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	<?php echo $form->getFooter()?>
</div>