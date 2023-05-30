-- Tu bang Product va Categories, hay tim cac san pham thuoc
--danh muc 'Seafood' in ra cac thong tin sau:
--ma the loai
-- ten the loai
-- ma san pham
-- ten san pham
SELECT c.CategoryID,c.CategoryName,p.ProductID,p.ProductName
FROM [dbo].[Products] AS p, [dbo].[Categories] AS c
WHERE p.CategoryID = c.CategoryID AND c.CategoryName = 'Seafood';

--Tu bang Product va Suppliers, hay tim cac san pham duoc
--cung cap tu nuoc 'Germany'
-- ma nha cung cap
-- quoc gia
-- ma san pham
-- ten san pham
SELECT s.SupplierID,s.Country,p.ProductID,p.ProductName
FROM [dbo].[Products] AS p,[dbo].[Suppliers] AS s
WHERE p.SupplierID = s.SupplierID AND s.Country = 'Germany';


--tu 3 bang Customers, Shippers, Orders lay ra:
-- ma don hang
-- ten khach hang
-- ten cong ty van chuyen
-- chi in ra cac don hang cua cac khach hang denn tu thanh pho 'London'
SELECT  o.OrderID,c.ContactName,s.CompanyName
FROM [dbo].[Customers] AS c,[dbo].[Shippers] AS s,[dbo].[Orders] AS o
WHERE c.CustomerID = o.CustomerID AND s.ShipperID = o.ShipVia AND c.City = 'London';

--Tu 3 bang Customers, Shippers, Orders lay ra:
-- ma don hang
-- ten khach hang
-- ten cong ty van chuyen
-- ngay yeu cau chuyen hang
-- ngay giao hang
-- va vhi in ra cac don hang bi giao muon hon quy dinh
SELECT o.OrderID,c.ContactName,s.CompanyName,o.RequiredDate,o.ShippedDate
FROM [dbo].[Customers] AS c,[dbo].[Shippers] AS s,[dbo].[Orders] AS o
WHERE c.CustomerID=o.CustomerID AND o.ShipVia = s.ShipperID AND o.RequiredDate<o.ShippedDate;

--