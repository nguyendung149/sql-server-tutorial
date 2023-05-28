-- Hay cho biet nhung khach hang nao da dat nhieu hon 20
-- don hang, sap xep theo thu tu tong so don hang giam dan
SELECT [CustomerID],COUNT([OrderID]) AS [TotalOrders]
FROM [dbo].[Orders]
GROUP BY [CustomerID]
HAVING COUNT(*) > 20
ORDER BY COUNT(*) DESC;

--Hay loc ra nhung nha cung cap san pham co tong so luong hang trong kho
--(UnitsInStock) lon hon 30, va co trung binh don gia (UnitPrice) co 
--gia tri duoi 50
SELECT [SupplierID],
SUM([UnitsInStock]) AS [TotalUnitsInStock],
AVG([UnitPrice]) AS [AvarageUnitPrice]
FROM [dbo].[Products]
GROUP BY [SupplierID]
HAVING SUM([UnitsInStock])>30 AND AVG([UnitPrice])<50;

--Hay cho biet tong so tien van chuyen cua tung thang, trong
--nua nam sau cua nam 1996, sap xep theo thang tang dan
SELECT MONTH([ShippedDate]) AS [MONTH], SUM([Freight]) AS [TotalFreight]
FROM [dbo].[Orders]
WHERE MONTH([ShippedDate])>=7 AND YEAR([ShippedDate]) = 1996
GROUP BY MONTH([ShippedDate])
ORDER BY MONTH([ShippedDate]) ASC;

--BT1:Hay loc ra nhung thanh pho co so luong don hang>16 va 
--sap xep theo tong so luong giam dan.
SELECT [ShipCity] , COUNT([OrderID]) AS [NumberOfOrders]
FROM [dbo].[Orders]
GROUP BY [ShipCity] 
HAVING COUNT([OrderID])>16
ORDER BY COUNT([OrderID]) DESC


