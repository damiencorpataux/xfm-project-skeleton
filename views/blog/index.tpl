<h1>Recent posts</h1>

<a href="<?php echo u('blog/new') ?>">New post</a>
<hr/>

<?php foreach ($d['posts'] as $post): ?>
<?php $post_url = u("blog/posts/{$post['id']}") ?>
<a href="<?php echo $post_url ?>">
  <h3><?php echo $post['title'] ?></h3>
</a>
<?php echo xUtil::trim_text(
    $post['body'],
    900,
    '... <span style="white-space:nowrap">&mdash; <a href="'.$post_url.'">read more...</a></span>'
) ?>
<blockquote><small>
  posted <?php echo xUtil::timeago($post['created']) ?>
</small></blockquote>
<hr/>
<?php endforeach ?>