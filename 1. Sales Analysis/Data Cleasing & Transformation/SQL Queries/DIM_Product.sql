-- Cleansed DIM_Products Table--
SELECT
P.[ProductKey],
P.[ProductAlternateKey] AS ProductItemCode,
     --,[ProductSubcategoryKey]
     --,[WeightUnitMeasureCode]
     --,[SizeUnitMeasureCode]
P.[EnglishProductName] AS [ProductName],
PS.EnglishProductSubcategoryName AS [SubCategory], -- Joined in from subcategory table
PC.EnglishProductCategoryName AS [ProductCategory], -- Joined in from category table
     --,[SpanishProductName]
     --,[FrenchProductName]
     --,[StandardCost]
     --,[FinishedGoodsFlag]
P.[Color] AS [ProductColor],
     --,[SafetyStockLevel]
     --,[ReorderPoint]
     --,[ListPrice]
P.[Size] AS [ProductSize],
     --,[SizeRange]
     --,[Weight]
     --,[DaysToManufacture]
P.[ProductLine] AS [Product Line],
     --,[DealerPrice]
     --,[Class]
     --,[Style]
P.[ModelName] AS [Product Model Name],
     --[LargePhoto]
P.[EnglishDescription] AS [Product Description],
     --,[FrenchDescription]
     --,[ChineseDescription]
     --,[ArabicDescription]
     --,[HebrewDescription]
     --,[ThaiDescription]
     --,[GermanDescription]
     --,[JapaneseDescription]
     --,[TurkishDescription]
     --,[StartDate]
     --,[EndDate]
     --,[Status]
ISNULL (P.Status, 'Outdated') AS [Product Status]
FROM [dbo].[DimProduct] as P
	LEFT JOIN dbo.DimProductSubcategory AS PS ON PS.ProductSubCategoryKey = P.ProductSubCategoryKey
	LEFT JOIN dbo.DimProductCategory AS PC ON PS.ProductCategoryKey = PC.ProductCategoryKey
ORDER BY
P.ProductKey ASC;