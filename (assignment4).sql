SELECT [dbo].[DimGeography].GeographyType,[dbo].[DimGeography].RegionCountryName, 
[dbo].[DimStore].StoreName,[dbo].[DimStore].StoreDescription
FROM [DimStore]
INNER JOIN [DimGeography] ON [dbo].[DimStore].StoreKey=[dbo].[DimGeography].GeographyKey


SELECT [dbo].[DimGeography].GeographyType,[dbo].[DimGeography].RegionCountryName, 
[dbo].[DimStore].StoreName,[dbo].[DimStore].StoreDescription
FROM [DimStore]
LEFT JOIN [DimGeography] ON [dbo].[DimStore].StoreKey=[dbo].[DimGeography].GeographyKey

SELECT [dbo].[DimGeography].GeographyType,[dbo].[DimGeography].RegionCountryName, 
[dbo].[DimStore].StoreName,[dbo].[DimStore].StoreDescription
FROM [DimStore]
RIGHT JOIN [DimGeography] ON [dbo].[DimStore].StoreKey=[dbo].[DimGeography].GeographyKey

SELECT [dbo].[DimGeography].GeographyType,[dbo].[DimGeography].RegionCountryName, 
[dbo].[DimStore].StoreName,[dbo].[DimStore].StoreDescription
FROM [DimStore]
LEFT OUTER JOIN [DimGeography] ON [dbo].[DimStore].StoreKey=[dbo].[DimGeography].GeographyKey

where [dbo].[DimStore].StoreName = 'Contoso Bellevue Store';

select * from [DimGeography]
select * from [DimStore] 