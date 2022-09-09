
CREATE TABLE dbo.Employee(
Eid int primary key,					/*creating a table*/
EName varchar(20),
Start_date varchar(10),
End_date varchar(10)
)

CREATE TABLE dbo.EmployeeHistory(
employeHistory text							/*creating a table which stores thebackground details*/ 
)

DROP TABLE dbo.EmployeeHistory
DROP TABLE dbo.Employee				/*droppping a table*/


SELECT * FROM dbo.EmployeeHistory

SELECT * FROM dbo.Employee


CREATE TRIGGER tr_EmployeeInsert
ON dbo.Employee
FOR INSERT												/*create a trigger as tr_EmployeeInsert on the employee table*/
AS
BEGIN 
		DECLARE @Id INT ;
		SELECT @Id = Eid FROM inserted;
		DECLARE @JoinDate VARCHAR(30) ;
		SELECT @JoinDate = Start_date FROM inserted;


		INSERT INTO dbo.EmployeeHistory															
		VALUES('New Employee with Id = ' +CAST(@Id AS VARCHAR(10)) + ' has joined at ' +@JoinDate);
END


INSERT INTO dbo.Employee VALUES(1,'sasi','11-07-2022','11-07-2025');
																					
INSERT INTO dbo.Employee VALUES(2,'ravi','11-07-2022','11-07-2025');

INSERT INTO dbo.Employee VALUES(3,'raju','11-07-2022','11-07-2025');

SELECT * FROM dbo.Employee
SELECT * FROM dbo.EmployeeHistory


--Assignment 8.1 -- Delete trigger

CREATE TRIGGER tr_EmployeeDelete
ON dbo.Employee												/*first create table and then delete a trigger as tr_EmployeeDelete on the employee table*/
FOR DELETE
AS
BEGIN
		DECLARE @Eid INT,@LeaveDate VARCHAR(30);
		SELECT @Eid = Eid FROM deleted;
		SELECT @LeaveDate = End_date FROM deleted;
		
		INSERT INTO dbo.EmployeeHistory VALUES('An Existing Employee with Id = ' +CAST(@Eid AS VARCHAR(10)) + ' was left at ' +@LeaveDate);


END

DELETE FROM dbo.Employee WHERE dbo.Employee.Eid = 2					/*deleteing the row which contain the id=2*/

SELECT * FROM dbo.EmployeeHistory;


--Assignment 8.1 --Update trigger 

CREATE TRIGGER tr_EmployeeUpdate
ON dbo.Employee
FOR UPDATE
AS																				/*first create table and then update a trigger as tr_EmployeeUpdate on the employee table*/
BEGIN
	DECLARE @OldName VARCHAR(30),@NewName VARCHAR(30),@Eid int;
	SELECT @Eid = Eid FROM inserted;
	SELECT @OldName = EName FROM deleted;
	SELECT @NewName = EName FROM inserted;
	
	INSERT INTO dbo.EmployeeHistory VALUES('An Existing employee having id '+ CAST(@Eid AS VARCHAR(10))+ 'name is Updated from' + @OldName +' to' + @NewName);

END

UPDATE dbo.Employee SET EName = 'thor' WHERE dbo.Employee.Eid = 3;							/*changing the name of the Ename soman to other name as thor*/

SELECT * FROM dbo.EmployeeHistory;