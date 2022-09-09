/*SELECT count (DimProduct.ProductName) as first1 
FROM [DimProduct] inner JOIN FactSales
ON DimProduct.ProductKey = FactSales.channelKey
WHERE DimProduct.ProductName='Contoso 512MB MP3 Player E51 Silver'
group by (DimProduct.[ProductName]),(FactSales.StoreKey),(FactSales.PromotionKey)
HAVING COUNT(DimProduct.ProductKey)< 56;*/


SELECT count (DimProduct.ProductName) as ProductName,FactSales.ProductKey as ProductKey
FROM [DimProduct] inner JOIN FactSales
ON DimProduct.ProductKey = FactSales.CurrencyKey;
WHERE 
Groupby


select * from DimProduct
select * from FactSales

SELECT COUNT(SalesAmount)   /* aggregate funciton*/
FROM FactSales


SELECT max(SalesAmount)   /* aggregate funciton*/
FROM FactSales                                                /*select,from,where,group by ,having count,order by*/

SELECT min(SalesAmount)   /* aggregate funciton*/
FROM FactSales

SELECT avg (SalesAmount)   /* aggregate funciton*/
FROM FactSales




