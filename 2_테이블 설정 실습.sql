#날짜 : 2022/06/14
#이름 : 최미수
#내용 : 테이블 설정 실습

#실습하기 2-1
CREATE TABLE `User2`
 (
 `uid` VARCHAR(10) PRIMARY KEY ,
 `name` VARCHAR(10),
 `hp` CHAR(13),
 `age` Tinyint
 );
 
 INSERT INTO `user2` VALUES('a101','김유신','010-4444-4444',25);
 INSERT INTO `user2` VALUES('a102','김가나','010-1434-4404',21);
 INSERT INTO `user2` VALUES('a103','김지은','010-4444-3333',24);
 INSERT INTO `user2` VALUES('a104','김서우','010-4994-2222',20);
 INSERT INTO `user2` VALUES('a105','김래미','010-4474-1111',29);
 INSERT INTO `user2` VALUES('a106','정약용','010-4444-3333',45);

#실습하기 2-2
CREATE TABLE `User3`
 (
 `uid` VARCHAR(10) PRIMARY KEY ,
 `name` VARCHAR(10),
 `hp` CHAR(13) UNIQUE  ,
 `age` Tinyint
 );
 
 INSERT INTO `user3` VALUES('a101','김유신','010-4444-4444',25);
 INSERT INTO `user3` VALUES('a102','김가나','010-1434-4404',21);
 INSERT INTO `user3` VALUES('a103','김지은','010-4444-3333',24);
 INSERT INTO `user3` VALUES('a104','김서우','010-4994-2222',20);
 INSERT INTO `user3` VALUES('a105','김래미','010-4474-1111',29);
 INSERT INTO `user3` VALUES('a106','정약용','010-3444-3333',45);
#실습하기 2-3
CREATE TABLE `Parent`(
`uid` VARCHAR(10) PRIMARY KEY ,
`name` VARCHAR(10),
`hp` CHAR(13) unique
);

INSERT INTO `parent` VALUES ('p101','김유신','010-1111-2222');
INSERT INTO `parent` VALUES ('p102','김가나','010-1111-3333');
INSERT INTO `parent` VALUES ('p103','김지은','010-1111-4444');

CREATE TABLE `user4`
(
 `uid` VARCHAR(10) PRIMARY KEY ,
 `name` VARCHAR(10),
 `hp` CHAR(13) UNIQUE  ,
 `pid` VARCHAR(10),
 FOREIGN KEY (`pid`) REFERENCES `parent`(`uid`)
 );
 
INSERT INTO `user4` VALUES('c101','김철수','010-7777-7777','p101');
INSERT INTO `user4` VALUES('c102','김고수','010-7777-8888','p102');
INSERT INTO `user4` VALUES('c103','김희수','010-7777-9999','p103');

#실습하기 2-4
CREATE TABLE `user5`
(
`seq` INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(10),
`gender` TINYINT,
`age` INT,
`addr` VARCHAR(255)
);

INSERT INTO `user5` (`name`,`gender`,`age`,`addr`) VALUES ('김유신',1,29,'부산시');
INSERT INTO `user5` (`name`,`gender`,`age`,`addr`) VALUES ('김미래',2,21,'김해시');
INSERT INTO `user5` (`name`,`gender`,`age`,`addr`) VALUES ('김과거',1,20,'창원시');
INSERT INTO `user5` (`name`,`gender`,`age`,`addr`) VALUES ('김한국',2,26,'광주시');
INSERT INTO `user5` (`gender`,`addr`) VALUES (1, '서울시');


#실습하기 2-5
CREATE TABLE `user6`
(
`seq` INT AUTO_INCREMENT PRIMARY KEY,
`name` VARCHAR(10) NOT NULL ,
`gender` TINYINT,
`age` INT DEFAULT 1 ,
`addr` VARCHAR(255)
);

INSERT INTO `user6` (`name`,`gender`,`age`,`addr`) VALUES ('김유신',1,29,'부산시');
INSERT INTO `user6` (`name`,`gender`,`age`,`addr`) VALUES ('김미래',2,21,'김해시');
INSERT INTO `user6` (`name`,`gender`,`age`,`addr`) VALUES ('김과거',1,20,'창원시');
INSERT INTO `user6` (`name`,`gender`,`age`,`addr`) VALUES ('김한국',2,26,'광주시');
INSERT INTO `user6` (`name`,`gender`,`addr`) VALUES ('도레미',1, '서울시');

#실습하기 2-6
CREATE TABLE `user7` LIKE `user6`


#실습하기 2-7
INSERT INTO  `user7` SELECT * FROM `user6`;

