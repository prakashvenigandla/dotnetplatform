--hands-on-IV
--4)
select max(LineTotal) max , min(LineTotal) min, avg(LineTotal) avg from Sales.SalesOrderDetail
--5)
select SalesOrderID,  max(LineTotal) max , min(LineTotal) min, avg(LineTotal) avg from Sales.SalesOrderDetail group by SalesOrderID
--6)
select COUNT(*) as Count , JobTitle from HumanResources.Employee group by JobTitle
--7)
select COUNT(DepartmentID) as count, BusinessEntityID from HumanResources.EmployeeDepartmentHistory  where EndDate is not null group by BusinessEntityID
--8)
Select SalesOrderID, LineTotal from Sales.SalesOrderDetail where LineTotal>25000
--9)

--10)
select COUNT(DepartmentID) as [Departments Experienced], BusinessEntityID from HumanResources.EmployeeDepartmentHistory group by BusinessEntityID having count(DepartmentID)>2
