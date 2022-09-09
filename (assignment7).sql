CREATE FUNCTION fn_ConvertToUSCST(@diff int)				/*function function name with parameter*/
RETURNS SMALLDATETIME
AS
BEGIN															/*conerting from IST to US CST*/
	RETURN DATEADD(MINUTE,-@diff,GETDATE());
END

SELECT dbo.fn_ConvertToUSCST(618) AS US_CST

SELECT GETDATE() AS IST





CREATE FUNCTION fn_ConvertTimeColumnToUS_CSTime(@difference int)					/*conerting from UST CST to IST*/
RETURNS TABLE
AS
RETURN (SELECT dimdate.Datekey AS US_CST,
		DATEADD(MINUTE,@difference,(Dimdate.datekey)) AS IST
		FROM DimDate)

SELECT * FROM dbo.fn_ConvertTimeColumnToUS_CSTime(630)


