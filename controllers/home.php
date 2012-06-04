<?php

class HomeController extends xWebController {

    function defaultAction() {
        $data['welcome-text'] = _('Welcome here').'!';
        $data['title'] = _('Home');
        return xView::load('home/home', $data)->render();
    }
}