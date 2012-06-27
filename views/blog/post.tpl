<a href="<?php echo u('blog') ?>">Back to posts list</a>
<hr/>

<h1><?php echo $d['post']['title'] ?></h1>
<blockquote><small>
  posted <?php echo xUtil::timeago($d['post']['created']) ?>
</small></blockquote>
<?php echo nl2br($d['post']['body']) ?>
<hr/>

<h3>Comments</h3>
<?php
    if ($d['comments']) foreach ($d['comments'] as $comment) {
        echo xView::load('blog/comment', $comment);
    } else {
        echo 'No comment yet.';
    }
?>
<hr/>

<h3>Share your thoughts</h3>
<?php echo xView::load('blog/forms/comment', $d['comment-data']) ?>