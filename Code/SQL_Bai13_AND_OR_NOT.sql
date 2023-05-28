-- liet ke tat ca cac san pham co so luong trong kho
--(UnitsInStock) thuoc khoang nho hon 50 hoac lon hon 100
SELECT *
FROM [dbo].[Products]
WHERE [UnitsInStock]<50 OR [UnitsInStock]>100;

--Liet ke cac don hang duoc giao den Brazil, da giao muon
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry]='Brazil' AND [ShippedDate]>[RequiredDate];

--Lay ra tat ca cac san pham co gia duoi 100$ va ma the loai kkhac 1.
--Dung NOT
SELECT *
FROM[dbo].[Products]
WHERE NOT( [UnitPrice]>=100 AND  [CategoryID] =1);

--BT1: Liet ke tat ca cac don hang co gia van chuyen Freight trong khoang [50,100]&
SELECT *
FROM [dbo].[Orders]
WHERE [Freight]>=50 AND [Freight]<=100;


--BT2: Liet ke cac san pham co so luong hang trong kho (UnitsInStock) lon hon 20
-- va so luong hang trong don hang (UnitsOnOrder) nho hon 20
SELECT *
FROM[dbo].[Products]
WHERE [UnitsInStock]>20 AND [UnitsOnOrder]<20;