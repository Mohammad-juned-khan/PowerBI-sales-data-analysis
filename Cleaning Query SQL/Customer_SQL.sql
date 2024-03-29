/****** Script for Cleaning Customer Query  ******/
SELECT c.[CustomerKey] AS CustomerKey
      
      ,c.[FirstName] AS [First Name]
      
      ,c.[LastName] AS [Last Name]
	  --full name --
	  ,c.[FirstName] + ' ' + [LastName] AS [Full Name],
      CASE c.[Gender] WHEN 'M' THEN 'MALE' WHEN 'F' THEN 'FEMALE' END AS Gender

      ,c.[DateFirstPurchase] AS [DateFirstPurchase]
      ,g.[City] AS [Customer City]
	  ,g. [EnglishCountryRegionName] AS [Country]

  FROM [AdventureWorksDW2014].[dbo].[DimCustomer] AS c 
  LEFT JOIN [AdventureWorksDW2014].[dbo].[DimGeography] AS g on g.[GeographyKey] = c.[GeographyKey]
  ORDER BY 
  [CustomerKey] ASC