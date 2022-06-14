#날짜 : 2022/06/14
#이름 : 최미수
#내용: SQL 확인문제 실습

#실습하기4-1
CREATE TABLE `tbl_member`
(
`id` VARCHAR(10) NOT NULL ,
`name`VARCHAR(10) NOT NULL ,
`hp`VARCHAR(13) UNIQUE  ,
`age`TINYINT  ,
`addr` VARCHAR(20) 
);


#실습하기4-2
CREATE TABLE `tbl_product`
(
`seq` INT AUTO_INCREMENT PRIMARY KEY,
`productName` VARCHAR(10) NOT NULL,
`price` INT NOT NULL,
`amount` INT DEFAULT 0,
`company` VARCHAR(10) NULL,
`makeDate` DATE
);



#실습하기4-3
INSERT INTO `tbl_member` VALUES ('p101','김유신','010-1234-1001',25,'신라');
INSERT INTO `tbl_member` VALUES ('p102','김춘추','010-1234-1002',23,'신라');
INSERT INTO `tbl_member` (`id`,`name`,`age`,`addr`) VALUES ('p103','장보고', 31,'통일신라');
INSERT INTO `tbl_member` (`id`,`name`,`addr`) VALUES ('p104','강감찬','고려');
INSERT INTO `tbl_member` (`id`,`name`,`hp`,`age`) VALUES ('p105','이순신','010-1234-1005',50);

INSERT INTO `tbl_product` (`productName`,`price`,`amount`,`company`,`makeDate`) VALUES ('냉장고',800,10,'LG', NOW());
INSERT INTO `tbl_product` (`productName`,`price`,`amount`,`company`,`makeDate`) VALUES ('노트북',1200,20,'삼성', NOW());
INSERT INTO `tbl_product` (`productName`,`price`,`amount`,`company`,`makeDate`) VALUES ('TV',1400,6,'LG', NOW());
INSERT INTO `tbl_product` (`productName`,`price`,`amount`,`company`,`makeDate`) VALUES ('세탁기',1000,8,'LG',NOW());
INSERT INTO `tbl_product` (`productName`,`price`,`amount`) VALUES ('컴퓨터',1100,0);
INSERT INTO `tbl_product` (`productName`,`price`,`amount`,`company`,`makeDate`)VALUES ('휴대폰',900,102,'삼성',NOW());

#실습하기4-4
SELECT `name` FROM `tbl_member`;
SELECT `name`,`hp` FROM `tbl_member`;
SELECT * FROM `tbl_member` WHERE `id` = 'p102';
SELECT * FROM `tbl_member` WHERE `id` = 'p104' OR `id` = 'p105'
SELECT * FROM `tbl_member` WHERE `addr` = '신라';
SELECT * FROM `tbl_member` WHERE `age` > 30;
SELECT * FROM `tbl_member` WHERE `hp` IS NULL;
UPDATE `tbl_member` SET `age` = 42 WHERE `id` ='p104';
UPDATE `tbl_member` SET `addr` = '조선' WHERE `id` = 'p105';
DELETE FROM `tbl_member` WHERE `id` = 'p103';
SELECT * FROM `tbl_member`;

SELECT `productName` FROM `tbl_product`;
SELECT `prodectName` , `price` FROM `tbl_product`;
SELECT * FROM `tbl_product` WHERE `company`='LG';
SELECT * FROM `tbl_product` WHERE `company` = '삼성';
UPDATE `tbl_member` SET `company`= '삼성', `makeDate`='2021-01-01', WHERE `seq` = 5;
SELECT * FROM `tbl_product`;



