use AdventureWorks2019
--hands-on-1
--1)
EXEC sp_help 'HumanResources.Employee'
--2)
select*
from HumanResources.Employee
--3)
select* 
from HumanResources.Department
--4)
select BusinessEntityID, JobTitle, HireDate from HumanResources.Employee
--5)
EXEC sp_help 'Production.Product'
select*
from Production.Product
--6)
select ProductID, Name, StandardCost, 0.5* StandardCost from Production.Product
--7)
EXEC sp_help 'Person.ContactType'

