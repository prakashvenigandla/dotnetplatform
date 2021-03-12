--Hands-on-II-
--Query-I
select BusinessEntityID from HumanResources.EmployeeDepartmentHistory where DepartmentID=16
--Query-II
select * from HumanResources.Employee where JobTitle ='Marketing Assistant'
--Query-III
select * from HumanResources.Employee where HireDate>'2000-01-01' Order by HireDate asc
--query-IV
select * from Production.ProductListPriceHistory where ListPrice Between 100 AND 500 Order by ProductID asc
--query-V
select * from Sales.SalesOrderDetail where OrderQty IN (10,12,15) order by SalesOrderDetailID asc
--query-VI
select * from Person.Person where LastName like 'Ka%' order by BusinessEntityID
--query-VII
select * from HumanResources.Employee where JobTitle='Buyer'
--query-VIII
select * from HumanResources.EmployeeDepartmentHistory where BusinessEntityID is NOT NULL
