--hands-on-II
--1)

--2)
select * from HumanResources.Employee where JobTitle='Marketing Assistant'
--3)
select * from HumanResources.Employee where HireDate>'2000-01-01' order by HireDate
--4)
select * from Production.Product where ListPrice between 100 and 500
--5)
select * from Sales.SalesOrderDetail where OrderQty in (10,12,15)
--6)
select * from Person.Person where LastName like 'Ka%'
--7)

--8)
select * from HumanResources.EmployeeDepartmentHistory
--9)
select * from Sales.SalesOrderHeader where OrderDate<'2001-08-15' and TerritoryID = 4 order by OrderDate desc
--10)
select top 3 with ties * from Sales.SalesPerson where Bonus > 3000 order by SalesQuota desc