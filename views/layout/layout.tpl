<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title></title>
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
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<?php echo u('assets/bootstrap.css/ico/apple-touch-icon-144-precomposed.png') ?>">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="<?php echo u('assets/bootstrap.css/ico/apple-touch-icon-114-precomposed.png') ?>">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="<?php echo u('assets/bootstrap.css/ico/apple-touch-icon-72-precomposed.png') ?>">
        <link rel="apple-touch-icon-precomposed" href="<?php echo u('assets/bootstrap.css/ico/apple-touch-icon-57-precomposed.png') ?>">
    </head>
    <body>
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="<?php echo u() ?>">
                        App template
                    </a>
                    <!-- Uncomment and modify to add top-right navigation links
                    <div class="nav-collapse pull-right">
                        <ul class="nav">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="#about">About</a></li>
                            <li><a href="#contact">Impressum</a></li>
                        </ul>
                    </div>
                    -->
                </div>
            </div>
        </div>
        <div class="clearfix"/>
        <div class="container" style="margin-top:75px">
            <?php echo xView::load('layout/messages') ?>
            <?php echo $d['html']['content'] ?>
            <?php echo xView::load('layout/footer') ?>
        </div>

    </body>
</html>
