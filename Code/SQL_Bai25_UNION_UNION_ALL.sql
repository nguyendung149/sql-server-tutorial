-- Tu bang Order Details hay liet ke cac don hang co Unit Price
-- nam trong pham vi tu 100 den 200.
-- I 22row
SELECT [OrderID]
FROM [dbo].[Order Details]
WHERE [UnitPrice] BETWEEN 100 AND 200;

--Dua ra cac don hang co Quantity bang 10 hoac 20
--II 433row
SELECT [OrderID]
FROM [dbo].[Order Details]
WHERE [Quantity] IN (10,20);

--Tu bang ORder Details hay liet ke cac don dat hang co Unit Price
-- tu 100 den 200 va don hang phai co Quanity bang 10 hoac 20
-- III = I AND II   7row
SELECT [OrderID]
FROM [dbo].[Order Details]
WHERE [Quantity] IN (10,20) AND [UnitPrice] BETWEEN 100 AND 200;

--Tu bang ORder Details hay liet ke cac don dat hang co Unit Price
-- tu 100 den 200 hoac don hang phai co Quanity bang 10 hoac 20
-- IV = I OR II 448row
SELECT [OrderID]
FROM [dbo].[Order Details]
WHERE [Quantity] IN (10,20) OR [UnitPrice] BETWEEN 100 AND 200;

--Tu bang ORder Details hay liet ke cac don dat hang co Unit Price
-- tu 100 den 200 hoac don hang phai co Quanity bang 10 hoac 20
-- DISTINCT
-- V = I OR II 
SELECT DISTINCT [OrderID]
FROM [dbo].[Order Details]
WHERE [Quantity] IN (10,20) OR [UnitPrice] BETWEEN 100 AND 200;

--UNION
--V = I OR II = 360row
SELECT [OrderID]
FROM [dbo].[Order Details]
WHERE [UnitPrice] BETWEEN 100 AND 200
UNION
SELECT [OrderID]
FROM [dbo].[Order Details]
WHERE [Quantity] IN (10,20);
-- UNION ALL
-- IV = I OR II 448row
SELECT [OrderID]
FROM [dbo].[Order Details]
WHERE [UnitPrice] BETWEEN 100 AND 200
UNION ALL
SELECT [OrderID]
FROM [dbo].[Order Details]
WHERE [Quantity] IN (10,20);



-- liet ke toan bo cac thanh pho va quoc gia ton tai o 2 Tables 
-- Suppliers va Customers
SELECT DISTINCT  [Country]
FROM  [dbo].[Suppliers]
UNION 
SELECT DISTINCT [Country]
FROM [dbo].[Customers];

SELECT DISTINCT  [Country]
FROM  [dbo].[Suppliers]
UNION ALL
SELECT DISTINCT [Country]
FROM [dbo].[Customers];


SELECT [City],[Country]
FROM [dbo].[Customers]
WHERE [Country] LIKE 'U%'
UNION
SELECT [City],[Country]
FROM [dbo].[Suppliers]
WHERE [City] = 'LonDon'
UNION
SELECT [ShipCity],[ShipCountry]
FROM [dbo].[Orders]
WHERE [ShipCountry] = 'USA';


