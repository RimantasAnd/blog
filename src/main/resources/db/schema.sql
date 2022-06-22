--CREATE DATABASE IF NOT EXISTS `blog`;
 CREATE TABLE IF NOT EXISTS `blog`.`users` (
  `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `user_name` VARCHAR(64) NOT NULL COMMENT 'user nick name' ,
  `password` VARCHAR(512) NOT NULL COMMENT 'hashed Bcrypt' ,
  `last_ip` VARCHAR(15)  COMMENT 'last seen IP' ,
  `name` VARCHAR(32)  NOT NULL comment 'user firs name',
  `surname` VARCHAR(32)  NOT NULL comment 'user family name',
  `email` VARCHAR(128)  NOT NULL comment 'user email',
  `account_non_locked` BOOLEAN NOT NULL DEFAULT TRUE COMMENT 'account not locked' ,
  `last_login_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'user last login time',
  `hostname` VARCHAR(128)  comment 'last seen hostname',
  UNIQUE `user_name` (`user_name`))
  ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `blog`.`posts` (
`id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 `title` VARCHAR(255) NOT NULL COMMENT 'post title' ,
 `post_text` TEXT NOT NULL COMMENT 'post text' ,
 `author_id` BIGINT NOT NULL COMMENT 'post author id' ,
 `post_time` DATETIME  COMMENT 'post time' ,
 `posted_ip` VARCHAR(15) COMMENT 'post IP address',
 `admin_locked` BOOLEAN NOT NULL DEFAULT FALSE COMMENT 'post locked by Admin',
 `comments_locked` BOOLEAN NOT NULL DEFAULT FALSE COMMENT 'post comments is locked',
 `propose_to_delete` BOOLEAN NOT NULL DEFAULT FALSE COMMENT 'post proposed to delete',
 FOREIGN KEY (`author_id`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE
  ) ENGINE = InnoDB;


 CREATE TABLE IF NOT EXISTS `blog`.`comments` (
 `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 `temporary_nic` VARCHAR(32) COMMENT 'comment written as',
 `user_id` BIGINT NOT NULL,
 `parent_post_id` BIGINT NOT NULL ,
 `comment_time` DATETIME  COMMENT 'comment time',
 `comment_text` VARCHAR (2048) NOT NULL COMMENT 'comment text' ,
 `admin_locked` BOOLEAN NOT NULL DEFAULT FALSE COMMENT 'comment locked by Admin',
 `commented_ip` VARCHAR(15) COMMENT 'comment IP address',
 `propose_to_delete` BOOLEAN NOT NULL DEFAULT FALSE COMMENT 'comment proposed to delete',
 FOREIGN KEY (`parent_post_id`) REFERENCES `posts`(`id`) ON DELETE CASCADE ON UPDATE CASCADE,
 FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE
    ) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `blog`.`roles` (
 `id` BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 `role` VARCHAR(16) NOT NULL COMMENT 'Role name'
    ) ENGINE = InnoDB;




CREATE TABLE IF NOT EXISTS `blog`.`users_roles` (
 `user_id` BIGINT NOT NULL,
 `roles_id` BIGINT NOT NULL,
 FOREIGN KEY (`roles_id`) REFERENCES `roles`(`id`) ON DELETE CASCADE ON UPDATE CASCADE,
 FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE CASCADE ON UPDATE CASCADE,
UNIQUE(`user_id`, `roles_id`)
) ENGINE = InnoDB;


