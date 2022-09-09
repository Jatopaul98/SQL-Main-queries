
CREATE TABLE FutureStarsEducation(Id int,FutureStarsId int,DegreeName nvarchar(10));
insert into FutureStarsEducation values(2,12,N'പോലെ')
select * from FutureStarsEducation

CREATE TABLE ##FutureStarsEducation(Id int,FutureStarsId int,DegreeName nvarchar(10));
insert into ##FutureStarsEducation values(2,12,N'പോലെ')
select * from ##FutureStarsEducation

CREATE TABLE #FutureStarsEducation(Id int,FutureStarsId int,DegreeName nvarchar(10));
insert into #FutureStarsEducation values(2,12,N'പോലെ')
select * from #FutureStarsEducation

drop table ##FutureStarsEducation
drop table #FutureStarsEducation  /* using the temp tables local and global table*/