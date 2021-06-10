use test;
SELECT * FROM Customers;

SELECT count(*) FROM Customers;

SELECT Country ,COUNT(*) cnt
FROM Customers
GROUP BY Country
ORDER BY cnt DESC;

-- 나라별로 고객수 탐색 
SELECT COUNT(CustomerID),Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;
