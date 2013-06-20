<?php

/**
 * Tests the Calculator controller.
 * @package unittests
 */
class Example extends xPHPUnit_Framework_TestCase {

    function test_add() {
        // Tests definition array: array('expected', 'numbers array')
        $tests = array(
            array(6, array(1, 2, 3)),
            array(0, array(1, 2, -3)),
            array(-6, array(-1, -2, -3)),
            array(0, array(0)),
            array(0, array()),
            array(null, null),
            array(null, 1),
            array(null, 'string'),
            array(null, false),
        );
        foreach ($tests as $test) $this->assertSame(
            $test[0],
            xController::load('calculator', array(
                'numbers' => $test[1]
            ))->add(),
            sprintf(
                'Summing: expecting %s while summing %s',
                $test[0], implode(', ', $test[1])
            )
        );
    }
}
