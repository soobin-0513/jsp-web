USE test;

CREATE TABLE Table05
(
	name VARCHAR(255) PRIMARY KEY,
    money INT NOT NULL DEFAULT 0
);

INSERT INTO Table05 (name, money) VALUES('kim' ,5000);
INSERT INTO Table05 (name, money) VALUES('lee' ,10000);

SELECT * FROM Table05;

UPDATE Table05
SET money = 5000
WHERE name = 'kim';

UPDATE Table05
SET money = 15000
WHERE name = 'lee';

-- 커밋하기전에 사용가능 원복
ROLLBACK;

-- 커밋한이후에는 롤백안됨 db에 반영 
COMMIT;