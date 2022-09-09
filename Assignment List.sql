select * from DimProduct
select * from FactSales

SELECT DimProduct.ProductLabel, DimProduct.ProductName, FactSales.ProductKey 
FROM DimProduct
INNER JOIN FactSales
ON DimProduct.ProductKey = FactSales.PromotionKey
where DimProduct.UnitCost = '6.62'

