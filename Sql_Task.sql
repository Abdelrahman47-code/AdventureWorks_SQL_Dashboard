--1--
CREATE VIEW Sales.vSalesOrderMerged AS
SELECT 
    H.*,   
    D.ProductID,
    D.OrderQty,
    D.UnitPrice,
    D.UnitPriceDiscount,
    D.LineTotal
FROM Sales.SalesOrderHeader AS H
JOIN Sales.SalesOrderDetail AS D
    ON H.SalesOrderID = D.SalesOrderID;

--2--
SELECT *
  FROM [AdventureWorks2019].[Sales].[vSalesOrderMerged]

--3--
ALTER VIEW Sales.vSalesOrderMerged AS
SELECT 
    -- Drop Comment , rowguid
    H.SalesOrderID,
    H.OrderDate,
    H.DueDate,
    H.ShipDate,
    H.Status,
    H.OnlineOrderFlag,
    H.SalesOrderNumber,
    H.AccountNumber,
    H.CustomerID,
    H.SalesPersonID,
    H.TerritoryID,
    H.BillToAddressID,
    H.ShipToAddressID,
    H.ShipMethodID,
    H.SubTotal,
    H.TaxAmt,
    H.Freight,
    H.TotalDue,
    
    D.ProductID,
    D.OrderQty,
    D.UnitPrice,
    D.UnitPriceDiscount,
    D.LineTotal
FROM Sales.SalesOrderHeader AS H
JOIN Sales.SalesOrderDetail AS D
    ON H.SalesOrderID = D.SalesOrderID;

--4--
select * from [AdventureWorks2019].[Production].[Product]


--5--
UPDATE [Production].[Product]
SET
    Color = 'Black'
WHERE
    Color IS NULL;

--6--
select ProductID,name,color,ProductSubcategoryID
from [AdventureWorks2019].[Production].[Product]

--7--
select ProductCategoryID,Name As Category
from [AdventureWorks2019].[Production].[ProductCategory]

--8--
select ProductSubcategoryID,ProductCategoryID,name as ProductCategory
from [AdventureWorks2019].[Production].[ProductSubcategory]

--10--
select ProductSubcategoryID,ProductCategoryID,name as ProductCategory
from [AdventureWorks2019].[Production].[ProductSubcategory]

--11--
select BusinessEntityID,FirstName,LastName,JobTitle,PhoneNumber,PhoneNumberType,EmailAddress,AddressLine1,City,StateProvinceName,PostalCode,CountryRegionName
from [AdventureWorks2019].[HumanResources].[vEmployee]

--12--
select TerritoryID,[Name] as Territory,[Group],SalesYTD,SalesLastYear
from [AdventureWorks2019].[Sales].[SalesTerritory]

--13--
select ShipMethodID,[Name] as 'Shipname',ShipBase,ShipRate
from [AdventureWorks2019].[Purchasing].[ShipMethod]
