-- Cleansed DIM_Customers table
SELECT
C.customerkey AS CustomerKey,
     --[GeographyKey]
     --[CustomerAlternateKey]
     --[Title]
C.firstname AS [FirstName],
     --[MiddleName]
C.lastname AS [LastName],
C.firstname + ' ' + lastname AS [FullName],
     -- [NameStyle]
     -- [BirthDate]
     -- [MaritalStatus]
     -- [Suffix]
CASE C.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
     -- [EmailAddress]
     -- [YearlyIncome]
     -- [TotalChildren]
     -- [NumberChildrenAtHome]
     -- [EnglishEducation]
     -- [SpanishEducation]
     -- [FrenchEducation]
     -- [EnglishOccupation]
     -- [SpanishOccupation]
     -- [FrenchOccupation]
     -- [HouseOwnerFlag]
     -- [NumberCarsOwned]
     -- [AddressLine1]
     -- [AddressLine2]
     -- [Phone]
C.datefirstpurchase AS DateFirstPurchase,
     --[CommuteDistance]
G.city AS [Customer City] -- Joined in Customer City from geography table
FROM 
	dbo.DimCustomer AS C
	LEFT JOIN dbo.DimGeography AS G ON G.GeographyKey = C.GeographyKey
ORDER BY
	CustomerKey ASC --Ordered list by CustomerKey
