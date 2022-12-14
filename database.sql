CREATE DATABASE IF NOT EXISTS api_rest_laravel;
USE api_rest_laravel;

CREATE TABLE IF NOT EXISTS users(
id          int(255) auto_increment NOT NULL,
name        varchar(50) NOT NULL,
surname     varchar(100),
role        varchar(20),
email       varchar(255) NOT NULL,
password    varchar(255) NOT NULL,
description text,
image       varchar(255),
created_at  datetime DEFAULT NULL,
updated_at  datetime DEFAULT NULL,
remember_token varchar(255),
CONSTRAINT pk_users PRIMARY KEY(id)
)ENGINE=InnoDb;

INSERT INTO `users`(`id`,`name`,`surname`,`role`,`email`,`password`,`description`,`image`,`created_at`,`updated_at`,`remember_token`) VALUES (NULL,'admin','admin','ADMINISTRADOR','admin@gmail.com', 'admin', 'primer administrador del blog',NULL,NOW(),NOW(),NULL);

CREATE TABLE IF NOT EXISTS categories(
id          int(255) auto_increment NOT NULL,
name        varchar(50) NOT NULL,
created_at  datetime DEFAULT NULL,
updated_at  datetime DEFAULT NULL,
CONSTRAINT pk_categories PRIMARY KEY(id)
)ENGINE=InnoDb;

INSERT INTO `categories`(`id`,`name`,`created_at`,`updated_at`) VALUES (NULL,'Ordenadores',NOW(),NOW());
INSERT INTO `categories`(`id`,`name`,`created_at`,`updated_at`) VALUES (NULL,'Smartphones',NOW(),NOW());
INSERT INTO `categories`(`id`,`name`,`created_at`,`updated_at`) VALUES (NULL,'Tablets',NOW(),NOW());


CREATE TABLE IF NOT EXISTS posts(
id          int(255) auto_increment NOT NULL,
user_id     int(255) NOT NULL,
category_id int(255) NOT NULL,
title        varchar(255) NOT NULL,
content      text NOT NULL,
image       varchar(255),
created_at  datetime DEFAULT NULL,
updated_at  datetime DEFAULT NULL,
CONSTRAINT pk_posts PRIMARY KEY(id),
CONSTRAINT fk_post_user FOREIGN KEY(user_id) REFERENCES users(id),
CONSTRAINT fk_post_category FOREIGN KEY(category_id) REFERENCES categories(id)
)ENGINE=InnoDb;

INSERT INTO `posts`(`id`,`user_id`,`category_id`,`title`,`content`,`image`,`created_at`,`updated_at`) VALUES (NULL,1,1,'MSI','Marca MSI de ordenadores y portátiles', NULL,NOW(),NOW());
INSERT INTO `posts`(`id`,`user_id`,`category_id`,`title`,`content`,`image`,`created_at`,`updated_at`) VALUES (NULL,1,2,'Samsung galaxy S 10+','No me termina de convencer la cámara frontal y desaría algo más de bateria', NULL,NOW(),NOW());
