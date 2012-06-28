<h4 class="alert-heading" style="padding-bottom:5px">
  Please check the data you provided
</h4>
<ul>
<?php foreach ($d as $field => $text): ?>
  <li>
    <?php echo "<strong>{$field}</strong> {$text}" ?>
  </li>
<?php endforeach ?>
</ul>