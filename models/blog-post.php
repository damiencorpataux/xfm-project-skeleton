<?php

class BlogPostModel extends xModelMysql {

    var $table = 'blog_post';

    var $mapping = array(
        'id' => 'id',
        'created' => 'created',
        'visible' => 'visible',
        'title' => 'title',
        'body' => 'body',
    );

    var $validation = array(
        'title' => 'mandatory',
        'body' => 'mandatory'
    );

    var $allow_html = array(
        'body' => '<b><i><a>'
    );
}
