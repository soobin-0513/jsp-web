USE test2;

-- 게시물을 작성하지 않은 Member 의 id, name를 나열해
SELECT m.id, m.name
FROM Board b RIGHT JOIN Member m
ON b.memberId = m.id
WHERE b.memberId IS NULL;