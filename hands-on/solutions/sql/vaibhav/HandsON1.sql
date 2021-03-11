--handa-onI-
--1)
sp_help 'HumanResources.Employee'
--2)
select*
from
 HumanResources.Employee
 --3)
 select*
 from HumanResources.Department
 --4)
 select NationalIDNumber,JobTitle,HireDate
 from HumanResources.Employee
 --5)
 sp_help 'Production.Product'
--6)
select*
from Production.Product
--7)
select ProductID,Name,StandardCost,StandardCost*0.5
from Production.Product
--8)
sp_help 'Person.ContactType'
