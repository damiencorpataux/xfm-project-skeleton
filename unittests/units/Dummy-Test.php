<?php

/**
 * Tests nothing, just used to test that the unit-testing infrastructure works.
 */
class Dummy extends xPHPUnit_Framework_TestCase {

    function test_true() {
        $this->assertSame(true, true);
    }

    function test_assert_same_type() {
        $this->assertSame(false, false);
    }

    function test_assert_equals_type() {
        $this->assertEquals(false, 0);
        $this->assertEquals(array(), array());
    }

    function test_assert_boolean() {
        $this->assertTrue(true);
    }

    /**
     * @expectedException PHPUnit_Framework_ExpectationFailedException
     */
    function test_assert_exception() {
        $this->assertTrue(1);
    }
}
