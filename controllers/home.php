<?php

class HomeController extends xWebController {

    function defaultAction() {
        $data['welcome-text'] = _('Welcome here').'!';
        return xView::load('home/home', $data)->render();
    }
}