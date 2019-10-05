-- database example
CREATE DATABASE IF NOT EXISTS `example` CHARACTER SET utf8 COLLATE utf8_unicode_ci;

-- users
CREATE TABLE IF NOT EXISTS `example`.`users` (
  `id` VARCHAR(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` VARCHAR(32) COLLATE utf8_unicode_ci NULL,
  PRIMARY KEY (`id`)
);