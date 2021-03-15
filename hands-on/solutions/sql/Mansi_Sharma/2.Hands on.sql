--Hands on 2
--1) doubt
select * from HumanResources.Employee
where JobTitle ='Manager'

--2)
select * from HumanResources.Employee
where JobTitle='Marketing Assistant'

--3)
select * from HumanResources.Employee
where HireDate>'2000-01-01'

--4)
select * from Production.Product
where ListPrice between 100 and 500

--5)
select * from Sales.SalesOrderDetail
where OrderQty in(10,12,15)

--6)
select * from Person.Person
where LastName like 'Ka%'

--7) doubt
select * from HumanResources.Employee
where jobTitle!= 'Manager'

--8)
select * from HumanResources.EmployeeDepartmentHistory

--9) doubt
select * from Sales.SalesOrderHeader where OrderDate<'2001-08-15' order by OrderDate desc
(select *from Sales.SalesTerritory
where TerritoryId = 4)
select * from sales.SalesOrderHeader

--10)
select top 3 with ties * from Sales.SalesPerson where Bonus>3000 order by SalesQuota desc
select * from Sales.SalesPerson


