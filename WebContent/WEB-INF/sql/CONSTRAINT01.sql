USE test;

CREATE TABLE Mytable7
(
	id INT,
    name VARCHAR(255)
);

INSERT INTO Mytable7
(id, name)
VALUES (3, 'HELLO');

SELECT * FROM Mytable7;

INSERT INTO Mytable7
(id)
VALUES (4);

INSERT INTO Mytable7
(NAME)
VALUES ('DONALD');

-- NOT NULL
CREATE TABLE MyTable8
(
	id INT NOT NULL,
    name VARCHAR(255) NOT NULL
);

INSERT INTO MyTable8
(id, name)
VALUES(3,'HELLO');
SELECT * FROM MyTable8;

INSERT INTO MyTable8
(id) VALUES (5);  -- X not null 제약 해둠 꼭 들어가야하는 값

INSERT INTO MyTable8
(name) VALUES ('AAA'); -- X not null 제약 해둠 꼭 들어가야하는 값

