/****** Script for product table ******/
SELECT p.[ProductKey]
      ,p.[ProductAlternateKey] AS [ProductItemCode]
      ,p.[EnglishProductName] AS [Product Name]
	  -- Get the product Sub Category 
	  ,ps.[EnglishProductSubcategoryName] AS [Product Sub-Category]
	  -- Get Product Category
	  ,pc. [EnglishProductCategoryName] AS [Product Category]
      
      ,p.[Color] AS [Product Color]
      
      ,p.[Size] AS [Size]
     
      ,p.[ProductLine] AS [Product Line]
      
      ,p.[ModelName] AS [Product Model Name]
   
      ,p. [EnglishDescription] AS [Product Description]
      
      ,ISNULL(p.[Status],'Outdated') AS [Product Status]
  FROM [AdventureWorksDW2014].[dbo].[DimProduct] AS p
  LEFT JOIN [AdventureWorksDW2014].[dbo].[DimProductSubcategory] AS ps ON ps.[ProductSubcategoryKey] = p.[ProductSubcategoryKey]
  -- to get the Sub Category Name
  LEFT JOIN [AdventureWorksDW2014].[dbo].[DimProductCategory] AS pc ON ps.[ProductCategoryKey] = pc.[ProductCategoryKey]
  -- to get the Category Name
  ORDER by p.[ProductKey] ASC