USE test;

SELECT * FROM Products;
DESC Products;

-- min 최소값 얻어오기 
SELECT min(Price) FROM Products;

-- max 최대값 얻어오기 
SELECT max(Price) FROM Products;

-- count 몇개 있는지 ?
SELECT count(Price) FROM Products;

-- avg 평균
SELECT avg(Price) FROM Products;
