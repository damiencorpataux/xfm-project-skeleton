<form id="blog-post-form" method="post">

  <label for="blog-post-comment-creator_name">Your name:</label>
  <input id="blog-post-comment-creator_name" name="creator_name" type="text" value="<?php echo $d['creator_name'] ?>"/>

  <label for="blog-post-comment-creator_email">Your email:</label>
  <input id="blog-post-comment-creator_email" name="creator_email" type="text" value="<?php echo $d['creator_email'] ?>"/>

  <label for="blog-post-comment-creator_website">Your website:</label>
  <input id="blog-post-comment-creator_website" name="creator_website" type="text" value="<?php echo $d['creator_website'] ?>"/>

  <label for="blog-post-comment-body">Your comment:</label>
  <textarea id="blog-post-comment-body" name="body" style="height:200px"><?php echo $d['body'] ?></textarea>

  <label for="blog-post-submit">
  <input id="blog-post-submit" type="submit" value="Comment it" class="btn btn-info btn-large"/>

</form>