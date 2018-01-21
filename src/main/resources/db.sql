CREATE DATABASE IF NOT EXISTS `web_customer_tracker`;
USE `web_customer_tracker`;

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id`         INT(11) NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45)      DEFAULT NULL,
  `last_name`  VARCHAR(45)      DEFAULT NULL,
  `email`      VARCHAR(45)      DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = INNODB
  AUTO_INCREMENT = 6
  DEFAULT CHARSET = LATIN1;

INSERT INTO `customer` VALUES
  (1, 'David', 'Gilmour', 'david@gmail.com'),
  (2, 'John', 'Petrucci', 'john@gmail.com'),
  (3, 'Ajay', 'Hoge', 'ajay@gmail.com'),
  (4, 'Mary', 'Private', 'mary@gmail.com'),
  (5, 'Maxwell', 'Ivan', 'maxwell@gmail.com'),
  (6, 'Ivan', 'Durak', 'ivan@gmail.com');