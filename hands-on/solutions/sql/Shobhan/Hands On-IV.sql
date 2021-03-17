--Hands-on IV
--1) 
-- True

--2) 
-- False

--3)
-- True

--4)
select SalesOrderID, max(LineTotal) as MaximumLineTotal, min(LineTotal) as MinimumLineTotal, avg(LineTotal) as AverageLineTotal 
from Sales.SalesOrderDetail where SalesOrderID ='43659' group by SalesOrderID

--5)
select SalesOrderID, max(LineTotal) as MaximumLineTotal,MIN(LineTotal) as MinimumLineTotal, avg(LineTotal) as AverageLineTotal 
from Sales.SalesOrderDetail group by SalesOrderID

--6)
select JobTitle ,count(*) from HumanResources.Employee group by JobTitle

--7)
select count(DepartmentID) as count, BusinessEntityID from HumanResources.EmployeeDepartmentHistory 
where EndDate is not null group by BusinessEntityId

--8)
select SalesOrderID ,SubTotal as Order_value from Sales.SalesOrderHeader where SubTotal>'25000'

--9) 
select DepartmentID,count(BusinessEntityID)As Total_Employee from HumanResources.EmployeeDepartmentHistory group by DepartmentID

--10)
select count(DepartmentID) as [Dept_Experience] ,BusinessEntityID from HumanResources.EmployeeDepartmentHistory having count(DepartmentID)>2 group by BusinessEntityID


