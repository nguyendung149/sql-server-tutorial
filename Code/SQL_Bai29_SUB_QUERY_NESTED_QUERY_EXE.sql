-- Liet ke cac don hang  co ngay dat hang gan nhat
SELECT *
FROM [dbo].[Orders] AS o
WHERE  o.OrderDate IN
	(SELECT MAX([OrderDate])
	FROM [dbo].[Orders]
	);

--Liet ke tat ca cac san pham (ProductName)
-- ma khong co don dat hang nao dat mua chung

SELECT *
FROM [dbo].[Products] AS p 
WHERE p.[ProductID] NOT IN
	(SELECT [ProductID]
	FROM[dbo].[Order Details] AS od);
-- Lay thong tin ve cac don hang, va ten cac san pham 
-- thuoc cac don hang chua duoc giao cho khach
SELECT o.*,p.ProductName
FROM [dbo].[Orders] AS o
INNER JOIN [dbo].[Order Details] AS od
ON od.OrderID = o.OrderID
INNER JOIN [dbo].[Products] AS p
ON p.ProductID = od.ProductID
WHERE o.OrderID IN( 
	SELECT o.OrderID
	FROM [dbo].[Orders] AS o 
	WHERE o.[ShippedDate] IS NULL
	);

--Lay thong tin ve cac san pham co so luong ton kho 
-- it hon so luong ton kho trung binh cua tat ca cac san pham
SELECT p.*
FROM [dbo].[Products] AS p
WHERE (p.[UnitsInStock]) >
(SELECT AVG(p.[UnitsInStock])
FROM [dbo].[Products] AS p );

-- Lay thong tin va cac khach hang co tong gia tri don hang lon nhat
SELECT c.*
FROM [dbo].[Customers] AS c
WHERE c.CustomerID =
(SELECT o.CustomerID
FROM [dbo].[Orders] AS o
WHERE o.OrderID =
(SELECT od.[OrderID]
FROM [dbo].[Order Details] AS od
GROUP BY od.[OrderID]
HAVING SUM(od.Quantity*od.UnitPrice) = 
(SELECT MAX(temp.Total)
FROM 
	(SELECT o.OrderID,SUM(od.Quantity*od.UnitPrice) AS [Total]
	FROM [dbo].[Orders] AS o
	INNER JOIN [dbo].[Order Details] AS od
	ON o.OrderID = od.OrderID
	GROUP BY o.OrderID) AS temp)))



