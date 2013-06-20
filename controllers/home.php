<?php

class HomeController extends xWebController {

    function defaultAction() {
        return xView::load('home/home');
    }

    function run_tests() {
        $dir = xContext::$basepath.'/unittests/';
        $command = "cd {$dir} && php phpunit.php units/Calculator.php";
        exec($command, $output, $status);
        $output = implode("\n", $output);
        return compact('command', 'output', 'status');
    }
}
