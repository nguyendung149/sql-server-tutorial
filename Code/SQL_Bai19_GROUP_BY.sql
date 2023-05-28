--Hay cho biet moi khach hang da dat bao nhieu don hang
SELECT [CustomerID], COUNT([OrderID]) AS [TotalOrders]
FROM [dbo].[Orders]
GROUP BY [CustomerID];
-- Hay tinh gia tri don gia trung binh theo moi nha cung cap
--san pham
SELECT [SupplierID],AVG([UnitPrice]) AS [AVERAGEUNITPRICE]
FROM [dbo].[Products]
GROUP BY [SupplierID];

--Hay cho biet moi the loai co tong so bao nhieu san pham trong kho
--(UnitsOnStock)
SELECT [CategoryID], SUM([UnitsInStock]) AS [ToatlUnitsInStock]
FROM [dbo].[Products]
GROUP BY [CategoryID];

--Hay cho biet gia van chuyen thap nhat va lon nhat cua cac don
--hang theo tung thanh pho va quoc gia khac nhau.
SELECT [ShipCity],[ShipCountry],MAX([Freight]) AS [MaxFreight],MIN([Freight]) AS [MinFreight]
FROM [dbo].[Orders]
GROUP BY [ShipCity],[ShipCountry];



--Hay thong ke so luong nhan vien theo tung quoc gia khac nhau.
SELECT [Country], COUNT(*) AS [NumberOfGirlEmployees]
FROM [dbo].[Employees]
GROUP BY [Country];




