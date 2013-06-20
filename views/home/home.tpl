<h1>Unittesting project stub</h1>
<p>
  This projects shows <b>how unit testing works</b> inside <b>an xfm projet</b>.
</p>

<h2>How it works</h2>
<p>
  Unittesting uses the <a href="https://github.com/sebastianbergmann/phpunit/">PHPUnit framework</a>
  and follows <a href="http://phpunit.de/manual/current/en/writing-tests-for-phpunit.html">its practices.</a>
</p>

<p>
  The receipts on unittesting will give you the tips you need on <a href="https://github.com/damiencorpataux/xfm-php/wiki/Cookbook-create-unittes">writing</a> and <a href="https://github.com/damiencorpataux/xfm-php/wiki/cookbook-run-unittest">running</a> tests.
</p>

<h2>Live tests running</h2>
<p>
  Have a look at the <a href="http://github.com/damiencorpataux/xfm-project-skeleton/tree/unittesting/unittests/units/Calculator.php">unittests code</a>.
</p>
<blockquote>
  <b>Command</b>
  <pre class="unittests-command">...</pre>
  <b>Console output</b>
  <pre class="unittests-output"><img style="opacity:0.3" src="//gcdn.org/glyphicons/clock.png"> Running tests...</pre>
</blockquote>

<script>
$(document).ready(function() {
    $.getJSON('api/home/run_tests', function(data) {
        $('.unittests-command').html(data.result.command);
        $('.unittests-output')
            .html(data.result.output)
            .addClass(data.status ? 'alert-error' : 'alert-success');
    });
});
</script>


<h2>What is it all for ?</h2>
<p>
  All this is mandatory to ensure that <a href="https://github.com/damiencorpataux/xfm-project-skeleton/blob/unittesting/controllers/calculator.php">our calculator logic</a> works!
  It has the difficult task to add numbers.
</p>

<p>
  <b>You can test it yourself here.</b> Enter space-separated numbers.
</p>

<div class="thumbnail">
  <h3>Calculator</h3>
  <input type="text" id="numbers" value="1 2 3" style="text-align:right;font-size:20px">
  <span class="lead">&nbsp;is <span id="sum"></span></span>
  <h3>Debug</h3>
  <pre id="debug"></pre>
</div>

<script>
$(document).ready(function() {
    $('#numbers').on('keyup', function() {
        $.getJSON('api/calculator/add?numbers='+$(this).val(), function(data) {
            $('#sum').html(data.result);
            // Backtrace
            $('#debug').html(null);
            $.each(data.trace, function(i, t) {
                $('#debug').append(
                    [t.class, '::', t.function, '()', ' on line ', t.line, "\n"].join('')
                );
            })
        });
    }).focus().trigger('keyup');
});
</script>
