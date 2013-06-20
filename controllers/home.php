<?php

class HomeController extends xWebController {

    function defaultAction() {
        return xView::load('home/home');
    }

    function run_tests() {
        $dir = xContext::$basepath.'/unittests/';
        $command = "cd {$dir} && php phpunit.php units/Calculator.php";
        // Load avg check, to prevent system overload
        $load = sys_getloadavg();
        if ($load[0] > 1.5) return array(
            'command' => $command,
            'output' => 'Server is too busy to run unittests right now. Please try again in a few minutes !',
            'status' => 1
        );
        // Actual tests run
        exec($command, $output, $status);
        $output = implode("\n", $output);
        return compact('command', 'output', 'status');
    }
}
