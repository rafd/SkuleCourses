<form>

<fieldset style='width:360px'>
<legend>System Reserved Criterion</legend>

<table>
      <tr>
        <th>Question</th>
        <td>
        <?php echo $rating['descr'] ?>
        </td>
      </tr>
      <tr>
        <th>Type:</th>
        <td>
        <?php echo $rating['type_id'] ?>
        </td>
      </tr>
      <?php if(isset($rating['scale'])): ?>
      <tr>
        <th>Value:</th>
        <td>
        <?php echo $rating['scale'] ?>
        </td>
      </tr>
      <?php else: ?>
      <tr style="visibility: hidden">
        <th>Value:</th>
        <td>
        none
        </td>
      </tr>
      <?php endif; ?>
</table>

</fieldset>
</form>
 

