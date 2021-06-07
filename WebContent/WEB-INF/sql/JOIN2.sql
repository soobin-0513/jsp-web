USE test;

CREATE TABLE Users
(
	id INT,
    name VARCHAR(255)
);

CREATE TABLE Likes
(
	userId INT,
    `like` VARCHAR(255)
);

INSERT INTO Users (id, name) VALUES (1,'ruru');
INSERT INTO Users (id, name) VALUES (2,'apple');
INSERT INTO Users (id, name) VALUES (3,'banan');
INSERT INTO Users (id, name) VALUES (4,'tomato');
INSERT INTO Users (id, name) VALUES (5,'melon');

INSERT INTO Likes (userId,`like`) VALUES (1,'soo');
INSERT INTO Likes (userId,`like`) VALUES (2,'heyn');
INSERT INTO Likes (userId,`like`) VALUES (3,'hong');
INSERT INTO Likes (userId,`like`) VALUES (4,'kuang');
INSERT INTO Likes (userId,`like`) VALUES (5,'ckcl');

SELECT * FROM Users;  -- 5개
SELECT * FROM Likes;  -- 5개
SELECT * FROM Users, Likes;
-- join
SELECT * FROM Users JOIN Likes ON Users.id = Likes.userId;
SELECT * FROM Users INNER JOIN Likes ON Users.id = Likes.userId;

-- left join 
SELECT * FROM Users  LEFT JOIN Likes ON Users.id = Likes.userId;

-- right join 
SELECT * FROM Users  RIGHT JOIN Likes ON Users.id = Likes.userId;

-- full (outer) join 문법이 조금식 다름
SELECT * FROM Users  FULL JOIN Likes ON Users.id = Likes.userId;
