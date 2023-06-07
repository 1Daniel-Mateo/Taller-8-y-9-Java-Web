
CREATE DATABASE IF NOT EXISTS `my_app`;
USE `my_app`;

CREATE TABLE IF NOT EXISTS `users_tbl`(
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_firstname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_lastname` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_password` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
);

create table category_tbl(
category_id int auto_increment primary key not null,
category_name varchar(50) not null
);
create table product_tbl(
product_id int auto_increment primary key not null,
product_name varchar(50) not null,
product_value decimal not null,
category_id int not null
);
alter table
product_tbl add foreign key(category_id) references category_tbl(category_id);
INSERT INTO category_tbl values (null,"Prueba");

INSERT INTO my_app.users_tbl (user_firstname, user_lastname, user_email, user_password) 
VALUES (UPPER('willy'), UPPER('luca'), LOWER('drogo@gmail.com'),
AES_ENCRYPT('vendedores', '$205125wio3gy WoSDXCKL4f59VUVV7F0pc1twpon1422fYes/CH1122'));

SELECT *, CAST(AES_DECRYPT(user_password, '$205125wio3gy WoSDXCKL4f59VUVV7F0pc1twpon1422fYes/CH1122') 
AS CHAR(50)) end_data FROM users_tbl WHERE user_id = 1;




SELECT * FROM users_tbl;