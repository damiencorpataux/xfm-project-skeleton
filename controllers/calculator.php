<?php

class CalculatorController extends xWebController {

    function defaultAction() {
    }

    function add() {
      return @array_sum(@$this->params['numbers']);
    }
}
