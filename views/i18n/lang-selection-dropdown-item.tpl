<?php
    // Highlights selected lang dropdown item
    $class = ($d['alias'] == $d['current']) ? 'lang-selected' : null;
    // Language flag name
    $flag = $d['alias'];
    // Pretty URL construction for language selection
    // if the cuurent route inludes the :xlang variable, use route substutution,
    // otherwise use the plain&ugly xlang GET parameter.
    $url = (in_array(':xlang', xContext::$router->matched_route['pattern'])) ?
        xContext::$router->url_from(array('xlang' => $d['alias'])) :
        u("?xlang={$d['alias']}")
?>
<li>
    <a href="<? echo $url ?>" class="<?php echo $class ?>">
        <img src="<?php echo u("assets/controllers/i18n/icons/{$flag}.png") ?>"/>
        <?php echo $d['alias'] ?>
    </a>
</li>