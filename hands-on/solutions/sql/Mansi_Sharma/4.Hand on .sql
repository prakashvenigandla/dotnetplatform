--Hands on 4
--1) True

--2) False

--3)True

--4)
select SalesOrderID ,MAX(LineTotal) as Highest_LineTotal,MIN(LineTotal) as Lowest_LineTotal,avg(LineTotal) as Avg_LineTotal 
from Sales.SalesOrderDetail where SalesOrderID ='43659' group by SalesOrderID

--5)
select * from Sales.SalesOrderDetail
select SalesOrderID  ,MAX(LineTotal) as Highest_LineTotal,MIN(LineTotal) as Lowest_LineTotal,avg(LineTotal) as Avg_LineTotal 
from Sales.SalesOrderDetail group by SalesOrderID

--6)
select * from HumanResources.Employee
select * from HumanResources.EmployeeDepartmentHistory
select * from Sales.SalesOrderDetail
select * from Sales.SalesOrderHeader

select JobTitle ,count(*) from HumanResources.Employee group by JobTitle

--7) doubt

--8)
select SalesOrderID ,SubTotal as Order_value from Sales.SalesOrderHeader where SubTotal>'25000'

--9) doubt

--10)doubt


