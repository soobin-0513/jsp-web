-- ORDER BY 정렬
SELECT * FROM Customers
ORDER BY Country, City;

-- 오른차순 DESC 내림차순 ASC 
SELECT * FROM Customers
ORDER BY Country DESC, City ASC;

SELECT * FROM Customers
ORDER BY Country ASC;

SELECT * FROM Customers
ORDER BY Country DESC;


-- LIMIT 갯수제한
SELECT * FROM Customers
ORDER BY Country
LIMIT 10;

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 30, 10 ; -- 4page

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 20, 10 ; -- 3page

SELECT * FROM Customers;

SELECT * FROM Customers
LIMIT 10;

SELECT * FROM Customers
LIMIT 5;

SELECT * FROM Customers
ORDER BY Country
LIMIT 10;

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 10;

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 0, 5; -- 1page

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 5, 5; -- 2page

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 10, 5; -- 3page

SELECT * FROM Customers
ORDER BY CustomerID
LIMIT 15, 5; -- 4page
