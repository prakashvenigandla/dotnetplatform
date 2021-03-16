--Hands on 4
use AdventureWorks2019
--1)
--true 
--2)
-- false
--3)
--true 
--4)
select MAX(LineTotal) from Sales.SalesOrderDetail
select AVG(LineTotal) from Sales.SalesOrderDetail
select Min(LineTotal) from Sales.SalesOrderDetail
--5)
select MAX(LineTotal) from Sales.SalesOrderID
select AVG(LineTotal) from Sales.SalesOrderID
select Min(LineTotal) from Sales.SalesOrderID
--6)
SELECT JobTitle, COUNT(*)
FROM HumanResources.Employee
GROUP BY JobTitle
--7)
select COUNT(DepartmentID) as count , BusinessEntityID from HumanResources.EmployeeDepartmentHistory group by BusinessEntityID
--8)
select SalesOrderID from Sales.SalesOrderDetail
select TotalDue  from Sales.SalesOrderHeader where TotalDue >= 25000
--9)
--10)
SELECT JobTitle, COUNT(*)
FROM HumanResources.Employee where COUNT(JobTitle) > 2
GROUP BY JobTitle