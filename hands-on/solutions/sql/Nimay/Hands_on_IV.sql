--Hands-on-IV
--Que-I
--True
--Que-II
--False
--Que-III
--True
--Query-IV
--select max(LineTotal) as MaxValue, avg(LineTotal) as AvgValue, min(LineTotal) as MinValue from Sales.SalesOrderDetail
--Query-V
--select SalesOrderID,max(LineTotal) as MaxValue, avg(LineTotal) as AvgValue, min(LineTotal) as MinValue from Sales.SalesOrderDetail group by SalesOrderID
--Query-VI
--select Count(BusinessEntityID)as No_of_Emp,JobTitle from HumanResources.Employee group by JobTitle order by JobTitle
--Query-VII
--select * from HumanResources.JobCandidate where BusinessEntityID is not null
--Query-VIII
--select SalesOrderID, UnitPrice from Sales.SalesOrderDetail where UnitPrice>25000
--Query-IX
--select DepartmentID,count(BusinessEntityID)As Total_Employee from HumanResources.EmployeeDepartmentHistory group by DepartmentID
--Query-X
--Pending........
