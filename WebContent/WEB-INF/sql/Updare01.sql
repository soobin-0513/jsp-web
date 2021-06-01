SELECT * FROM Customers;

UPDATE Customers
SET CustomerName ='스파이더맨'
WHERE CustomerID = 1;

UPDATE Customers
SET CustomerName = 'thor',
	ContactName = 'odinson',
	Addrss = 'Asgard'
WHERE CustomerID = 1;
