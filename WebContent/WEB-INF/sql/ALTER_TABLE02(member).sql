USE test2;
DESC Member;

-- 	id	 primary key 제약추가!
ALTER TABLE Member
ADD PRIMARY KEY(id);

ALTER TABLE Member
MODIFY name VARCHAR(255) NOT NULL;

ALTER TABLE Member
MODIFY password VARCHAR(255) NOT NULL;

ALTER TABLE Member
MODIFY birth DATE NOT NULL;

ALTER TABLE Member
MODIFY inserted  TIMESTAMP NOT NULL DEFAULT NOW();

INSERT INTO Member
(id, password, name, birth)
VALUES
('donald','trump','trump','2011-02-02');

SELECT * FROM Member;
