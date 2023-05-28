--Lay ra 5 dong dau tien trong bang Customers
SELECT TOP 10 *
FROM dbo.Customers;
--Lay ra 30% nhan vien cua cong ty
SELECT TOP 30 PERCENT  *
FROM dbo.Employees;
--Lay ra cac don hang quy dinh ma khach hang khong duoc trung, chi lay 5 dong dau tien
SELECT DISTINCT TOP 5 [CustomerID] 
FROM dbo.Orders;
-------
SELECT DISTINCT TOP 3 CategoryID 
FROM dbo.Products;