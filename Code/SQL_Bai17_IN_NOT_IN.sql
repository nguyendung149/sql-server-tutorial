-- Hay loc ra tat ca cac don hang voi dieu kien
-- Don hang duoc giao den Germany, UK, Brazil
-- Don hang duoc giao den cac quoc gia khac Germany, UK, Brazil
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] IN ('Germany','UK','Brazil') ;

SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] NOT IN ('Germany','UK','Brazil');

--Lay ra cac san pham co ma the loai khac voi 2,3,4
SELECT *
FROM [dbo].[Products]
WHERE [CategoryID] NOT IN (2,3,4);

--Hay liet ke cac nhan vien khong phai la nu tu bang nhan vien
-- Hay liet ke cac nhan vien la nu tu bang nhan vien

SELECT *
FROM [dbo].[Employees]
WHERE [TitleOfCourtesy] NOT IN ('Ms.','Mrs.');

SELECT *
FROM [dbo].[Employees]
WHERE [TitleOfCourtesy] IN ('Ms.','Mrs.');


--Lay ra tat ca cac khach hanbg den tuh cac thanh pho sau day:
--Berlin
--London
--Warszawa
SELECT *
FROM [dbo].[Customers]
WHERE [City] IN ('Berlin','London','Warszawa');
