create database shop;

--用户
CREATE TABLE `user` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) DEFAULT NULL,
  `password` VARCHAR(20) DEFAULT NULL,
  `account_balance` DOUBLE(8,2) DEFAULT NULL,/*用户账户余额*/
  `nick_name` VARCHAR(20) DEFAULT NULL,
  `email` VARCHAR(20) DEFAULT NULL,
  `role` VARCHAR(10) DEFAULT NULL,/*区分一般用户和管理员:admin/normal*/
  `headimg_url` VARCHAR(30) DEFAULT NULL,
  `open` TINYINT(1) DEFAULT NULL,/*标识用户是否有效，1:有效，0:无效*/
  PRIMARY KEY  (`id`)
) ENGINE=INNODB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--用户账号记录
CREATE TABLE `account_balance_record` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,--标识用户
  `account` DOUBLE(8,2) DEFAULT NULL,--金额
  `info` VARCHAR(30) DEFAULT NULL,
  `order_id` INT(11) DEFAULT NULL,--唯一标识总订单ID
  `create_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=INNODB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--用户收货地址
CREATE TABLE `address` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,
  `address_detail` VARCHAR(50) DEFAULT NULL,
  `recive_phone` VARCHAR(20) DEFAULT NULL,
  `recive_name` VARCHAR(20) DEFAULT NULL,
  `create_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `open` TINYINT(1) DEFAULT NULL,/*标识是否有效，1:有效，0:无效*/
  PRIMARY KEY  (`id`)
) ENGINE=INNODB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--商品分类
CREATE TABLE `category` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) DEFAULT NULL,
  `open` TINYINT(1) DEFAULT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=INNODB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--商品概况
CREATE TABLE `goods` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) DEFAULT NULL,
  `short_info` VARCHAR(50) DEFAULT NULL,/*--概要*/
  `category_id` INT(11) DEFAULT NULL,/*--外键分类id*/
  `pic` VARCHAR(200) DEFAULT NULL,
  `open` TINYINT(1) DEFAULT NULL,/*标识该条记录 1:有效，0:无效*/
  `create_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=INNODB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


--商品详情，一个商品对应多个型号（价格，数量，介绍...）
CREATE TABLE `goods_detail` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `price` DOUBLE(8,2) DEFAULT NULL,
  `short_info` VARCHAR(50) DEFAULT NULL,
  `number` INT(11) DEFAULT NULL,
  `pic` VARCHAR(200) DEFAULT NULL,--图片
  `detail_info` VARCHAR(2) DEFAULT NULL,
  `goods_id` INT(11) NOT NULL,/*外键商品id*/
  `open` TINYINT(1) DEFAULT NULL,/*标识该条记录 1:有效，0:无效*/
  `create_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=INNODB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--购物车
CREATE TABLE `shop_cart` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,/*关联用户*/
  `goods_detail_id` INT(11) DEFAULT NULL,/*关联具体商品*/
  `count_number` INT(11) NOT NULL,/*数量*/
  `open` TINYINT(1) DEFAULT NULL,/*状态*/
  `create_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=INNODB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--子订单，一个总订单对应1到多个子订单
CREATE TABLE `sub_order` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `order_id` INT(11) NOT NULL,--唯一标识总订单ID
  `goods_detail_id` INT(11) DEFAULT NULL,
  `number` INT(11) NOT NULL,
  `open` TINYINT(1) DEFAULT NULL,
  `create_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=INNODB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--总订单，
CREATE TABLE `order` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `order_no` VARCHAR(50) DEFAULT NULL,--订单流水号
  `state` VARCHAR(10) DEFAULT NULL,--状态
  `user_id` INT(11) NOT NULL,--用户
  `address_id` INT(11) NOT NULL,--收货地址
  `count_price` DOUBLE(8,2)  NOT NULL,--总价
  `count_number` INT(11) NOT NULL,--总数量
  `open` TINYINT(1) DEFAULT NULL,--标识订单删除 或者 不
  `create_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=INNODB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--订单流转轨迹
CREATE TABLE `order_state_track` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `state` VARCHAR(10) DEFAULT NULL,--状态
  `order_id` INT(11) NOT NULL,--总订单ID
  `create_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=INNODB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
   
--订单评论，针对每一个子订单
CREATE TABLE `comment` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `user_id` INT(11) NOT NULL,--标识用户
  `sub_order_id` INT(11) NOT NULL,--子订单
  `comment_info` VARCHAR(100) DEFAULT NULL,--评论详情
  `star` INT(5) DEFAULT NULL,--打分
  `create_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=INNODB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*MEDIUMTEXT 存放最大长度为 16,777,215 个字符的字符串。*/
ALTER TABLE goods_detail MODIFY COLUMN detail_info MEDIUMTEXT;
/*密文存储用户密码,长度要大于60*/
ALTER TABLE USER MODIFY COLUMN PASSWORD VARCHAR(80);