CREATE TABLE FutureStars(ID int NOT NULL PRIMARY KEY,
Name varchar(10),DOB date);										  /*first table*/
									/*this is niside the new_file datatype*/


CREATE TABLE FutureStarsEducations(ID int FOREIGN KEY REFERENCES FutureStars(ID),		/*second table*/
FutureStarsId int NOT NULL PRIMARY KEY,
DegreeName varchar(10),CollegeName varchar(20));


insert into FutureStars values(01,'Abhijeet','1997/02/25')
insert into FutureStars values(02, 'Ajay','1996/06/25')
select * from FutureStars

INSERT INTO FutureStarsEducations VALUES(1,1001,'BCA','Nehru')
INSERT INTO FutureStarsEducations VALUES(2,1002,'BCA','Nehru')

 select * from FutureStarsEducations

SELECT FutureStars.ID, FutureStars.Name, FutureStarsEducations.CollegeName
FROM FutureStars
JOIN FutureStarsEducations
ON FutureStars.ID = FutureStarsEducations.ID;

SELECT FutureStars.ID, FutureStars.Name, FutureStarsEducations.CollegeName
FROM FutureStars
INNER JOIN FutureStarsEducations
ON FutureStars.ID = FutureStarsEducations.ID;

SELECT FutureStars.ID, FutureStars.Name, FutureStarsEducations.CollegeName
FROM FutureStars
LEFT JOIN FutureStarsEducations
ON FutureStars.ID = FutureStarsEducations.ID;

SELECT FutureStars.ID, FutureStars.Name, FutureStarsEducations.CollegeName
FROM FutureStars
RIGHT JOIN FutureStarsEducations
ON FutureStars.ID = FutureStarsEducations.ID;