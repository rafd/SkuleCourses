<?php use_helper('Object')?>
<?php echo $submenu ?>
<div id="content">
	<h3>Course Search</h3>
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
			<td><?php echo $resultTitle?></td>
		</tr>
	  	<tr>
	  		<td>
	  			<div class='resultset'>
	  				<ul>
		  				<?php foreach ($results as $courseObj):?>
		  				<li><?php echo link_to($courseObj->getId()." - ".$courseObj->getDescr(), "course/index?id=".$courseObj->getId())?></li>
		  				<?php endforeach;?>
	  				</ul>
	  			</div>
	  		</td>
	  	</tr>
	</table>
	<?php endif;?>
</div>