
Create Procedure Store_procedure 
  as 
  Begin 
   select * from FutureStars ;
  End 

  drop Procedure Store_procedure

  Execute Store_procedure ;    /* for printing the total table similar to select DML*/
  select * from FutureStars		/* for printing the total table*/


  
USE ContosoRetailDW;  
GO  
EXEC sp_helptext ProductName;  
GO  


select * from sys.objects     /* assignment 6*/
select * from sys.syscomments

DECLARE @retunr_status int
 
EXEC @retunr_status = GetLocations @LocID = 1
 
SELECT @retunr_status AS ReturnStatus



EXEC select ProductName from DimProduct

select * from DimProduct

EXEC sys.sp_help ;


view via sp_helptext

 select * from sys.objects
 select * from 