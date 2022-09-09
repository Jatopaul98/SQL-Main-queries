SELECT [dbo].[DimProduct].ProductName,
MAX([dbo].[FactSales].SalesAmount) AS MAX_AMOUNT,
MIN([dbo].[FactSales].SalesAmount) AS MIN_AMOUNT,
AVG([dbo].[FactSales].SalesAmount) AS AVG_AMOUNT,    /*Aggregate function*/
SUM([dbo].[FactSales].SalesAmount) AS SUM_AMOUNT,
COUNT([dbo].[FactSales].SalesAmount) AS CNT_AMOUNT
FROM dbo.DimProduct
INNER JOIN				/*Inner join*/
[dbo].[FactSales] ON [dbo].[DimProduct].ProductKey = [dbo].[FactSales].ProductKey
WHERE [dbo].[DimProduct].ProductName LIKE '%420%'
GROUP BY ProductName
HAVING SUM([dbo].[FactSales].SalesAmount) > 10000	/*Giving condition*/


select * from [FactSales]

SELECT FactSales.SalesAmount,
RANK() OVER(ORDER BY SalesAmount) Rank			/*SQL Functions*/
FROM FactSales
ORDER BY Rank;

SELECT dbo.DimProduct.ClassID,
dense_rank() OVER(ORDER by ClassID ) Rank		/*SQL Functions*/
FROM dbo.DimProduct
ORDER BY Rank;

SELECT dbo.DimProduct.ClassID,
Row_number() OVER(ORDER by ClassID ) Rank		/*SQL Functions*/
FROM dbo.DimProduct
ORDER BY Rank


select * from [dbo].[DimProduct]


select * from [dbo].[DimProductCategory];


SELECT
CASE
  WHEN ProductCategoryName ='Music, Movies and Audio Books' THEN 'Youtube'  /*case statement*/
END
from DimProductCategory