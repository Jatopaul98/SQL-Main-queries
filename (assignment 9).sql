
															-- Copying the existing table to another table to secure the data.
SELECT * INTO CopyOfFactSales FROM FactSales

--Creating the filegroups in Exiting database.
ALTER DATABASE ContosoRetailDW ADD FILEGROUP [FileG2007]
ALTER DATABASE ContosoRetailDW ADD FILEGROUP [FileG2008]
ALTER DATABASE ContosoRetailDW ADD FILEGROUP [FileG2009]

															/*Specifying the file to filegroup*/
 ALTER DATABASE ContosoRetailDW    
ADD FILE     (
    NAME = FileG2007,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FileG2007.ndf',
        SIZE = 10 MB, 
        MAXSIZE = UNLIMITED, 
        FILEGROWTH = 1024 KB
    ) TO FILEGROUP [FileG2007];

 ALTER DATABASE ContosoRetailDW    
ADD FILE     (
    NAME = FileG2008,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FileG2008.ndf',
        SIZE = 10 MB, 
        MAXSIZE = UNLIMITED, 
        FILEGROWTH = 1024 KB
    ) TO FILEGROUP [FileG2008];



 ALTER DATABASE ContosoRetailDW    
ADD FILE     (
    NAME = FileG2009,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\FileG2009.ndf',
        SIZE = 10 MB, 
        MAXSIZE = UNLIMITED, 
        FILEGROWTH = 1024 KB
    ) TO FILEGROUP [FileG2009];


																	
CREATE PARTITION FUNCTION partitionByYearFunction(DateTime)							/*Creating the Partition function*/
AS RANGE RIGHT
FOR VALUES ('2007-12-31','2008-12-31','2009-12-31');

CREATE PARTITION SCHEME partitionByYearScheme
AS PARTITION partitionByYearFunction											/*Creating the Partitin scheme*/
TO ([FileG2007],[FileG2008],[FileG2009],[PRIMARY]);


CREATE CLUSTERED INDEX ix_Date															/*Creating clustered index for the column*/
ON CopyOfFactSales ( DateKey)
ON [partitionByYearScheme]([DateKey]);


																/*Query to see the partition*/
SELECT
    t.name AS [Table],
    i.name AS [Index],
    p.partition_number,
    f.name,
    r.boundary_id,
    r.value AS [Boundary Value]   ,
     p.rows
FROM sys.tables AS t  
JOIN sys.indexes AS i  
    ON t.object_id = i.object_id  
JOIN sys.partitions AS p
    ON i.object_id = p.object_id AND i.index_id = p.index_id   
JOIN  sys.partition_schemes AS s   
    ON i.data_space_id = s.data_space_id  
JOIN sys.partition_functions AS f   
    ON s.function_id = f.function_id  
LEFT JOIN sys.partition_range_values AS r   
    ON f.function_id = r.function_id and r.boundary_id = p.partition_number  
WHERE i.type <= 1 AND t.name = 'CopyOfFactSales'
ORDER BY p.partition_number ASC;


