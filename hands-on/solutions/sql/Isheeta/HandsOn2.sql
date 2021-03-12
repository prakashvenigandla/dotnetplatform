--Hands-on-2
use AdventureWorks2019
select*
from HumanResources.Employee

--1)

--2)
select* 
from HumanResources.Employee where JobTitle = 'Marketing Assistant'
--3)
select*
from HumanResources.Employee where HireDate > '2000-01-01' order by HireDate
--4)
select* 
from Production.Product where ListPrice BETWEEN 100 and 500 
--5)
select*
from Sales.SalesOrderDetail where OrderQty IN ('10' , '12' , '15')
--6)
select*
from Person.Person where LastName LIKE 'Ka%'
--7)

--8)
select*
from HumanResources.EmployeeDepartmentHistory where EndDate is not null
--9)
select*
from Sales.SalesOrderHeader where OrderDate < '2001-08-15' AND TerritoryID = 4 order by OrderDate Desc
--10)
select*
from Sales.SalesPerson where Bonus > 3000 order by SalesQuota Desc