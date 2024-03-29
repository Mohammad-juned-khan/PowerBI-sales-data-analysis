/****** Script for Filtering Date Dimension for Sales Analytics from Data Set ******/
SELECT [DateKey]
      ,[FullDateAlternateKey] AS Date
      
      ,[EnglishDayNameOfWeek] AS Day
      
      ,[EnglishMonthName] AS Month
      ,LEFt([EnglishMonthName],3) as MonthName
      
      ,[MonthNumberOfYear] AS MonthNumber
      ,[CalendarQuarter] AS Quarter
      ,[CalendarYear] AS Year
      
  FROM [AdventureWorksDW2014].[dbo].[DimDate]
  WHERE
  CalendarYear >= 2019 
  Order by CalendarYear DESC