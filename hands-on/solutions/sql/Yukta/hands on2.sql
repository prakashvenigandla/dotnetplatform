--hands on 2
use AdventureWorks2019
--1
select * from HumanResources.Department where DepartmentID='16'
--2
select * from HumanResources.Employee where JobTitle='Marketing Analyst'
--3
select * from HumanResources.Employee where HireDate>'2000-01-01'
--4
select * from Production.Product where ListPrice>='100' and ListPrice<='500'
--5
select * from Sales.SalesOrderDetail where OrderQty='10' or OrderQty='12' or OrderQty='15'
--6
select * from Person.Person where LastName like 'Ka%' order by LastName
--7
select * from HumanResources.Employee where JobTitle='Buyer-Stocker'
--8
select * from HumanResources.EmployeeDepartmentHistory
--9
select * from Sales.SalesOrderHeader where OrderDate<'2001-08-15' and TerritoryID=4 order by OrderDate desc
--10
select top 3 with ties * from Sales.SalesPerson where Bonus>3000 order by SalesQuota desc
select *from HumanResources.Employee