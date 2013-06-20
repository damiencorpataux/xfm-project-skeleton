<?php
/*
 * (c) 2012 Damien Corpataux
 *
 * Licensed under the GNU GPL v3.0 license,
 * accessible at http://www.gnu.org/licenses/gpl-3.0.html
 *
**/

require_once(__dir__.'/../lib/xfm/unittests/phpunit.php');

/**
 * Custom PHPUnit Runner class
 * that includes the a custom PHPUnit TestCase class
 * @package unittests
 */
class myPhpUnit extends xPhpUnit {

    /**
     * Loads project-specific PHPUnit child class.
     */
    function setup_custom() {
        // Requires project-specific xPHPUnit_Framework_TestCase child classes
        require_once __dir__.'/lib/myPHPUnit_Framework_TestCase.php';
    }
}

new myPhpUnit();
