--Đêm số lượng khách hàng có trong bảng Customer
SELECT COUNT(*) AS "NumberOfCustomers"
FROM [dbo].[Customers];

SELECT COUNT([CustomerID]) AS "NumberOfCustomers"
FROM [dbo].[Customers];

--Tính tổng số tiền vận chuyển Freight của tất cả các đơn hàng
SELECT SUM([Freight]) AS [SumFreight]
FROM [dbo].[Orders];

--Tìm trung bình số lượng đạt hàng (Quantity) của tất cả các sản phẩm trong bảng Order Details
SELECT AVG([Quantity]) AS [AvgQuantity]
FROM [dbo].[Order Details];

--Đếm số lượng, tính tổng số lượng hàng trong kho, trung bình giá của các sản phẩm có trong Product
SELECT COUNT(*) AS [NumberOfProduct], SUM([UnitsInStock]) AS [TotalUnitInStock], AVG([UnitPrice]) AS [AvgUnitPrice]
FROM [dbo].[Products];

	--BT1: Dem so luong  don hang tu bang Order
	SELECT COUNT(*) AS [NumberOfOrder]
	FROM [dbo].[Orders];

	SELECT COUNT([OrderID]) AS [NumberOfOrder]
	FROM [dbo].[Orders];

	--BT2: Tính trung bình cho cột UnitPrice, tính tổng cho cột Quantity->OrderDetails
	SELECT AVG([UnitPrice]) AS [AvgUnitPrice],
			SUM([Quantity]) AS [TotalQuantity]
	FROM [Order Details]