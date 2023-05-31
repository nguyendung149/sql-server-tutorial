-- Tu bang Products va Categories, hay in ra cac thong tin sua day
-- ma the loai
-- ten the loai
-- ma san pham
-- ten san pham

SELECT c.CategoryID,c.CategoryName,p.ProductID,p.ProductName
FROM [dbo].[Products] AS p
INNER JOIN [dbo].[Categories] AS c
ON p.CategoryID = c.CategoryID;

-- Tu bang Products va Categories, hay in ra cac thong tin sua day
-- ma the loai
-- ten the loai
-- so luong san pham

SELECT c.CategoryID,c.CategoryName,COUNT(p.[ProductID]) AS [NumberOfProducts]
FROM [dbo].[Products] AS p
INNER JOIN [dbo].[Categories] AS c
ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryID,c.CategoryName;

-- tu bang Orders va Customers, hay lay ra
-- ma don hang
-- ten cong ty khach hang

SELECT o.OrderID,c.CompanyName
FROM [dbo].[Orders] AS o
INNER JOIN [dbo].[Customers] AS c
ON o.CustomerID = c.CustomerID


-- Tu bang Products va Categories, hay in ra cac thong tin sua day
-- ma the loai
-- ten the loai
-- ma san pham
-- ten san pham
-- LEFT JOIN
SELECT c.CategoryID,c.CategoryName,p.ProductID,p.ProductName
FROM [dbo].[Categories] AS c
LEFT JOIN [dbo].[Products] AS p
ON p.CategoryID = c.CategoryID;

SELECT c.CategoryID,c.CategoryName,COUNT(p.ProductID)
FROM [dbo].[Categories] AS c
LEFT JOIN [dbo].[Products] AS p
ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryID,c.CategoryName;

-- su dung right join, hay in ra cac thong tin sau day:
-- ma don hang 
-- ten cong ty khach hang

SELECT o.OrderID,c.CompanyName
FROM [dbo].[Orders] AS o
RIGHT JOIN [dbo].[Customers] AS c
ON o.CustomerID = c.CustomerID;

SELECT c.CompanyName,COUNT(o.OrderID)
FROM [dbo].[Orders] AS o
RIGHT JOIN [dbo].[Customers] AS c
ON o.CustomerID = c.CustomerID
GROUP BY c.CompanyName;


-- tu banhg Products va Categories, hay in ra cac thong tin
-- sau day
-- ma the loai
-- ten the loai
-- ma san pham
-- ten san pham

SELECT c.CategoryID,c.CategoryName,p.ProductID,p.ProductName
FROM [dbo].[Products] AS p
FULL JOIN [dbo].[Categories] AS c
ON p.CategoryID = c.CategoryID;


