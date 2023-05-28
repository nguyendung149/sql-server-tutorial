--Viet ra cau lenh SQL lay ra ten cac quoc gia (Country) khac nhau
-- tu bang khach hang - Customer
SELECT DISTINCT Country
FROM dbo.Customers;
--Lay ra ten cac ma so buu dien khac nhau tu bang Supplier
SELECT DISTINCT PostalCode
FROM dbo.Suppliers;
--Du lieu khac nhau ve ho cua nhan vien va cach goi danh hieu lich su
SELECT DISTINCT LastName,TitleOfCourtesy
FROM dbo.Employees;
--ShipVia khac nhau tu bang Orders
SELECT DISTINCT ShipVia
FROM dbo.Orders;