<?php

class ApiFront extends xApiFront {

    // Adds debug trace to results
    function handle_request() {
        $r['result'] = $this->call_method();
        $r['trace'] = debug_backtrace();
        print $this->encode($r);
    }
}
