DROP DATABASE IF EXISTS hust_ismdDB;
CREATE DATABASE hust_ismdDB DEFAULT CHARACTER SET utf8;
USE hust_ismdDB;
/* ========================================================= */
/* DBMS name:  MySQL 5.7.17                                  */
/* Created on: 2017-7-28 10:00                               */
/* ========================================================= */

/********************************************************************/
CREATE TABLE `ismd_article`(
  `article_id` int(20) NOT NULL auto_increment COMMENT '文章ID',
  `article_title` varchar(150) NOT NULL default '' COMMENT '文章标题',
  `article_create_time` date NOT NULL COMMENT '文章创建时间',
  `article_writer` varchar(30) COMMENT '文章作者',
  `article_source` varchar(30) COMMENT '文章来源',
  `article_key_words` varchar(120) COMMENT '文章关键词',
  `article_theme_pic` varchar(150) COMMENT '文章缩略图目录',
  `article_summary`  varchar(50) COMMENT '文章摘要',
  `article_text` varchar(254) NOT NULL COMMENT '文章正文',
  `column_id` int(20) NOT NULL COMMENT '文章所属的二级标题',
  PRIMARY KEY (`article_id`),
  KEY `AK_Article_TITLE` (`article_title`)
)ENGINE=InnoDB CHARSET=utf8;

/********************************************************************/
CREATE TABLE `ismd_user`(
  `user_id` int(20) NOT NULL auto_increment COMMENT '用户ID',
  `user_name` varchar(150) NOT NULL default '' COMMENT '用户名',
  `password` varchar(150) NOT NULL COMMENT '密码',
  `user_type` int(4) DEFAULT 0 COMMENT '用户类型',
  PRIMARY KEY (`user_id`)
)ENGINE=InnoDB CHARSET=utf8;


/********************************************************************/
CREATE TABLE `ismd_section`(
  `section_id` int(20) NOT NULL auto_increment COMMENT '一级标题ID',
  `section_name` varchar(150) NOT NULL COMMENT '一级标题名',
  PRIMARY KEY (`section_id`)
)ENGINE=InnoDB CHARSET=utf8;


/********************************************************************/
CREATE TABLE `ismd_columns`(
  `columns_id` int(20) NOT NULL auto_increment COMMENT '二级标题ID',
  `columns_name` varchar(150) NOT NULL default '' COMMENT '二级标题名',
  `section_id` int(20) NOT NULL COMMENT '所属一级标题ID',
  PRIMARY KEY (`columns_id`)
)ENGINE=InnoDB CHARSET=utf8;


/********************************************************************/
CREATE TABLE `article_manager`(
  `user_id` int(20) NOT NULL COMMENT '用户ID',
  `article_id` int(20) NOT NULL COMMENT '文章ID',
  PRIMARY KEY (`user_id`, `article_id`)
)ENGINE=InnoDB CHARSET=utf8;

/********************************************************************/
CREATE TABLE `ismd_pic`(
  `pic_id` int(20) NOT NULL auto_increment COMMENT '图片ID',
  `pic_name` varchar(150) NOT NULL default '' COMMENT '图片名',
  `pic_type` int(4) NOT NULL default 0 COMMENT '图片类型',
  `pic_address` varchar(254) COMMENT '图片所在目录',
  PRIMARY KEY (`pic_id`)
)ENGINE=InnoDB CHARSET=utf8;

/********************************************************************/
