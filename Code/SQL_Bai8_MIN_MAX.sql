--Giá thấp nhất trong bảng Product
SELECT MIN([UnitPrice]) AS [MinPrice]
FROM [dbo].[Products];

--Ngày đạt hàng gần đây nhất tử bảng Order
SELECT MAX([OrderDate]) as [MaxOrderDate]
FROM dbo.Orders;

--Số lượng hàng trong kho lớn nhất
SELECT MAX([UnitsInStock]) AS [MaxUnitsInStrock]
FROM[dbo].[Products];


--Tuổi đời lớn nhất công ty
SELECT MIN([BirthDate]) AS [MinBirthDate]
FROM [dbo].[Employees];