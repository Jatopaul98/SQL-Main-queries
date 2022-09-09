create view india as
select FirstName				/*creatinng a views using FutureStars from FutureStar Db*/
from FutureStars
where LastName='Paul';

select * from india				/*returning the output using select query*/ 

drop view [Brazil Customers]			/*droping  a  view*/


alter  view india as
select FirstName,LastName				/*altering a views using FutureStars from FutureStar Db*/
from FutureStars
where HeightInCms>169


sp_rename 'Student' ,'Student1'				/*changing the name of the table using the store procedure*/

SELECT LastName
Into Student				/*creating a table using vew*/
from india

select * from Student

