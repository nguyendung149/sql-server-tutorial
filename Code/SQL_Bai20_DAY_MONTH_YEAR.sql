-- Tinh so luong don dat hang trong nam 1997 cua tung khach hang?
SELECT [CustomerID], COUNT(*) AS [TotalOrders],YEAR([OrderDate]) AS [Year]
FROM [dbo].[Orders]
WHERE YEAR([OrderDate]) = 1997
GROUP BY [CustomerID],YEAR([OrderDate]);
--Hay loc ra cac don hang duoc dat hang vao thang 5 nam 1997
SELECT *
FROM [dbo].[Orders]
WHERE MONTH([OrderDate]) = 5 AND YEAR([OrderDate])=1997;
--Lay danh sach cac don hang duoc dat vao ngay 4 thang 9 nam 1996
SELECT *
FROM [dbo].[Orders]
WHERE DAY([OrderDate]) = 4 AND MONTH([OrderDate])=9 AND YEAR([OrderDate]) = 1996;

SELECT *
FROM [dbo].[Orders]
WHERE [OrderDate] = '1996-09-04';

--Lay danh sach khach hang dat hang trong nam 1998 va so
--don hang moi thang, sap xep thang  tang dan
SELECT [CustomerID], MONTH([OrderDate]) AS [MONTH],COUNT(*) AS [TotalOrders]
FROM [dbo].[Orders]
WHERE YEAR([OrderDate])=1998
GROUP BY [CustomerID], MONTH([OrderDate])
ORDER BY MONTH([OrderDate])  ASC;


--BT1: Loc cac don hang da duoc giao vao thang 5, va sap xep tang dan theo nam
SELECT *
FROM [dbo].[Orders]
WHERE MONTH([ShippedDate]) =5
ORDER BY YEAR([ShippedDate]) ASC;
