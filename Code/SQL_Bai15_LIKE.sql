--LOC ra tat ca cac khach hang den tu cac quoc gia (Country)
-- bat dau bang chu "A"
SELECT *
FROM [dbo].[Customers]
WHERE [Country] LIKE 'A%';

--Lay danh sach cac dat hang duoc gui den cac thanh pho co
--chu 'a'
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE '%a%';
--Hay loc ra tat ca ca cac don hang voi dieu kien:
--ShipCountry LIKE 'U_'
--ShipContry LIKE 'U%'
SELECT *
FROM [dbo].[Orders]
WHERE[ShipCountry]  LIKE 'U_A';

SELECT *
FROM [dbo].[Orders]
WHERE[ShipCountry]  LIKE 'U%A';


--BT1: Hay lay ra tat ca cac nha cung cap hang co chu 'b'
--trong ten cua cong ty
SELECT *
FROM [dbo].[Suppliers] 
WHERE [CompanyName] LIKE '%b%';
