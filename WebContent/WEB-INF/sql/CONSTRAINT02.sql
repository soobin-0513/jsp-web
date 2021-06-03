-- UNIQUE 고유값이 1개만 존재해야 중복값 안됨 !

CREATE TABLE MyTable9
(
	id INT UNIQUE,
    name VARCHAR(255)
);

INSERT INTO MyTable9
(id, name)
VALUES (3, 'soobin');

SELECT * FROM MyTable9;

INSERT INTO MyTable9
(id)
VALUES (4);

INSERT INTO MyTable9
(name)
VALUES ("binbins");

INSERT INTO MyTable9
(id, name)
VALUES (3, 'soobin'); -- x


-- NULL 
SELECT * FROM MyTable9
WHERE id IS NULL;  -- IS NULL 인값 확인하기

SELECT * FROM MyTable9
WHERE id IS NOT NULL;  -- IS NOT NULL  NULL이 아닌값 확인하

-- IFNULL id가 null값이있으면 그 null값에 0을 넣어 
SELECT ifnull(id, 0 ), name FROM MyTable9;

CREATE TABLE MyTable10
(
id INT UNIQUE NOT NULL,
name VARCHAR(255) NOT NULL
);



