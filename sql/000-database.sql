DROP DATABASE IF EXISTS `<?php echo xContext::$config->db->database ?>`;
CREATE DATABASE `<?php echo xContext::$config->db->database ?>` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `<?php echo xContext::$config->db->database ?>`;
