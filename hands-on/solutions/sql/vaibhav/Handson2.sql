--2
select*
from HumanResources.Employee
where JobTitle='Marketing Assistant'
--3
select*
from HumanResources.Employee 
where HireDate>='2000-01-01'
--4
select*
from Production.Product 
where ListPrice>100 and ListPrice<500
--5
select*
from Sales.SalesOrderDetail
where OrderQty=10 or OrderQty=12 or OrderQty=15
--6
select*
from Person.Person
where LastName like 'ka%'
--8
select*
from HumanResources.EmployeeDepartmentHistory
where EndDate is not null
--9
select*
from Sales.SalesOrderHeader 
where OrderDate<'2001-08-15' and TerritoryID=4 
order by OrderDate desc
--10
select top 3 with ties *
from Sales.SalesPerson where Bonus > 3000 order by SalesQuota desc