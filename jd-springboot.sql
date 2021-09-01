DROP DATABASE IF EXISTS jd_springboot;

CREATE DATABASE jd_springboot DEFAULT CHARACTER SET utf8;

USE `jd_springboot`;

-- ----------------------------
-- 用户表
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  -- 用户id
  `user_id` INT(10) NOT NULL AUTO_INCREMENT,
  -- 用户名
  `user_name` VARCHAR(25) NOT NULL,
  -- 用户密码
  `user_password` VARCHAR(50) NOT NULL,
  -- 用户真实姓名
  `user_realname` VARCHAR(20) DEFAULT NULL,
  -- 用户性别
  `user_gender` TINYINT(1) DEFAULT NULL,
  -- 用户生日
  `user_birthday` DATE DEFAULT NULL,
  -- 用户地址
  `user_address` VARCHAR(25) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- 地址表
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `adderss`(
  -- 地址id  
  `address_id` INT(10) NOT NULL AUTO_INCREMENT,
  -- 地址名
  `address_name` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- 管理员表
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`(
  -- 管理员id
  `admin_id` INT(10) NOT NULL AUTO_INCREMENT,
  -- 管理员名
  `admin_name` VARCHAR(25) NOT NULL,
  -- 管理员密码
  `admin_password` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`admin_id`)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- 分类表
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`(
  -- 分类id
  `category_id` INT(10) NOT NULL AUTO_INCREMENT,
  -- 分类名
  `category_name` VARCHAR(24) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- 产品表
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`(
  -- 产品id
  `product_id` INT(10) NOT NULL AUTO_INCREMENT,
  -- 产品名
  `product_name` VARCHAR(100) NOT NULL,
  -- 产品标题
  `product_title` VARCHAR(100) DEFAULT NULL,
  -- 产品原价
  `product_original_price` DECIMAL(10,2) NOT NULL,
  -- 产品售价
  `product_sale_prine` DECIMAL(10,2) NOT NULL,
  -- 产品销量
  `product_sale_count` INT(10) NOT NULL DEFAULT 0,
  -- 产品评论数量
  `product_review_count` INT(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`product_id`)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- 产品图片表
-- ----------------------------
DROP TABLE IF EXISTS `productimage`;
CREATE TABLE `productimage`(
  -- 产品图片id
  `productimage_id` INT(10) NOT NULL AUTO_INCREMENT,
  -- 产品图片类型
  `productimage_type` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`productimage_id`)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- 订单表
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order`(
  -- 订单id
  `order_id` INT(10) NOT NULL AUTO_INCREMENT,
  -- 订单号
  `order_code` VARCHAR(255) NOT NULL,
  -- 订单收货地址
  `order_address` VARCHAR(255) NOT NULL,
  -- 订单邮编
  `order_post` VARCHAR(25) NOT NULL DEFAULT 000000,
  -- 订单收货人信息
  `order_receiver` VARCHAR(255) NOT NULL,
  -- 订单手机号
  `order_mobile` VARCHAR(11) NOT NULL,
  -- 订单备注
  `order_note` VARCHAR(255) DEFAULT NULL,
  -- 订单创建日期
  `order_create_date` DATETIME DEFAULT NULL,
  -- 订单支付日期
  `order_pay_date` DATETIME DEFAULT NULL,
  -- 订单发货日期
  `order_delivery_date` DATETIME DEFAULT NULL,
  -- 订单确认收货日期
  `order_confirm_date` DATETIME DEFAULT NULL,
  -- 订单状态
  `order_status` VARCHAR(255) DEFAULT NULL,
  -- 订单用户id
  `order_user_id` INT(10) NOT NULL,
  PRIMARY KEY (`order_id`)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- 订单项表
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem`(
  -- 订单项id
  `orderitem_id` INT(10) NOT NULL AUTO_INCREMENT,
  -- 订单项订单数量
  `orderitem_number` INT(6) NOT NULL DEFAULT 1,
  -- 订单项价格
  `orderitem_price` DECIMAL(10,2) NOT NULL,
  -- 订单项产品id
  `orderitem_product_id` INT(10) DEFAULT NULL,
  -- 订单项订单id
  `orderitem_order_id` INT(10) DEFAULT NULL,
  -- 订单项用户id
  `orderitem_user_id` INT(10) DEFAULT NULL,
  -- 订单项备注
  `orderitem_note` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (`orderitem_id`)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------  
-- 属性表
-- ----------------------------
DROP TABLE IF EXISTS `property`;
CREATE TABLE `property`(
  -- 属性id
  `property_id` INT(10) NOT NULL AUTO_INCREMENT,
  -- 属性名
  `property_name` VARCHAR(25) DEFAULT NULL,
  -- 属性分类id
  `property_category_id`INT(10) DEFAULT NULL,
  PRIMARY KEY (`property_id`)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- 属性值表
-- ----------------------------
DROP TABLE IF EXISTS `propertyvalue`;
CREATE TABLE `propertyvalue`(
  -- 属性值id
  `propertyvalue_id` INT(10) NOT NULL AUTO_INCREMENT,
  -- 属性值的值
  `propertyvalue_value` VARCHAR(255) DEFAULT NULL,
  -- 属性值属性id
  `propertyvalue_property_id` INT(10) DEFAULT NULL,
  -- 属性值产品id
  `propertyvalue_product_id` INT(10) DEFAULT NULL,
  PRIMARY KEY (`propertyvalue_id`)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- ----------------------------
-- 评论表
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review`(
  -- 评论id
  `review_id` INT(10) NOT NULL AUTO_INCREMENT,
  -- 评论内容
  `review_content` MEDIUMTEXT NOT NULL,
  -- 评论创建时间
  `review_createdate` DATETIME NOT NULL,
  -- 评论用户id
  `review_user_id` INT(10) NOT NULL,
  -- 评论产品id
  `review_product_id` INT(10) NOT NULL,
  -- 评论订单项id
  `review_orderitem_id` INT(10) NOT NULL,
  PRIMARY KEY (`review_id`)
)ENGINE=INNODB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;