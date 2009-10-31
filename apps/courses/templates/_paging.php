<tr><td style="text-align: center" colspan="2">
    <?php echo $pagelist->getNbResults() ?> results found.<br />
    Displaying results <?php echo $pagelist->getFirstIndice() ?> to  <?php echo $pagelist->getLastIndice() ?>.
    </td></tr>
   
    <tr><td colspan="2"style="text-align: center;font-size:9pt;">
    <?php if ($pagelist->haveToPaginate()): ?>
  <?php echo link_to('&laquo;', $location.'/index?page='.$pagelist->getFirstPage()) ?>
  <?php echo link_to('&lt;', $location.'/index?page='.$pagelist->getPreviousPage()) ?>
  <?php $links = $pagelist->getLinks(); foreach ($links as $page): ?>
    <?php echo ($page == $pagelist->getPage()) ? $page : link_to($page, $location.'/index?page='.$page) ?>
    <?php if ($page != $pagelist->getCurrentMaxLink()): ?> - <?php endif ?>
  <?php endforeach ?>
  <?php echo link_to('&gt;', $location.'/index?page='.$pagelist->getNextPage()) ?>
  <?php echo link_to('&raquo;', $location.'/index?page='.$pagelist->getLastPage()) ?>
<?php endif ?>
    </td>
    </tr>