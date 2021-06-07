USE test;

CREATE TABLE Table01
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    bookId INT
);

CREATE TABLE Table02
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    bookName VARCHAR(255)
);

INSERT INTO Table01
(name, bookId)
VALUES('kim', 1);

INSERT INTO Table01
(name, bookId)
VALUES('lee', 2);

INSERT INTO Table01
(name, bookId)
VALUES('choi', 3);

INSERT INTO Table01
(name, bookId)
VALUES('park', 4);

INSERT INTO Table02
(bookName)
VALUES('book1');

INSERT INTO Table02
(bookName)
VALUES('book2');

INSERT INTO Table02
(bookName)
VALUES('book3');

INSERT INTO Table02
(bookName)
VALUES('book4');

SELECT * FROM Table01;  -- 4개 record
SELECT * FROM Table02;  -- 4개 record 
SELECT * FROM Table01, Table02; -- 16 record

-- join
SELECT * FROM
Table01 JOIN Table02
ON Table01.bookId = Table02.id;

-- alias. as는 생략가능
SELECT * FROM
Table01 AS t1 JOIN Table02 AS t2
ON t1.bookId = t2.id;

SELECT * FROM
Table01 t1 JOIN Table02 t2
ON t1.bookId = t2.id;

-- COLOMN 명시
SELECT
t1.id,
t1.name,
t1.bookId,
t2.id,
t2.bookName
FROM
Table01 t1 JOIN Table02 t2
ON t1.bookId = t2.id;