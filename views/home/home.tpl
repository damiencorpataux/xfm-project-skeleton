<h1>Unittesting project stub</h1>
<p>
  This projects shows how unit testing works inside an xfm projet.
  Have a look at the <a href="http://github.com/damiencorpataux/xfm-project-skeleton/tree/unittesting/unittests/units/">unittests code</a>.
</p>

<h2>How it works</h2>
<p>
  Unittesting uses the <a href="https://github.com/sebastianbergmann/phpunit/">PHPUnit framework</a>
  and follows <a href="http://phpunit.de/manual/current/en/writing-tests-for-phpunit.html">its practices.</a>
</p>

<p>
  The receipt on unittesting will give you the tips you need on <a href="https://github.com/damiencorpataux/xfm-php/wiki/Cookbook-create-unittes">writing</a> and <a href="https://github.com/damiencorpataux/xfm-php/wiki/cookbook-run-unittest">running</a> tests.
</p>

<h2>Live tests running</h2>
<blockquote>
  <b>Command</b>
  <pre class="unittests-command">...</pre>
  <b>Console output</b>
  <pre class="unittests-output"><img style="opacity:0.3" src="//gcdn.org/glyphicons/clock.png"> Running tests...</pre>
</blockquote>

<script>
$(document).ready(function() {
    $.getJSON('api/home/run_tests', function(data) {
        $('.unittests-command').html(data.command);
        $('.unittests-output')
            .html(data.output)
            .addClass(data.status ? 'alert-error' : 'alert-success');
    });
});
</script>
