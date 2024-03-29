/****** Script for Cleaning Internet Sales Table  ******/
SELECT [ProductKey]
      ,[OrderDateKey]
	  ,LEFT([OrderDateKey],4) AS OrderYear
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      ,[SalesOrderNumber]
      ,[SalesAmount]
  FROM [AdventureWorksDW2014].[dbo].[FactInternetSales]
  WHERE
  -- To Extract Internet Sales of last 2 year from present year 
  -- We use YEAR(GETDATE()) function to get present date
  LEFT([OrderDateKey],4)>= YEAR(GETDATE())-2
  ORDER BY 
  [OrderDateKey] ASC