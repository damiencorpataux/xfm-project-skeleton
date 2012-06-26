<?php

class BlogPostCommentModel extends xModelMysql {

    var $table = 'blog_post_comment';

    var $mapping = array(
        'id' => 'id',
        'blog-post_id' => 'blog_post_id',
        'created' => 'created',
        'visible' => 'visible',
        'creator_name' => 'creator_name',
        'creator_email' => 'creator_email',
        'creator_website' => 'creator_website',
        'creator_avatar' => 'creator_avatar',
        'body' => 'body',
    );

    var $validation = array(
        'creator_email' => 'email',
        'creator_website' => 'url',
        'body' => 'mandatory'
    );

    var $joins = array(
        'blog-post' => 'LEFT JOIN blog_post ON (blog_post_comment.blog_post_id = blog_post.id)'
    );

    /**
     * Default joins
     * @var array
     */
    var $join = array('blog-post');
}
