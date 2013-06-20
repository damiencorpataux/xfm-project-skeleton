<?php

/**
 * Project-specific PHPUnit_Framework_TestCase.
 * For example, it could instanciate your custom bootstrap
 * or authenticate a specific user for unit tests.
 * @package unittests
 */
class myPHPUnit_Framework_TestCase extends xPHPUnit_Framework_TestCase {

    /*
     * Define this hook in order to eg. instanciate your custom bootstrap,
     * if applicable.
    function setup_bootstrap() {
        require_once(__dir__.'/../../public/myBootstrap.php');
        new myBootstrap();
    }
    */
}
