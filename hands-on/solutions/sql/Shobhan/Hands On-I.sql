--hands on-I by SHOBHAN BHAVESH SHARMA
--1)
sp_help 'HumanResource.Employee'
--2)
select * from HumanResources.Employee
--3)
select * from HumanResources.Department
--4)
select LoginID, JobTitle, HireDate from HumanResources.Employee
--5)
EXEC sp_help 'Production.Product'
--6)
select ProductID, Name, StandardCost, 0.5*StandardCost from Production.Product
--7)
EXEC sp_help 'Person.ContactType'