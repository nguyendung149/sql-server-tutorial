-- Liet ke ra toan bo san pham
SELECT [ProductID],[ProductName],[UnitPrice]
FROM [dbo].[Products];

-- Tim gia trung binh cua cac san pham
SELECT AVG([UnitPrice])
FROM [dbo].[Products];

--Loc nhung san pham co gia > gia trung binh
-- Sub Query
SELECT [ProductID],[ProductName],[UnitPrice]
FROM [dbo].[Products]
WHERE [UnitPrice]>(
	SELECT AVG([UnitPrice])
	FROM [dbo].[Products]
);
-- loc ra nhung khach hang co so don hang > 10
SELECT c.CustomerID,c.CompanyName,COUNT(o.OrderID) AS [TotalOrders]
FROM [dbo].[Customers] AS c
LEFT JOIN [dbo].[Orders] AS o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID,c.CompanyName
HAVING COUNT(o.OrderID)>10;

--Sub Query
SELECT *
FROM  [dbo].[Customers]
WHERE [CustomerID] IN (
	SELECT [CustomerID]
	FROM [dbo].[Orders]
	GROUP BY [CustomerID]
	HAVING COUNT([OrderID])>10
	);


-- tINH tong tien cho tung don hang
SELECT o.*,(
	SELECT SUM([Quantity]*[UnitPrice])
	FROM[dbo].[Order Details] AS od 
	WHERE o.OrderID = od.OrderID) AS [Total]
FROM [dbo].[Orders] AS o;

-- Loc ra ten san pham va tong so donn hang cua san pham
SELECT p.ProductID,p.ProductName,(SELECT COUNT([ProductID])
		FROM [dbo].[Order Details] AS od
		GROUP BY od.ProductID
		HAVING p.ProductID = od.ProductID) AS [Total]
FROM [dbo].[Products] AS p;


SELECT [ProductName],Total
FROM 
	(SELECT p.ProductID, p.ProductName,(
		SELECT COUNT([ProductID])
		FROM [dbo].[Order Details] AS od
		WHERE p.ProductID = od.ProductID) AS [Total]
	FROM [dbo].[Products] AS p) AS Temp;


--Hay in ra na don hang, va tong gia tri cua don hang do
SELECT o.OrderID, (
	SELECT SUM(od.Quantity*od.UnitPrice)
	FROM [dbo].[Order Details] AS od
	WHERE o.OrderID = od.OrderID) AS [Total]
FROM [dbo].[Orders] AS o


--Hay in ra na don hang, va tong so luong san pham cua don hang do
SELECT o.OrderID,
	(SELECT COUNT(od.ProductID)
	FROM [dbo].[Order Details] AS od
	WHERE o.OrderID = od.OrderID) AS [Total]
FROM [dbo].[Orders] AS o





