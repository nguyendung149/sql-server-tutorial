--hay cho biet nhung khavh hanng nao da dat nhieu hon 20
-- don hang, sap xep theoe thu tu tong so don hang giam dan
SELECT [CustomerID],COUNT([OrderID]) AS [NumberOfOrders]
FROM [dbo].[Orders]
GROUP BY  [CustomerID]
HAVING COUNT([OrderID])>20
ORDER BY COUNT([OrderID]) DESC;

--Hay loc ra cac nhan vien (EmployeeID) co tong so
--don hang lon hon hoac bang 100, sap xep theo tong so
--don hang giam dan
SELECT[EmployeeID], COUNT([OrderID]) AS [NumberOfOrders]
FROM [dbo].[Orders]
GROUP BY  [EmployeeID]
HAVING COUNT([OrderID])>=100
ORDER BY COUNT([OrderID]) DESC;

--hay cho biet nhung the loai nao (CategoryID) co so san 
--pham khac nhau lon hon 11.
SELECT [CategoryID], COUNT([ProductID]) AS [TotalProducts]
FROM  [dbo].[Products]
GROUP BY [CategoryID]
HAVING COUNT([ProductID])>11;

--hay cho biet nhung the loai nao (CategoryID) co so san 
--pham trong kho (UnitsInStock) lon hon 350.
SELECT [CategoryID], SUM([UnitsInStock]) AS [TotalUnitsInStock]
FROM  [dbo].[Products]
GROUP BY [CategoryID]
HAVING SUM([UnitsInStock])>350;

--Hay cho biet nhung quoc gia nao co nhieu hon 7 don hang.
SELECT [ShipCountry], COUNT([OrderID]) AS [NumberOfCustomer]
FROM [dbo].[Orders]
GROUP BY [ShipCountry]
HAVING  COUNT([CustomerID])>7;

--Hay cho biet nhung ngay nao co nhieu hon 5 don hang duoc gioa, sap xep tang
-- dan theo ngay giao hang
SELECT [ShippedDate], COUNT([OrderID]) AS [NumberOfOrders]
FROM [dbo].[Orders]
GROUP BY [ShippedDate]
HAVING COUNT([OrderID])>5 AND [ShippedDate] IS NOT NULL
ORDER BY [ShippedDate] ASC;

-- Hay cho biet nhung quoc gia bat dau bang chu 'A' hoac 'G'
-- va co so luong don hang lon hon 29
SELECT [ShipCountry], COUNT([OrderID]) AS [NumberOfOrders]
FROM  [dbo].[Orders]
WHERE [ShipCountry] LIKE '[A,G]%'
GROUP BY [ShipCountry]
HAVING COUNT([OrderID])>29;

--Hay cho biet nhung thanh pho nao co so luong don hang duoc giao la khac 1
--va 2, ngay dat hang tu ngay '1997-04-01' den ngay '1997-08-31'
select[ShipCity], count([ShippedDate]) as totalorder
from [dbo].[Orders]
where [OrderDate] between '1997-04-01' and '1997-08-31'
group by [ShipCity]
having count([ShippedDate]) <>1 and count([ShippedDate])<>2;