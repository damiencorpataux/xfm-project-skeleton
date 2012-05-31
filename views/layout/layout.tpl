<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title></title>
        <!-- Le scripts -->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- Le styles -->
<?php foreach ($m['css'] as $css): ?>
        <link href="<?php echo $css ?>" rel="stylesheet">
<?php endforeach ?>
        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <!-- Le scripts | TODO: move to body bottom -->
<?php foreach ($m['js'] as $js): ?>
        <script type="text/javascript" src="<?php echo $js ?>"></script>
<?php endforeach ?>
        <!-- Le fav and touch icons -->
        <link rel="shortcut icon" href="">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-57-precomposed.png">
    </head>
    <body onload="javascript:document.getElementById('source').focus()">
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="#">
                        Site template
                    </a>
                    <div class="nav-collapse pull-right">
                        <ul class="nav">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#about">About</a></li>
                            <li><a href="#contact">Impressum</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"/>
        <div class="container" style="margin-top:100px">
<?php foreach ($d['messages'] as $type => $message): ?>
            <div class="alert <?php echo $type ?>">
                <button class="close" data-dismiss="alert">×</button>
                <?php echo $message ?>
            </div>
<?php endforeach ?>
            <?php echo $d['html']['content'] ?>
            <footer>
                &copy; is becoming a suspiscious concept. Please share.
            </footer>
        </div>

    </body>
</html>
