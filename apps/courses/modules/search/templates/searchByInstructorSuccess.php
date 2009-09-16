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
		</tr>
	</table>
	<form name="instrForm" method="get" action="<?php echo url_for('search/searchByInstructor')?>">
		<table>
			<tr>
				<td width="150">Instructor: </td>
				<td>
					<?php echo select_tag('instructor', options_for_select($instructorList, $instructorId), array(
					  "style" => "width:200px"))?>
				</td>
				<td><a class="reload" title="Retrieve/refresh results" onclick="return document.instrForm.submit();"></a></td>
			</tr>
		</table>
	</form>
	
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