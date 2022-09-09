CREATE TABLE FutureStars(ID int NOT NULL PRIMARY KEY,
FirstName char(10),MiddleName varchar(10),LastName nvarchar(10),
DOB date,IsMarried bit,HeightInCms int);

CREATE TABLE FutureStarsEducation(Id int,FutureStarsId int,DegreeName varchar(10),
DegreeBranch varchar(10),DateOfCompletion date,CollegeName varchar(20));

ALTER TABLE FutureStarsEducation			/*alter the table by creating the these col*/ 
ADD SSLC int,PU int,Eng int,Masters int ;

select * from Future
select * from FutureStarsEducation

drop database FutureStar

sp_help rename FutureStars to FutureStar
sp_rename 'FutureStars', 'Future'
sp_helplanguage;
sp_help

