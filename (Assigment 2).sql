CREATE TABLE FutureStars(ID int NOT NULL PRIMARY KEY,
FirstName char(10),											  /*first table*/
MiddleName varchar(10),LastName nvarchar(10),
DOB date,IsMarried bit,
HeightInCms int CHECK (HeightInCms<=190));				  /*--type is different lines*/


CREATE TABLE FutureStarsEducation(ID int FOREIGN KEY REFERENCES FutureStars(ID),		/*second table*/
FutureStarsId int NOT NULL PRIMARY KEY,
DegreeName varchar(40),DegreeBranch varchar(40),					
DateOfCompletion date,CollegeName varchar(20),
Rollno int UNIQUE,SSLC varchar(20),PU varchar(20),Eng varchar(20),Masters varchar(10));

--DOJinCompany date DEFAULT Getdate());    need to check;

drop table FutureStarsEducation
drop table FutureStars

--ALTER TABLE FutureStarsEducation            /*adding new column name*/
--ADD SSLC int,PU int,Eng int,Masters int ;

--ALTER TABLE FutureStars ALTER COLUMN FirstName char(20) NOT NULL;   /*altering the column constraints*/

ALTER table FutureStarsEducation alter column DegreeBranch varchar(255)  /*changing the size of the dataype*/

DROP TABLE IF EXISTS 'abcd';  /*no table is there so can't delete it*/

/*sp_help FutureStars*/

insert into FutureStars values(01,'Abhijeet','Mahesh','Chanale','1997/02/25',0,167)
insert into FutureStars values(02, 'Ajay','Rajkumar','Chakrupe','1996/06/25', 0, 169)
insert into FutureStars values(03, 'Abhishek','MiddleName','Ranjan','1997/02/25', 0, 172)
insert into FutureStars values(04, 'Sagar','Suresh','Chinchane','1997/02/25', 0, 167)
insert into FutureStars values(05, 'Manish','MiddleName','M','1997/02/25', 0, 170)
insert into FutureStars values(06, 'Anand','Muragayya','Sankrat','1997/02/25', 0, 164)
insert into FutureStars values(07, 'Manikantha ','MiddleName','S','1997/02/25', 0, 165)
insert into FutureStars values(08, 'Gururaj ','MiddleName','vadavi','1997/02/25', 0, 171)
insert into FutureStars values(09, 'Jaber','MiddleName','Ali','1997/02/25',0, 168)
insert into FutureStars values(10, 'Jato ','MiddleName','Paul','1997/02/25', 0, 166)
insert into FutureStars values(11, 'Shishanjan ','MiddleName','V','1997/02/25', 0, 165)
insert into FutureStars values(12, 'Nishant','MiddleName','Moddu','1997/02/25', 0, 167)
insert into FutureStars values(13, 'Shubham ','Kumar ','Jha','1997/02/25', 0, 166)
insert into FutureStars values(14, 'Sohel','MiddleName','Mohammed','1997/02/25', 0, 165)
insert into FutureStars values(15, 'Hasan ','MiddleName','Mohammed ','1997/02/25', 0, 166)
insert into FutureStars values(16, 'shilpa ','S','Nivalagi','1997/02/25', 0, 164)
insert into FutureStars values(17, 'Roja ','MiddleName','RK','1997/02/25', 0, 165)
insert into FutureStars values(18, 'Swathi ','MiddleName','M','1997/02/25', 0, 168)
insert into FutureStars values(19, 'Sravanthi','MiddleName','Upputuri','1997/02/25',0, 168)



select * from FutureStars           /*select the whole table*/

sp_rename 'FutureStars.DOB','DateOfBirth';

ALTER Table FutureStarsEducation alter column Masters varchar  /*change the datatype of the the sslc,pu, Eng,Masters*/



INSERT INTO FutureStarsEducation VALUES(1,1001,'BCA','ComputerScience','2019-02-20','Nehru',1601,'M.M.N.S.S.E.H.S','G.H.S.S','','MCA')
INSERT INTO FutureStarsEducation VALUES(2,1002,'BCA','ComputerScience','2019-02-20','Nehru',1602,'M.M.N.S.S.E.H.S','G.H.S.S','','MCA')
INSERT INTO FutureStarsEducation VALUES(3,1003,'BCA','ComputerScience','2019-02-20','Nehru',1603,'M.M.N.S.S.E.H.S','G.H.S.S','','MCA')
INSERT INTO FutureStarsEducation VALUES(4,1004,'BCA','ComputerScience','2019-02-20','Nehru',1604,'M.M.N.S.S.E.H.S','G.H.S.S','','MCA')
INSERT INTO FutureStarsEducation VALUES(5,1005,'BCA','ComputerScience','2019-02-20','Nehru',1605,'M.M.N.S.S.E.H.S','G.H.S.S','','MCA')
INSERT INTO FutureStarsEducation VALUES(6,1006,'BCA','ComputerScience','2019-02-20','Nehru',1606,'M.M.N.S.S.E.H.S','G.H.S.S','','MCA')
INSERT INTO FutureStarsEducation VALUES(7,1007,'BCA','ComputerScience','2019-02-20','Nehru',1607,'M.M.N.S.S.E.H.S','G.H.S.S','','MCA')
INSERT INTO FutureStarsEducation VALUES(8,1008,'BCA','ComputerScience','2019-02-20','Nehru',1608,'M.M.N.S.S.E.H.S','G.H.S.S','','MCA')
INSERT INTO FutureStarsEducation VALUES(9,1009,'BCA','ComputerScience','2019-02-20','Nehru',1609,'M.M.N.S.S.E.H.S','G.H.S.S','','MCA')
INSERT INTO FutureStarsEducation VALUES(10,1010,'BCA','ComputerScience','2019-02-20','Nehru',1610,'M.M.N.S.S.E.H.S','G.H.S.S','','MCA')

select * from FutureStarsEducation

sp_help FutureStarsEducation

use FutureStars  /* connecting /switching the Db*/

SELECT COUNT(HeightInCms)   /* aggregate funciton*/
FROM FutureStars

SELECT AVG(HeightInCms)
FROM FutureStars               /* aggregate funciton*/
WHERE (FirstName)='Abhijeet';

SELECT AVG(HeightInCms) as abc
FROM FutureStars
WHERE (FirstName) LIKE '%A%';


