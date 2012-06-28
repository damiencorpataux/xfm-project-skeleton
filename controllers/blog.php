<?php

class BlogController extends xWebController {

    function defaultAction() {
        return $this->indexAction();
    }

    /**
     * Displays latest posts
     */
    function indexAction() {
        $params = array(
            'visible' => true,
            'xorder' => 'DESC',
            'xorder_by' => 'created',
            'xlimit' => 10
        );
        // Manages search query
        if (@$this->params['search']) $params = array_merge($params, array(
            'title' => "%{$this->params['search']}%",
            'title_comparator' => 'LIKE',
            'body' => "%{$this->params['search']}%",
            'body_comparator' => 'LIKE',
            'body_operator' => 'OR',
            'xlimit' => null
        ));
        // Retrieves and displays posts
        $data = array(
            'posts' => xModel::load('blog-post', $params)->get(),
            'params' => $this->params
        );
        return xView::load('blog/index', $data)->render();
    }

    /**
     * Displays
     *  - latest posts (see indexAction)
     *  - or post id if 'id' parameter is given
     * along with
     *  - comments
     *  - and new comment form (including comment creation logic)
     * @see indexAction
     */
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
            // Adds blog-post id foreign key field
            $comment_data['blog-post_id'] = $id;
            $this->_put('blog-post-comment', $comment_data, "blog/posts/{$id}");
        }
        // Retrieves and display requested post & comments
        $data = array(
            'post' => $post,
            'comments' => $comments,
            'comment-data' => $comment_data
        );
        return xView::load('blog/post', $data)->render();
    }

    /**
     * Displays new post form (including post creation logic)
     */
    function newAction() {
        // Manages posted data insertion in database
        $data = xUtil::filter_keys($this->params, array('title', 'body'));
        if ($data) $this->_put('blog-post', $data, "blog/posts/%s");
        // Displays post form (if not redirected by _put())
        return xView::load('blog/forms/post', $this->params);
    }

    /**
     * Factorized 'put' data method.
     * @param string Name of the model to use.
     * @param array Data to be put.
     * @param string|null If given, redirects to url (avoiding reput on page refresh).
     *                    You can use %s in the given string, which will be substituted with insert id.
     */
    private function _put($modelname, $data, $redirect_url = null) {
        try {
            $r = xModel::load($modelname, $data)->put();
            // Avoids reposting on page refresh
            if ($redirect_url) {
                $redirect_url = sprintf($redirect_url, $r['xinsertid']);
                header('Location: '.xUtil::url($redirect_url));
            }
        } catch (xException $e) {
            if ($e->data['invalids']) {
                xWebFront::messages(
                    xView::load('blog/forms/msg-invalids', $e->data['invalids']),
                    'error'
                );
            }
        }
    }
}