use AdventureWorks2019

sp_help 'HumanResources.Employee' 

select *from HumanResources.Employee

select * from HumanResources.Department

select LoginID, JobTitle , HireDate from HumanResources.Employee

EXEC sp_help 'Production.Product'

select ProductID, Name, StandardCost, StandardCost*0.5 from Production.Product

EXEC sp_help 'Person.ContactType'