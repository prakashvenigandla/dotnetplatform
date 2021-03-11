--HandsOn-I
use AdventureWorks2019
--1)
sp_help 'HumanResources.Employee'
--2)
select * from HumanResources.Employee
--3)
select * from HumanResources.Department
--4)
select LoginID,JobTitle,HireDate from  HumanResources.Employee
--5)
sp_help 'Production.Product'
--6)
select ProductID,Name,StandardCost,0.5*StandardCost from Production.Product
--7)
sp_help 'Person.ContactType'
