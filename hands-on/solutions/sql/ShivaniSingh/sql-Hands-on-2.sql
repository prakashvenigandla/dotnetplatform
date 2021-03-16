select * from HumanResources.Employee

select * from HumanResources.Employee where JobTitle='Marketing Assistant'

select * from HumanResources.Employee where HireDate>'2000-01-01'

select * from Production.Product where ListPrice >='100' and ListPrice<='500'

select * from Sales.SalesOrderDetail where OrderQty='10' or OrderQty='12' or OrderQty='15'

select * from Person.Person where LastName like 'Ka%' order by LastName

select * from HumanResources.Employee where JobTitle = 'Buyer' or JobTitle='Stocker'

select * from HumanResources.EmployeeDepartmentHistory where EndDate is not NULL

select * from Sales.SalesOrderHeader where OrderDate<'2001-08-15' and TerritoryID='4' order by OrderDate Desc

select top 3 * from Sales.SalesPerson where Bonus >'3000' order by SalesQuota