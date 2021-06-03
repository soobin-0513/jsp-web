-- 새로운 데이터베이스 만들기
CREATE DATABASE test2;
USE test2;
-- 
CREATE TABLE Member(
	id VARCHAR(255),
    password VARCHAR(255),
    name VARCHAR(255),
    birth DATE,
    inserted TIMESTAMP
);
select * from Member;