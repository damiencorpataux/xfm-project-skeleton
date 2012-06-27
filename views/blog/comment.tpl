<blockquote><?php echo $d['body'] ?>
  <small>
    posted
    <?php echo xUtil::timeago($d['created']) ?>
    <?php if ($d['creator_name']) echo "by {$d['creator_name']}" ?>
    <?php if ($d['creator_website']): ?>
    (<a href="<?php echo "({$d['creator_website']})" ?>"><?php echo $d['creator_website'] ?></a>)
    <?php endif ?>
  </small>
</blockquote>
