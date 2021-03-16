
--I
--True
--II
--False
--III
--True
--IV
select max(LineTotal) as MaxValue, avg(LineTotal) as AvgValue, min(LineTotal) as MinValue 
from Sales.SalesOrderDetail
--V
select SalesOrderID,max(LineTotal) as MaxValue, avg(LineTotal) as AvgValue, min(LineTotal) as MinValue
from Sales.SalesOrderDetail group by SalesOrderID
--VI
select JobTitle ,COUNT(*) numofemployees 
from HumanResources.Employee 
group by JobTitle
--VII
select count(DepartmentID) as count,BusinessEntityID
from HumanResources.EmployeeDepartmentHistory 
where BusinessEntityID is not null group by BusinessEntityID
--VIII
select SalesOrderID, UnitPrice
from Sales.SalesOrderDetail 
where UnitPrice>25000
--IX
select DepartmentID,count(BusinessEntityID)As Total_Employee
from HumanResources.EmployeeDepartmentHistory group by DepartmentID
--X
select count(DepartmentID) as [Department Exp],BusinessEntityID
from HumanResources.EmployeeDepartmentHistory 
group by BusinessEntityID
having count(DepartmentID)>2
