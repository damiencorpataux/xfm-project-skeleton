DROP TABLE IF EXISTS blog_post_comment;
CREATE TABLE blog_post_comment (
    id INT NOT NULL AUTO_INCREMENT,
    blog_post_id INT NOT NULL,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    visible BOOLEAN NOT NULL DEFAULT true,
    creator_name TEXT,
    creator_email TEXT,
    creator_website TEXT,
    creator_avatar TEXT,
    body TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (blog_post_id) REFERENCES blog_post(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;