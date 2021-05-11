-- Cleansed FACT_Internet Sales Table --
SELECT 
[ProductKey],
[OrderDateKey],
[DueDateKey],
[ShipDateKey],
[CustomerKey],
    --,[PromotionKey]
    --,[CurrencyKey]
    --,[SalesTerritoryKey]
[SalesOrderNumber],
    --,[SalesOrderLineNumber]
    --,[RevisionNumber]
    --,[OrderQuantity]
    --,[UnitPrice]
    --,[ExtendedAmount]
    --,[UnitPriceDiscountPct]
    --,[DiscountAmount]
    --,[ProductStandardCost]
    --,[TotalProductCost]
[SalesAmount]
     --,[TaxAmt]
     --,[Freight]
     --,[CarrierTrackingNumber]
     --,[CustomerPONumber]
     --,[OrderDate]
     --,[DueDate]
	 --,[ShipDate]
FROM [dbo].[FactInternetSales]
WHERE 
	LEFT (OrderDateKey, 4) = 2014
ORDER BY 
	OrderDateKey ASC