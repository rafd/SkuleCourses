<tr><td style="text-align: center" colspan="2">
    <?php echo $pagelist->getNbResults() ?> results found.<br />
    Displaying results <?php echo $pagelist->getFirstIndice() ?> to  <?php echo $pagelist->getLastIndice() ?>.
    </td></tr>
   
    <tr><td colspan="2"style="text-align: center;font-size:9pt;">
    <?php if ($pagelist->haveToPaginate()): ?>
	  <?php echo link_to('&laquo;', skuleadminConst::setPageFromDecomposedURL($location,$pagelist->getFirstPage())) ?>
	  <?php echo link_to('&lt;', skuleadminConst::setPageFromDecomposedURL($location,$pagelist->getPrevious())) ?>
	  <?php $links = $pagelist->getLinks(); ?>
	  <?php foreach ($links as $page): ?>
	    <?php echo ($page == $pagelist->getPage()) ? $page : link_to($page, skuleadminConst::setPageFromDecomposedURL($location,$page)) ?>
	    <?php if ($page != $pagelist->getCurrentMaxLink()): ?> - <?php endif ?>
	  <?php endforeach ?>
	  <?php echo link_to('&gt;', skuleadminConst::setPageFromDecomposedURL($location,$pagelist->getNextPage())) ?>
	  <?php echo link_to('&raquo;', skuleadminConst::setPageFromDecomposedURL($location,$pagelist->getLastPage())) ?>
    <?php endif ?>
    </td>
    </tr>