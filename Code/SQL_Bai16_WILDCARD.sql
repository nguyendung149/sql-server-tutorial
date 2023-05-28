--Loc ra tat ca cac khach hang co ten lien he bat dau
--bang chu 'A'
SELECT *
FROM [dbo].[Customers]
WHERE [ContactName] LIKE 'A%';

--Loc ra tat ca cac khach hang co ten lien he bat dau bang chu 'H', va
--co chu thu 2 la bat ky ky tu nao
SELECT *
FROM [dbo].[Customers]
WHERE [ContactName] LIKE 'H_%';

--Locc ra tat ca cac don hang duoc gui den thanh pho co chu
-- cai bat dau bang la L chu cai thu hai la u hoac o
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE 'L[u,o]%';
--Loc ra tat ca cac don hang duoc gui den thanh pho co chu
-- cai bat dau bang la L chu cai thu hai khong duoc la u hoac o
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE 'L[^u,o]%';

--Loc ra tat ca cac don hang duoc gui den thanh pho
-- co chu cau bat dau la L, chu cai thu hai la cac ki tu tu
-- a den e;
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE 'L[a-e]%';

--Lay ra tat ca cac nha cung cap hang co ten cong ty bat dau
--bang chu A va khong chua ky tu b.
SELECT *
FROM [dbo].[Suppliers]
WHERE [CompanyName] LIKE 'A%' AND  [CompanyName] NOT LIKE '%b%';