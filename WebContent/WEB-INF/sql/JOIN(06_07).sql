-- 06.07 복습
USE test;

CREATE TABLE soobin01
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255)
);

CREATE TABLE soobin02
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    sooName VARCHAR(255)
);

SELECT * FROM soobin01;
SELECT * FROM soobin02;

-- 값 넣기
INSERT INTO soobin01(id, name) VALUES (3,'현지');
INSERT INTO soobin01(id, name) VALUES (1,'태규');
INSERT INTO soobin01(id, name) VALUES (5,'삔삔');
INSERT INTO soobin01(id, name) VALUES (7,'태연');
INSERT INTO soobin01(id, name) VALUES (9,'사랑');

INSERT INTO soobin02(id, sooName) VALUES (3,'임');
INSERT INTO soobin02(id, sooName) VALUES (1,'박');
INSERT INTO soobin02(id, sooName) VALUES (4,'김');
INSERT INTO soobin02(id, sooName) VALUES (6,'이');
INSERT INTO soobin02(id, sooName) VALUES (9,'나');


-- JOIN

SELECT * FROM
soobin01 JOIN soobin02
ON soobin01.id = soobin02.id;

-- alias 별칭주기 as는 생략가능
SELECT * FROM
soobin01 as s1 JOIN soobin02 as s2
ON s1.id = s2.id;

--  INNER JOIN : 교집합 
SELECT s1.id, s1.name, s2.id, s2.sooName
FROM soobin01 s1 INNER JOIN soobin02 s2
ON s1.id = s2.id;

-- LEFT JOIN 왼쪽 테이블에 모든 레코드와 오른쪽 테이블과 일치하는 레코드 반환
SELECT s1.id, s1.name, s2.id, s2.sooName
FROM soobin01 s1 LEFT JOIN soobin02 s2
ON s1.id = s2.id;

-- RIGHT JOIN 오른쪽 테이블에 모든 레코드와 왼쪽 테이블과 일치하는 레코드 반환
SELECT s1.id, s1.name, s2.id, s2.sooName
FROM soobin01 s1 RIGHT JOIN soobin02 s2
ON s1.id = s2.id;

-- FULL(OUTE) JOIN 문법이 조금식 다름ALTER
SELECT * FROM soobin01 FULL JOIN  soobin02 ON soobin01.id = soobin02.id;