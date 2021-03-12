--HandsOn-II
use AdventureWorks2019
--1)

--2)
select * from HumanResources.Employee 
where JobTitle='Marketing Assisstant'
--3)
select * from HumanResources.Employee
where HireDate>'01-Jan-2000'
--4)
select * from Production.Product
where ListPrice Between 100 AND 500
--5)
select * from Sales.SalesOrderDetail
where OrderQty='10' OR OrderQty='12' OR OrderQty='15'
--6)
select * from Person.Person
where LastName='Ka%'
--7)

--8)
select * from HumanResources.EmployeeDepartmentHistory
where EndDate is not NULL


