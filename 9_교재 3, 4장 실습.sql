#날짜: 2022/06/20
#이름: 최미수
#내용: SQL 연습문제

#예제 4-1 p153
CREATE TABLE sample41
(
`no` INT(11) ,
 `a` VARCHAR(30) , 
 `b` DATE
);
SELECT * FROM sample41; 
#예제 4-2 p153
DESC sample41;

#예제 4-3 p154
INSERT INTO sample41 VALUES (1,'ABC', '2014-01-25');
#예제 4-4 p154
SELECT * FROM sample41;
#예제 4-5 p155
INSERT INTO sample41 (a, `no`) VALUES ('XYZ',2);
#예제 4-6 p156
INSERT INTO sample41 (`no`,a,b) VALUES (3,NULL,NULL);
SELECT * FROM sample41;
#예제 4-7 p157
CREATE TABLE sample411
(
`no` INT(11) ,
 `d` INT(11)
);
DESC sample411;
#예제 4-8 p158
INSERT INTO sample411(`no`,d) VALUES (1,1);
#예제 4-9 p158
INSERT INTO sample411(`no`,d) VALUES (2, DEFAULT);
#예제 4-10 p159
INSERT INTO sample411(`no`) VALUES(3);
#예제 4-12 p162
DELETE FROM sample41 WHERE `no` = 3;
#예제 4-14 p166
UPDATE sample41 SET b = '2014-09-07' WHERE `no` = 2;
#예제 4-15 p168
UPDATE sample41 SET `no` = `no`+1;
#예제 4-17 p170
UPDATE sample41 SET `no` = `no`+1, a= `no`;
#예제 4-18 p171
UPDATE sample41 SET a = `no` , `no` = `no` + 1;
#예제 4-19 p171
UPDATE sample41 SET `no`=`no`+1, a=`no`;
#예제 4-20 p173
UPDATE sample41 SET a = NULL;
#예제 5-1 p183
CREATE TABLE sample51
(
`no` INT,
`name` VARCHAR(100),
`quantity` INT
);
INSERT INTO sample51 VALUES (1,'A',1);
INSERT INTO sample51 VALUES (2,'A',2);
INSERT INTO sample51 VALUES (3,'B',10);
INSERT INTO sample51 VALUES (4,'C',3);
INSERT INTO sample51 SET `no` = 5;
SELECT COUNT(*) FROM sample51;
#예제 5-2 p185
SELECT * FROM sample51 WHERE `name` ='A';
SELECT COUNT(*) FROM `sample51` WHERE `name` = 'A';
#예제 5-3 p186
SELECT COUNT(`no`), COUNT(`name`) FROM sample51;
#예제 5-5 p188
SELECT ALL `name` FROM sample51;
SELECT DISTINCT `name` FROM sample51;
#예제 5-6 p189
SELECT COUNT(ALL `name`), COUNT(DISTINCT `name`) FROM sample51;
#예제 5-7 p191
SELECT SUM(quantity) FROM sample51;
#예제 5-8 p192
SELECT AVG(quantity), SUM(quantity)/COUNT(quantity) FROM sample51;
#예제 5-9 p193
SELECT AVG(case when quantity IS NULL then 0 ELSE quantity END) AS avgnull0 FROM sample51;
#예제 5-10 p193
SELECT MIN(quantity), MAX(quantity), MIN(`name`),MAX(`name`) FROM sample51;
#예제 5-12 p195
SELECT `name` FROM sample51 GROUP BY `name`;
#예제 5-13 p197
SELECT `name` , COUNT(`name`), SUM(quantity) FROM sample51 GROUP BY `name`;
#예제 5-14 p199
SELECT `name`, COUNT(`name`) FROM sample51 GROUP BY `name` HAVING COUNT(`name`) = 1;
#예제 5-15 p202
SELECT `name`, COUNT(`name`), SUM(quantity) FROM sample51 GROUP BY `name` ORDER BY SUM(quantity) DESC;
#예제 5-17 p205
CREATE TABLE sample54
(
`no` INT,
`a` INT 
);

INSERT INTO sample54 VALUES (1, 100);
INSERT INTO sample54 VALUES (2, 900);
INSERT INTO sample54 VALUES (3, 20);
INSERT INTO sample54 VALUES (4, 80);

SELECT MIN(a) FROM sample54;
#예제 5-18 p206
DELETE FROM sample54 WHERE a = (SELECT MIN(a) FROM sample54);
#예제 5-20 p210
SELECT (SELECT COUNT(*) FROM sample51) AS sq1, (SELECT COUNT(*) FROM sample54) AS sq2;
#예제 5-21 p210
SELECT (SELECT COUNT(*) FROM sample51) AS sq1, (SELECT COUNT(*) FROM sample54) AS sq2 FROM DUAL;

