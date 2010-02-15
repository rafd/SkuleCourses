<?php use_helper('Object')?>
<?php include_partial("global/submenu", array("menuOption"=>subMenuOptions::SEARCH))?>
<div id="main"><div id="critique_content">
	<h2>Detailed Search</h2>
	
	<table><tr><td><a class="back" href='<?php echo url_for("search/index")?>' style="float:left; padding-left: 20px;width:auto;">Back to Simple Search...</a></td></tr></table><br/>
	
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
	<form name="programForm" method="get" action="<?php echo url_for('search/searchByProgram')?>">
		<table>
			<tr>
				<td width="150">Program: </td>
				<td>
					<?php echo select_tag('program', options_for_select($programList, $programId), array("style" => "width:200px"))?>
				</td>
				<td></td>
			</tr>
			<tr>
				<td>Year of Study: </td>
				<td>
					<?php echo select_tag('year', options_for_select($yearList, $year), array("style"=>"width:200px"))?>
				</td>
				<td><a class="reload" title="Retrieve/refresh results" onclick="return document.programForm.submit();"></a></td>
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