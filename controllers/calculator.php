<?php

class CalculatorController extends xWebController {

    /**
     * Sums the given numbers and returns the result.
     * Numbers must be present in the 'numbers' parameter.
     * An array of numbers can be given, or a space-separated list.
     */
    function add() {
        $numbers = @$this->params['numbers'];
        $numbers = is_array($numbers) ? $numbers : explode(' ', $numbers);
        return @array_sum($numbers);
    }
}
