CREATE TABLE FutureStars(ID int NOT NULL PRIMARY KEY,
FirstName char(10),MiddleName varchar(10),LastName nvarchar(10),
DOB date,IsMarried bit,HeightInCms int);   /*this is created in the new_file data base*/

CREATE TABLE FutureStarsEducation(ID int FOREIGN KEY REFERENCES FutureStars(ID),		/*second table*/
FutureStarsId int NOT NULL PRIMARY KEY,
DegreeName varchar(40),DegreeBranch varchar(40),					
DateOfCompletion date,CollegeName varchar(20),
Rollno int UNIQUE,SSLC varchar(20),PU varchar(20),Eng varchar(20),Masters varchar(10));




ALTER TABLE FutureStarsEducation			/*alter the table by creating the these col*/ 
ADD SSLC int,PU int,Eng int,Masters int ;

select * from Future
select * from FutureStarsEducation

drop table FutureStarsEducation /*deleting table */
--DROP TABLE IF EXISTS 'abcd';  /*no table is there so can't delete it*/ /*dropping the table which is not exisited*/ 

ALTER TABLE FutureStars
ADD MiddleName nvarchar(255); /*alter the datatype of the column name*/

sp_rename 'FutureStars', 'Futures'   /*renaming the table name to new one*/ 
sp_helplanguage;
sp_help

