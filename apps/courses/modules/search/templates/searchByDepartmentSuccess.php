<?php use_helper('Object')?>
<?php echo $submenu ?>
<div id="main"><div id="critique_content">
	<h2>Course Search</h2>
	<table>
		<tr>
			<td width="150">Search By: </td>
			<td>
				<form name="<?php echo $searchTypeFormName ?>" method="get" action="<?php echo url_for('search/index')?>">
					<?php echo select_tag('selSearchType', options_for_select($searchTypeList, $searchType), array(
						"onchange" => "document.{$searchTypeFormName}.submit();",
					    "style" => "width:200px"
					))?>
				</form>
			</td>
			<td></td>
		</tr>
		<tr>
			<td>Department: </td>
			<td>
				<form name="deptForm" method="get" action="<?php echo url_for('search/searchByDepartment')?>">
					<?php echo select_tag('deptId', options_for_select($deptList, $deptId))?>
				</form>
			</td>
			<td><a class="reload" title="Retrieve/refresh results" onclick="return document.deptForm.submit();"></a></td>
		</tr>
	</table>
	
	<?php if (isset($results)):?>
	<br/>
	<table>
		<tr>
			<td><b><?php echo $resultTitle?>:</b></td>
		</tr>
	  	<tr>
	  		<td>
	  			<ul>
	  				<?php if (count($results) == 0):?>
  					<li>No result found.</li>
  					<?php else:?>
	  				<?php foreach ($results as $courseObj):?>
		  			<li><?php echo link_to($courseObj->getId()." - ".$courseObj->getDescr(), "course/index?id=".$courseObj->getId())?></li>
		  			<?php endforeach;?>
		  			<?php endif;?>
  				</ul>
	  		</td>
	  	</tr>
	</table>
	<?php endif;?>
</div></div>
<img class='hidden' src='/skule_images/reload.on.gif' />