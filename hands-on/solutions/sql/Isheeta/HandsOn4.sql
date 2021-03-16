--hands-on-4
--1) Group functions works across many rows to produce one result per group. -> TRUE
--2) Group functions include nulls in calculations. -> FALSE
--3) The WHERE clause restricts the rows before inclusion in a group calculation. -> TRUE
--4)
select MAX(LineTotal) as max_linetotal , MIN(LineTotal) as min_linetotal, AVG(LineTotal) as avg_linetotal
from Sales.SalesOrderDetail 
--5)
select SalesOrderID,max(LineTotal) as MaxValue, avg(LineTotal) as AvgValue, min(LineTotal) as MinValue 
from Sales.SalesOrderDetail group by SalesOrderID
--6)
select Count(BusinessEntityID)as No_of_Emp,JobTitle 
from HumanResources.Employee group by JobTitle order by JobTitle
--7) 
select* from HumanResources.EmployeeDepartmentHistory where EndDate is not null
--8)
select SalesOrderID, UnitPrice from Sales.SalesOrderDetail where UnitPrice>25000
--9)

--10)
select COUNT(DepartmentID) as [Departments Exp], BusinessEntityID 
from HumanResources.EmployeeDepartmentHistory group by BusinessEntityID
having COUNT(DepartmentID) > 2