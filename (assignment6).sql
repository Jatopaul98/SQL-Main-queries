create view [ViewRankPropeties] as
select 
DimProduct.ProductKey,
DimProduct.ProductName,
FactSales.SalesAmount,
RANK() OVER(partition by DimProduct.ProductName ORDER BY FactSales.SalesAmount) Rank,
DENSE_RANK() over(partition by DimProduct.ProductName ORDER BY FactSales.SalesAmount) DENSE_RANK,  /*creating view table and using case statement  */
ROW_NUMBER() over(partition by DimProduct.ProductName ORDER BY FactSales.SalesAmount) ROW_NUMBER
from
DimProduct inner join FactSales on
DimProduct.ProductKey = FactSales.ProductKey
WHERE DimProduct.ProductName LIKE '%420%' AND FactSales.SalesAmount > 10000							/*In where conditin using the LIKE Function*/							
							
create proc spAggregateFunction								/*creating store procedure*/
@pattern varchar(20)											/*creating variable*/
as 
begin
select 
DimProduct.ProductName, 
MAX(FactSales.SalesAmount) as MAX_Sales_Amount,
MIN(FactSales.SalesAmount) as MIN_Sales_Amount,
AVG(FactSales.SalesAmount) as AVG_Sales_Amount,
Count(FactSales.SalesAmount) as Count_Sales_Amount
from DimProduct 
inner join
FactSales on DimProduct.ProductKey = FactSales.ProductKey 
where DimProduct.ProductName like @pattern 
group by DimProduct.ProductName
having sum(FactSales.SalesAmount)>10000
order by DimProduct.ProductName 
END

EXECUTE spAggregateFunction '%420%'


	SELECT * INTO dbo.#tmpViewRankPropeties FROM [ViewRankPropeties]
	
	SELECT * FROM dbo.#tmpViewRankPropeties

	DROP TABLE dbo.#tmpViewRankPropeties
	
 
 
 SP_HELPTEXT [ViewRankPropeties]				/* sp_helptext*/



 SELECT * FROM sys.objects WHERE NAME = 'spAggregateFunction';										/*  use the sys.objects*/ 
 
 SELECT * FROM sys.objects WHERE NAME = '[ViewRankPropeties]';


											
 SELECT * FROM SYS.syscomments					/*  use the sys.syscoments*/ 

--6.7)use exc command to run the proc.
 
  spAggregateFunction '%420%'
