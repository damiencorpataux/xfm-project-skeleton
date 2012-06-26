<?php

class BlogController extends xWebController {

    function defaultAction() {
        return $this->indexAction();
    }

    function indexAction() {
        $data = array(
            'posts' => xModel::load('blog-post', array(
                'visible' => true,
                'xorder' => 'DESC',
                'xorder_by' => 'created',
                'xlimit' => 10
             ))->get()
        );
        return xView::load('blog/index', $data)->render();
    }

    function postsAction() {
        $id = $this->params['id'];
        // Displays posts index if no 'id' given
        if (!$id) return $this->indexAction();
        // Retrieves post data
        $post = xModel::load('blog-post', array(
            'id' => $id,
            'visible' => true
        ))->get(0);
        $comments = xModel::load('blog-post-comment', array(
            'blog-post_id' => $id,
            'xorder' => 'DESC',
            'xorder_by' => 'created'
        ))->get();
        if (!$post) throw new xException('Oops, this post does not exist', 404);
        // Manages comment insertion in database
        $comment_data = xUtil::filter_keys($this->params, array(
            'creator_name', 'creator_email', 'creator_website', 'body'
        ));
        if ($comment_data) {
            $comment_data['blog-post_id'] = $id;
            try {
                $r = xModel::load('blog-post-comment', $comment_data)->put();
                // Avoids reposting on page refresh
                header('Location: '.xUtil::url("blog/posts/{$id}"));
            } catch (xException $e) {
                if ($e->data['invalids']) {
                    // TODO: Fix layout view to display xWebFront messages (in basic-project branch)
                    xWebFront::messages('Wrong!');
                }
            }
        }
        // Retrieves and display requested post
        $data = array(
            'post' => $post,
            'comments' => $comments,
            'comment-data' => $comment_data
        );
        return xView::load('blog/post', $data)->render();
    }

    function newAction() {
        // Manages posted data insertion in database
        $data = xUtil::filter_keys($this->params, array('title', 'body'));
        if ($data) {
            try {
                $r = xModel::load('blog-post', $data)->put();
            } catch (xException $e) {
                if ($e->data['invalids']) {
                    // TODO: Fix layout view to display xWebFront messages (in basic-project branch)
                    xWebFront::messages('Wrong!');
                }
            }
        }
        // Manages output according insertion success/failure
        if (@$r['xsuccess']) {
            $id = $r['xinsertid'];
            header('Location: '.xUtil::url("blog/posts/{$id}"));
        } else {
            return xView::load('blog/forms/post', $this->params);
        }
    }
}