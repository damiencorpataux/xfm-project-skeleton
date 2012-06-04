<?php
// Fetches available langs
$lang_config = xContext::$config->i18n->lang->alias;
$available = $lang_config ? $lang_config->toArray() : array();
?>

<div class="xfm-i18n-lang-selection-tiny">
<?php foreach ($available as $alias => $locale) {
    print xView::load('i18n/lang-selection-tiny-item', array(
        'alias' => $alias,
        'locale' => $locale,
        'current' => xContext::$lang,
        'default' => @xContext::$config->i18n->lang->default,
        'last' => (bool)(array_pop(array_keys($available)) == $alias)
    ));
} ?>
</div>