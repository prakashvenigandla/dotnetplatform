--hands on SQl
--1)
sp_help 'HumanResources.Employee'

--2)
select * 
from HumanResources.Employee

--3)
select *
from HumanResources.Department

--4)
select 
LoginID,jobTitle,HireDate 
from HumanResources.Employee

--5)
select * 
from Production.Product

--6)
select 
ProductId,Name,StandardCost*0.5 as StandardCost
from Production.Product

--7)
sp_help 'Person.ContactType'

