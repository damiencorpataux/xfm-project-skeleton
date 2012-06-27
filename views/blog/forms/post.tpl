<style>
<!--
  form input,
  form textarea {
    width: 100%;
  }

  form label {
    font-weight: bold;
  }
-->
</style>

<h1>Post anything</h1>
<a href="<?php echo xWebFront::previous_url() ?>">Cancel</a>
<hr/>

<form id="blog-post-form" method="post">

  <label for="blog-post-title">Title:</label>
  <input id="blog-post-title" name="title" type="text" value="<?php echo $d['title'] ?>"/>

  <label for="blog-post-body">Body:</label>
  <textarea id="blog-post-body" name="body" style="height:200px"><?php echo $d['body'] ?></textarea>

  <input id="blog-post-submit" type="submit" value="Post it" class="btn btn-info btn-large pull-right"/>
  <a href="<?php echo xWebFront::previous_url() ?>" class="btn btn-large pull-right">Cancel</a>

</form>