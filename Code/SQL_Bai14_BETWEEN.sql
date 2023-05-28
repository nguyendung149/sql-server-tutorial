----Lay danh sach cac san pham co gia ban trong khoang
--tu 10 den 20 $
SELECT *
FROM[dbo].[Products]
WHERE [UnitPrice] BETWEEN 10 AND  20;

--Lay danh sach cac don dat hang duoc dat trong khhoang
--thoi gian tu ngay 1996-07-01 den ngay 1996-07-31
SELECT *
FROM [dbo].[Orders]
WHERE [OrderDate] BETWEEN '1996-07-01' AND '1996-07-31';

--Tinh tong so tien van chuyen (Freight) cua cac don
--dat hang duoc dat trong khoang thoi gian tu ngay 1996-07-01
--den ngay 1996-07-31
SELECT SUM([Freight]) AS [SumJulyFreight]
FROM [dbo].[Orders]
WHERE [OrderDate] BETWEEN '1996-07-01' AND '1996-07-31';


--BT1: Lay danh sach cac don dat hang co ngay dat hang trong
--khoang tu ngay 1/1/1997 den ngay 31/12/1997 va duoc
--van chuyen bang duong tau thuy (ShipVia=3)
SELECT *
FROM [dbo].[Orders]
WHERE ([OrderDate] BETWEEN '1997-01-01' AND '1997-12-31' ) AND [ShipVia] = 3;

--