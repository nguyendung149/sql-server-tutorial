-- Liet ke ten san pham va ten nha cung cap cua cac san pham
-- da duoc dat hang trong bang "Order Details".
-- Su dung inner join de ket hop bang "Order Details" voi cac
-- bang lien quan de lay thong tin san pham va nha cung cap 
SELECT DISTINCT p.ProductName,s.CompanyName
FROM [dbo].[Order Details] AS od
INNER JOIN [dbo].[Products] AS p
ON od.ProductID= p.ProductID
INNER JOIN [dbo].[Suppliers] AS s
ON p.SupplierID = s.SupplierID;

--Liet ke ten khach hang va ten nhan vien phu trach cua cac
-- don hang trong bang "Orders". Bao gom ca cac don hang khong co
-- nhan vien phu trach.
SELECT DISTINCT o.OrderID,e.FirstName,e.LastName,c.ContactName
FROM [dbo].[Orders] AS o 
LEFT JOIN [dbo].[Employees] AS e
ON o.EmployeeID = e.EmployeeID
LEFT JOIN [dbo].[Customers] AS c
ON c.CustomerID = o.CustomerID;

--Liet ke ten khach hang va ten nhan vien phu trach cua cac don hang trong
-- bang "Orders". Bao gom ca cac khach hang khong co don hang
SELECT o.OrderID, c.ContactName,e.FirstName,e.LastName
FROM [dbo].[Orders] AS o
RIGHT JOIN [dbo].[Customers] AS c
ON o.CustomerID = c.CustomerID
RIGHT JOIN [dbo].[Employees] AS e
ON e.EmployeeID = o.EmployeeID;

--liet ke ten danh muc va ten nha cung cap cua cac san pham
-- trong bang "products". Bao gom ca cac danh muc va nha cung cap khong co san pham
SELECT c.CategoryName,s.CompanyName
FROM [dbo].[Products] AS p
FULL JOIN [dbo].[Categories] AS c
ON p.CategoryID = c.CategoryID
FULL JOIN [dbo].[Suppliers] AS s
ON s.SupplierID = p.SupplierID;

-- Liet ke ten khach hang va ten san pham da duoc dat hang trong bang
-- "Orders" va "Order Details"

SELECT c.ContactName,p.ProductName
FROM [dbo].[Orders] AS o
INNER JOIN [dbo].[Customers] AS c
ON o.CustomerID = c.CustomerID
INNER JOIN [dbo].[Order Details] AS od
ON od.OrderID = o.OrderID
INNER JOIN [dbo].[Products] AS p
ON p.ProductID = od.ProductID;

-- Liet ke ten nhan vien va ten khach hang cua cac don hang trong bang "Orders"
-- Bao gom ca cac don hang khong co nhan vien hoac khach hang tuowng ung
SELECT e.FirstName,e.LastName,c.ContactName
FROM [dbo].[Orders] AS o 
FULL JOIN [dbo].[Employees] AS e
ON e.EmployeeID = o.EmployeeID
FULL JOIN [dbo].[Customers] AS c
ON c.CustomerID = o.CustomerID;

