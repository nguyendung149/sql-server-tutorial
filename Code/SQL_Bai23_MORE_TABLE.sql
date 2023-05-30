-- Tu bang Product va Categories, hay in ra cac thong tin sau
--day:
-- ma the loai
-- ten the loai
-- ma san pham
-- ten san pham
SELECT c.CategoryID,c.CategoryName,p.ProductID,p.ProductName
FROM[dbo].[Products] AS p,[dbo].[Categories] AS c
WHERE c.CategoryID=p.CategoryID;

-- Tu bang Employees va Orders, hay in ra cac thong tin sau day:
-- ma nhan vien
-- ten nhan vien
-- so luong don hang ma nhan vien da ban duoc
SELECT o.EmployeeID,e.LastName,e.FirstName,COUNT(o.[OrderID]) AS [TotalOrders]
FROM [dbo].[Orders] AS o,[dbo].[Employees] AS e
WHERE o.EmployeeID=e.EmployeeID
GROUP BY o.EmployeeID,e.LastName,e.FirstName;

--Tu bang Customers va Orders, hay in ra cac thong tin sau day:
-- ma so khach hang
-- ten cong ty
-- ten lien he
-- so luong don hang da mua
--Voi dieu kien: quoc gia cua khach hang la UK
SELECT c.CustomerID,c.CompanyName,c.ContactName,COUNT(o.[OrderID]) AS [TotalOrders]
FROM [dbo].[Customers] AS c,[dbo].[Orders] AS o
WHERE c.CustomerID=o.CustomerID AND c.Country = 'UK'
GROUP BY c.CustomerID,c.CompanyName,c.ContactName;


-- Tu bang Orders va Shippers, hay in ra cac thong tin sau day:
-- ma nha van chuyen
-- ten cong ty van chuyen
-- tong so tien duoc van chuyen (Sum Frieght)
-- va in ra man hinh theo thu tu sap xep tong so tien van chuyen duoc giam dan
SELECT s.ShipperID,s.CompanyName,SUM(o.[Freight]) AS [TotalFrieght]
FROM [dbo].[Orders] AS o,[dbo].[Shippers] AS s
WHERE o.ShipVia = s.ShipperID
GROUP BY s.ShipperID,s.CompanyName
ORDER BY SUM(o.[Freight]) DESC;

-- Tu bang Products va Suppliers, hay in ra cac thong tin sau day:
-- ma nha cung cap
-- ten cong ty
-- tong so cac san pham khac nhau da cung cap
-- va chi in ra man hinh duy nhat 1 nha cung cap co so luong san pham khac nhau nhieu nhat

SELECT TOP 1 S.SupplierID,S.CompanyName, COUNT(P.[ProductID]) AS [TotalProducts]
FROM  [dbo].[Products] AS P,[dbo].[Suppliers] AS S
WHERE S.SupplierID = P.SupplierID
GROUP BY S.SupplierID,S.CompanyName
ORDER BY COUNT(P.[ProductID]) DESC;
 

--Tu bang Orders va  Orders Details, hay in ra cac thong tin sau day:
-- Ma don hang
-- Tong so tien san pham cua don hang do
SELECT o.[OrderID],o.CustomerID, SUM(od.[UnitPrice]*od.Quantity) AS [Total]
FROM [dbo].[Orders] AS o,[dbo].[Order Details] AS od
WHERE o.OrderID = od.OrderID
GROUP BY o.[OrderID],o.CustomerID;

-- Tu 3 bang Orders, Order Details, Employees hay in cac thong
-- tin sau day:
-- ma don hang
-- ten nhan vien
-- tong so tien san pham cua don hang
SELECT o.OrderID,e.FirstName,e.LastName,SUM(od.UnitPrice*od.Quantity) AS [Total]
FROM [dbo].[Orders] AS o,[dbo].[Employees] AS e,[dbo].[Order Details] AS od
WHERE o.EmployeeID = e.EmployeeID AND o.OrderID = od.OrderID
GROUP BY o.OrderID,e.FirstName,e.LastName;

--BT1: Tu 3 bang Customers, Shippers, Orders, hay in cac thong tin sau day
-- ma don hang
-- ten khach hang
-- ten cong ty van chuyen
-- va chi in ra cac don hang duoc giao den 'UK' trong nam 1997
SELECT o.OrderID,c.CustomerID,c.CompanyName,s.CompanyName
FROM [dbo].[Customers] AS c,[dbo].[Suppliers] AS s,[dbo].[Orders] AS o
WHERE c.CustomerID=o.CustomerID AND s.SupplierID=o.ShipVia AND o.[ShipCountry] = 'UK' AND YEAR(o.ShippedDate) = 1997;