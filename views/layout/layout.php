<?php

class LayoutLayoutView extends xView {

    function init() {
        $this->meta = xUtil::array_merge($this->meta, array(
            'layout' => array(
                'template' => 'layout.tpl',
            ),
            'js' => array(
                // xContext serialization
                xUtil::url('a/js/view/context.js'),
                // Bootstrap CSS js
                'http://twitter.github.com/bootstrap/assets/js/bootstrap-transition.js',
                'http://twitter.github.com/bootstrap/assets/js/bootstrap-alert.js',
                'http://twitter.github.com/bootstrap/assets/js/bootstrap-modal.js',
                'http://twitter.github.com/bootstrap/assets/js/bootstrap-dropdown.js',
                'http://twitter.github.com/bootstrap/assets/js/bootstrap-scrollspy.js',
                'http://twitter.github.com/bootstrap/assets/js/bootstrap-tab.js',
                'http://twitter.github.com/bootstrap/assets/js/bootstrap-tooltip.js',
                'http://twitter.github.com/bootstrap/assets/js/bootstrap-popover.js',
                'http://twitter.github.com/bootstrap/assets/js/bootstrap-button.js',
                'http://twitter.github.com/bootstrap/assets/js/bootstrap-collapse.js',
                'http://twitter.github.com/bootstrap/assets/js/bootstrap-carousel.js',
                'http://twitter.github.com/bootstrap/assets/js/bootstrap-typeahead.js',
            ),
            'css' => array(
                'http://twitter.github.com/bootstrap/assets/css/bootstrap.css',
                'http://twitter.github.com/bootstrap/assets/css/bootstrap-responsive.css',
                // Custom CSS
                xUtil::url('assets/css/custom.css')
            )
        ));
    }

    function render() {
        return $this->apply($this->meta['layout']['template']);
    }
}