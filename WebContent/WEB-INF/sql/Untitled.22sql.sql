use test2;
SELECT * FROM Member;
ALTER TABLE Member ADD COLUMN usergender VARCHAR(1);
DESC Member;

commit;

update Member set usergender = '여' where usergender is null;

select * from Board;