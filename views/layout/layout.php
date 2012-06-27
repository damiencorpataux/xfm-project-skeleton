<?php

class LayoutLayoutView extends xView {

    function init() {
        $this->meta = xUtil::array_merge($this->meta, array(
            'layout' => array(
                'template' => 'layout.tpl',
            ),
            'js' => array(
                // xContext serialization
                xUtil::url('assets/js/view/context.js'),
                // Bootstrap.css js
                xUtil::url('assets/bootstrap.css/jquery.js'),
                xUtil::url('assets/bootstrap.css/bootstrap-transition.js'),
                xUtil::url('assets/bootstrap.css/bootstrap-alert.js'),
                xUtil::url('assets/bootstrap.css/bootstrap-modal.js'),
                xUtil::url('assets/bootstrap.css/bootstrap-dropdown.js'),
                xUtil::url('assets/bootstrap.css/bootstrap-scrollspy.js'),
                xUtil::url('assets/bootstrap.css/bootstrap-tab.js'),
                xUtil::url('assets/bootstrap.css/bootstrap-tooltip.js'),
                xUtil::url('assets/bootstrap.css/bootstrap-popover.js'),
                xUtil::url('assets/bootstrap.css/bootstrap-button.js'),
                xUtil::url('assets/bootstrap.css/bootstrap-collapse.js'),
                xUtil::url('assets/bootstrap.css/bootstrap-carousel.js'),
                xUtil::url('assets/bootstrap.css/bootstrap-typeahead.js'),
            ),
            'css' => array(
                // Bootstrap.css CSS
                xUtil::url('assets/bootstrap.css/bootstrap.css'),
                xUtil::url('assets/bootstrap.css/bootstrap-responsive.css'),
                // Custom CSS
                xUtil::url('assets/css/bootstrap-tweaks.css'),
                xUtil::url('assets/css/custom-fonts.css'),
                xUtil::url('assets/css/custom.css'),
                // Custom project CSS
                xUtil::url('assets/css/custom-blog.css'),
            )
        ));
    }

    function render() {
        return $this->apply($this->meta['layout']['template']);
    }
}