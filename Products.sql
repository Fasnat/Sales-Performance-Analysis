SELECT
  p.[ProductKey],
  p.[ProductAlternateKey] AS ProductItemCode,
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
  P.[EnglishProductName] AS [Product Name],
  ps.EnglishProductSubCategoryName AS [Sub Category],
  pc.EnglishProductCategoryName AS [Product Category],
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      p.[Color] AS [Product color],
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      p.[Size] AS [Product Size],
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      p.[ProductLine] AS [Product Line],
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      p.[ModelName] AS [Product Model Name],
      --,[LargePhoto]
      p.[EnglishDescription] AS [Product Description],
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate],
  ISNULL (p.Status, 'Outdated') AS [Product status]
FROM 
  [AdventureWorksDW2025].[dbo].[DimProduct] as p
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN dbo.DimProductcategory AS pc ON ps.ProductcategoryKey = pc.ProductcategoryKey
order by
  p.ProductKey asc
