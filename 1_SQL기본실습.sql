#날짜 : 2022/06/13
#이름 : 최미수
#내용 : SQL 기본 실습

#실습하기 1-1
CREATE DATABASE `MYDB`;
DROP DATABASE `MYDB`;


#실습하기 1-2
CREATE TABLE `user1`(
`uid` VARCHAR(10),
`name` VARCHAR(10),
`hp` CHAR(13),
`age` tinyINT
);

DROP TABLE `user1`;

#실습하기 1-3
INSERT INTO `user1` VALUES('A101','김유신','010-1234-1111', 24);
INSERT INTO `user1` VALUES('A102','김춘추','010-1234-1211', 21);
INSERT INTO `user1` VALUES('A103','김가나','010-1534-1221', 29);
INSERT INTO `user1` (`uid`,`name`,`age`) VALUES ('A104','강감찬',45);
INSERT INTO `user1` SET `uid` = 'A105', `name`='이순신',`hp`='010-5555-5555';

#실습하기 1-4
SELECT * FROM `user1`;
SELECT * FROM `user1` WHERE `uid` = 'A101';
SELECT * FROM `user1` WHERE `name` = '김춘추';
SELECT * FROM `user1` WHERE `age` > 30;
SELECT `uid`, `name`, `age` FROM `user1`;

#실습하기 1-5
UPDATE `user1` SET `hp`='010-1234-1555' WHERE `uid` = 'A104';
UPDATE `user1` SET `age` =51 WHERE `uid` = 'A105';
UPDATE `user1` SET `hp` = '010-8458-1238',`age`=27 WHERE `uid`='A101';

#실습하기 1-6
DELETE FROM `user1` WHERE `uid` = 'A101';
DELETE FROM `user1` WHERE `uid` = 'A102' AND `age` = 25;
DELETE FROM `user1` WHERE `age` >= 30;