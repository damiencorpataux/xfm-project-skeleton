<h1>Recent posts</h1>

<a href="<?php echo u('blog/new') ?>">New post</a>
<hr/>

<?php foreach ($d['posts'] as $post): ?>
<a href="<?php echo u("blog/posts/{$post['id']}") ?>">
  <h3><?php echo $post['title'] ?></h3>
</a>
<blockquote><small>
  posted <?php echo xUtil::timeago($post['created']) ?>
</small></blockquote>
<?php echo $post['body'] ?>
<hr/>
<?php endforeach ?>