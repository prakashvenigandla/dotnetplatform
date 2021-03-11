--hands_on I
--1
sp_help 'HumanResources.Employee'
--2
select*
from HumanResources.Employee
--3
select *
from HumanResources.Department
--4
EXEC sp_help 'Production.Product'
--5
select ProductID,Name,StandardCost,0.5*StandardCost
from Production.Product
--6
select NationalIDNumber,JobTitle,HireDate
from HumanResources.Employee
--7
EXEC sp_help 'Person.ContactType'
