<?php if ($d['alias'] == $d['current']): ?>
    <?php echo $d['alias'] ?>
<?php else: ?>
    <a href="<? echo u("?xlang={$d['alias']}") ?>">
        <?php echo $d['alias'] ?>
    </a>
<?php endif ?>

<?php if (!$d['last']): ?>
|
<?php endif ?>