--hands on 1 sql--
--Q1
Use AdventureWorks2019
EXEC sp_help 'HumanResources.Employee';
go
--Q2
select *
from HumanResources.Employee
--Q3
select *
from HumanResources.Department
--Q4
select BusinessEntityID,JobTitle,HireDate
from HumanResources.Employee
--Q5
Use AdventureWorks2019
EXEC sp_help 'Production.Product';
go
--Q6
select *
from Production.Product
select ProductID,Name,StandardCost
from Production.Product
--Q7
Use AdventureWorks2019
EXEC sp_help 'Person.ContactType';
go
