--Tinh so luong san pham con lai trong kho (UnitsInStock) sau khi ban het cac san pham da duoc dat hang (UnitsOnOrder)
SELECT [ProductID],[ProductName],[UnitsInStock],[UnitsOnOrder],[UnitsInStock]-[UnitsOnOrder] AS [StockRemaining]
FROM  [dbo].[Products];

--Tinh gia tri don hang chi tiet cho tat ca cac san pham trong bang OrderDetails
SELECT *,[UnitPrice]*[Quantity] AS [OrderDetailValue]
FROM [dbo].[Order Details];
--Tinh ty le gia van chuyen don dat hang (Freight) trung binh cho cac don hang trong bang Orders so voi gia tri van chuyen cua don hang lon nhat (MaxFreight)
SELECT  AVG([Freight])/MAX([Freight]) AS [FreightRatio]
FROM [dbo].[Orders];
--
SELECT *, ([UnitPrice]-[UnitPrice]*0.1)
FROM [dbo].[Products]