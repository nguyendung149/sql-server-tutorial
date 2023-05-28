--Lay CompanyName dat ten thay the la Cong ty
--PostalCode dat tene thay the Ma buu dien
SELECT CompanyName as [Công ty], 
		PostalCode as "Mã bưu điện",
		City "Thành phố"
FROM [dbo].[Customers];
--
SELECT LastName AS "Họ",
		FirstName AS "Tên"
FROM dbo.Employees;
--
SELECT TOP 15 [o].*
FROM [dbo].[Orders] AS [o];
--
SELECT TOP 5 [p].[ProductName] AS [Tên sản phẩm],
			[p].[SupplierID] AS [Mã nhà cung cấp],
			[p].[CategoryID] AS [Mã thể loại]
FROM [dbo].[Products] AS [p];