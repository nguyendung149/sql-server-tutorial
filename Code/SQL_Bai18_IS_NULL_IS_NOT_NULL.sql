--Lay ra tat ca cac don hang chua duoc giao
--(ShippedDate =>NULL)
SELECT *
FROM [dbo].[Orders]
WHERE [ShippedDate] IS NULL;

SELECT COUNT(*)
FROM [dbo].[Orders]
WHERE [ShippedDate] IS NULL;

--Lay ra danh sach cac khach hang co khu vuc (Region) khong
-- bi null
SELECT *
FROM [dbo].[Customers]
WHERE [Region] IS NOT NULL;

--Lay danh sach cac khach hang khong co ten cong ty (CompanyName)
SELECT *
FROM [dbo].[Customers]
WHERE [CompanyName] IS NULL;

--BT1: Lay ra tat ca cac don hang chua duoc giao hang va co khu vuc giao hang (ShipRegion)
--khong bi null
SELECT *
FROM [dbo].[Orders]
WHERE [ShippedDate] IS NULL AND [ShipRegion] IS NOT NULL;
