<style>
.xfm-lang-selection.dropdown .lang-selected {
    font-weight: bold;
}
</style>

<?php
// Fetches available langs
$lang_config = xContext::$config->i18n->lang->alias;
$available = $lang_config ? $lang_config->toArray() : array();
// Language flag name
$flag = xContext::$lang;
?>

<li class="xfm-lang-selection dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
        <img src="<?php echo u("assets/controllers/i18n/icons/{$flag}.png") ?>"/>
        <?php echo _('Language') ?>
        <b class="caret"></b>
    </a>
    <ul class="dropdown-menu">
<?php foreach ($available as $alias => $locale) {
    print xView::load('i18n/lang-selection-dropdown-item', array(
        'alias' => $alias,
        'locale' => $locale,
        'current' => xContext::$lang,
        'default' => @xContext::$config->i18n->lang->default,
        'last' => (bool)(array_pop(array_keys($available)) == $alias)
    ));
} ?>
    </ul>
</li>