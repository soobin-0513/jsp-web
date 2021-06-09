USE test2;

-- 해당테이블이 있으면 DROP 하는 문법.  DROP TABLE IF EXISTS Coment;

-- 댓글 테이블 만들기
CREATE TABLE Comment
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	comment VARCHAR(2047) NOT NULL,
    memberId VARCHAR(255) NOT NULL,
    boardId INT NOT NULL,
    inserted TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(memberId) REFERENCES Member(id),
    FOREIGN KEY(boardId) REFERENCES Board(id)
);

SELECT * FROM Member;
SELECT * FROM Comment;