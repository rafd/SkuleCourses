<?php include_stylesheets_for_form($form) ?>
<?php include_javascripts_for_form($form) ?>

<form action="<?php echo url_for('admindiscipline/'.($form->getObject()->isNew() ? 'create' : 'update').(!$form->getObject()->isNew() ? '?id='.$form->getObject()->getId() : '')) ?>" method="post" <?php $form->isMultipart() and print 'enctype="multipart/form-data" ' ?>>

<fieldset style='width:450px'>
<?php if (!$form->getObject()->isNew()): ?>
<input type="hidden" name="sf_method" value="put" />
<legend>Edit Discipline</legend>
<?php else: ?>
<legend>New Discipline</legend>
<?php endif; ?>
  <table style="width:95%">
    <tfoot>
      <tr><td><?php echo $form->renderHiddenFields() ?></td></tr>
      <tr>
          <td>
          <input type="submit" value="Save" class="fbuttons"/>
          <?php if (!$form->getObject()->isNew()): ?>
          <input type="button" onclick="window.location.href=<?php if (isset($redirectAddress)):?>'<?php echo url_for($redirectAddress)?>'<?php else:?>window.location.href<?php endif;?>;" class="fbuttons" value="Cancel" />
          <?php endif; ?>
          </td>
      </tr>
    </tfoot>
    <tbody>
      <?php if (isset($globalErrors)):?>
      <span class="error"><p><?php echo $globalErrors?></p></span>
      <?php endif;?>
      <tr>
      	<td>
      		<table class="inputlayout">
      			<tr>
			        <th>Title</th>
			        <td>
			          <?php echo $form['descr'] ?>
			        </td>
			    </tr>
			    <tr><td></td><td class="error"><?php echo $form['descr']->renderError() ?></td></tr>
      		</table>
      	</td>
      </tr>
      <tr>
      	<td>
      		<div id='assocChooser' onmouseover='mcancelclosetime()' onmouseout='mclosetime()'>
      			<table class="inputlayout">
      				<tr>
      					<td>Search Courses: <input type="text"/></td>
      				</tr>
      				<tr>
      					<td><i>Click on the results to add them.</i></td>
      				</tr>
      			</table>
      		</div>
      		<fieldset style="width:100%" onmouseover='mopen("assocChooser", 1)' onmouseout='mclosetime()'>
      			<legend style='font-size:10pt'>Associated Courses</legend>
      			<table class="inputlayout" style="width:100%">
      				<tr>
      					<td>Year of Study: 
      						<select style="width:50px">
      							<option value="1">1</option>
      							<option value="2">2</option>
      							<option value="3">3</option>
      							<option value="4">4</option>
      						</select>
      					</td>
      				</tr>
      				<tr>
      					<td style="width:100%">
      						<table class="disptable" style="margin-top:5px;width:100%">
      							<tr><th>Selected Courses</th></tr>
      							<?php for ($i=0;$i<=4; $i++):?>
      							<tr>
	      							<td style="padding-left:5px;padding:right:40px">AER202H1 (Mechanical System Design)
	      							<a class="deletebtn" style="margin-top:3px;margin-right:5px"></a>
	      							</td>
      							</tr>
      							<?php endfor;?>
      							
      						</table>
      					</td>
      				</tr>
      			</table>
      		</fieldset>
      	</td>
      </tr>
    </tbody>
  </table>
  </fieldset>
</form>
