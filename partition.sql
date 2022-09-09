SELECT 
    salesKey,
    UnitCost,
    TotalCost, 
    AVG(SalesAmount) OVER (PARTITION BY TotalCost) SaleAmount
FROM
    FactSales;

	select * from FactSales