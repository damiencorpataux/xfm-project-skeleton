<?php
/**
 * Allows to create mapping for lang flags.
 * eg. 'en' alias maps to 'uk' flag
 */
$mapping = array(
    'en' => 'gb'
);

/**
 * Substitutes $d['alias'] using $mapping.
 */
$flag = in_array($d['alias'], array_keys($mapping)) ? $mapping[$d['alias']] : $d['alias'];
?>


<li>
<?php $class = ($d['alias'] == $d['current']) ? 'lang-selected' : null ?>
    <a href="<? echo u("?xlang={$d['alias']}") ?>" class="<?php echo $class ?>">
        <img src="<?php echo u("assets/controllers/i18n/icons/{$flag}.png") ?>"/>
        <?php echo $d['alias'] ?>
    </a>
</li>