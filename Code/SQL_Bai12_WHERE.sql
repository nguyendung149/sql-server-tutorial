--Liet ke tat cac caca nhan vien den tu thanh pho LonDon
--Sap xep ket qua theo LastName A->Z
SELECT *
FROM [dbo].[Employees]
WHERE [City] = 'London'
ORDER BY [LastName] ASC;

--Liet ke tat ca cac don hang bi giao muon, biet rang
--ngay can phai giao hang RequiredDate, ngao giao hang
--thuc te la ShippedDate.
SELECT *
FROM[dbo].[Orders]
WHERE [ShippedDate]>[RequiredDate];


--Dem so luong
SELECT COUNT(*) AS [So don giao hang muon]
FROM[dbo].[Orders]
WHERE [ShippedDate]>[RequiredDate];


--Lay ra tat ca con don hang chi tiet duoc giam gia nhieu hown
--10%
SELECT *
FROM[dbo].[Order Details]
WHERE [Discount]>0.1;

--BT1: Liet ke tat ca cac don hang duoc gui den quoc gia la "France"
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] = 'France';

--BT2: liet ke cac san pham co so luong hang trong kho (UnitsInStock)
--lon hon 20
SELECT *
FROM [dbo].[Products]
WHERE [UnitsInStock]>20;




