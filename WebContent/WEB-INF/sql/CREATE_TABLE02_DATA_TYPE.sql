--  data type
-- number
-- INT, DECIMAL
CREATE TABLE MyTable3
(
	Col1 INT,
    Col2 DECIMAL
);
INSERT INTO MyTable3
(Col1 ,Col2)
VALUES
(55, 3.14);
SELECT * FROM MyTable3;
DESC MyTable3;

CREATE TABLE MyTable4
(
	Col1 DECIMAL,
    Col2 DECIMAL(10, 2),
    COL3 DECIMAL(3 ,1)
    -- (숫자에 총길이가 3이하, 소수점이 1자리 )
);

INSERT INTO MyTable4
(Col1, Col2, Col3)
VALUES
(3.14, 3,14, 3.14);

SELECT * FROM MyTable4;

INSERT INTO MyTable4
(Col1, Col2, Col3)
VALUES
(333.14, 333,14, 333.1);

SELECT * FROM MyTable4;

INSERT INTO MyTable4
(Col1, Col2, Col3)
VALUES
(3, 33.1, 33.12);


-- char (stirng)
CREATE TABLE MyTable5
(
	Col1 CHAR(5), -- 고정 자리수 
    Col2 VARCHAR(5)  -- 가변 자리수
);

INSERT INTO MyTable5
(Col1, Col2)
VALUES
('abc ','abc ');


INSERT INTO MyTable5
(COL1, COL2)
VALUES
('ABCDE','ABCDE');


SELECT * FROM MyTable5;

-- 빈칸확인 가능 
SET sql_mode = 'PAD_CHAR_TO_FULL_LENGTH';
INSERT INTO MyTable5
(Col1, Col2)
VALUES
('abc ','abc ');
-- 'abc  ', 'abc '

-- 기본값 빈칸 확인불가
SET sql_mode = '';
-- 'abc', 'abc '

-- date, datetime, timestamp
CREATE TABLE MyTable6
(
	Col1 DATE,
    Col2 DATETIME,
    Col3 TIMESTAMP
);
INSERT INTO MyTable6
(Col1, Col2, Col3)
VALUES
('2021-06-02', 
'2021-06-02 11:07:30',
'2021-06-02 11:07:30');
SELECT * FROM MyTable6;