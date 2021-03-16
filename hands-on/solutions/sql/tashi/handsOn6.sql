--hands-on-VI
--1)
select * from HumanResources.Employee where HireDate>(select HireDate from HumanResources.Employee where BusinessEntityID=284)
--2)
select * from HumanResources.Employee where JobTitle = (select JobTitle from HumanResources.Employee where BusinessEntityID=102) and BusinessEntityID!=102
--3)
select * from Sales.SalesOrderDetail where OrderQty>(select avg(OrderQty) from Sales.SalesOrderDetail)
--4)
select p.FirstName, p.LastName, d.DepartmentID from Person.Person p inner join HumanResources.EmployeeDepartmentHistory d 
on p.BusinessEntityID=d.BusinessEntityID 
where d.DepartmentID=14 and d.EndDate is null
--5)

--6)
select * from Sales.SalesOrderDetail e where 7=
(select count(LineTotal) from Sales.SalesOrderDetail where Sales.SalesOrderDetail.LineTotal > e.LineTotal)

--7)

--8)
select * from Sales.SalesOrderHeader where CONVERT(date, OrderDate) between '2006-07-01' and '2006-07-07'
--9)
select * from Sales.SalesOrderDetail where OrderQty >ANY (select OrderQty from Sales.SalesOrderDetail where ProductID = 767)
--10)
select * from Production.Product where StandardCost < (select max(StandardCost) from Production.Product where Name like 'Mountain Bike%') and StandardCost>0