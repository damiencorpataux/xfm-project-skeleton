<?php

class HomeController extends xWebController {

    function defaultAction() {
        return xView::load('home/home')->render();
    }
}