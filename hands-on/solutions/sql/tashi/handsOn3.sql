--hands-on-III
--1)
select * from Person.Person where len(MiddleName) >2 and MiddleName not like '%.%'
--2)
select UPPER(isnull(Title, '') + ' '+ isnull(FirstName, ' ') +' '+ isnull(MiddleName, ' ') + ' '+ isnull(LastName, ' ') ) as FullName from Person.Person
--3)
select SalesOrderID, ROUND(LineTotal, 2) as LineTotal from Sales.SalesOrderDetail
--4)
select SYSDATETIME();
--5)
select BusinessEntityID, LoginID, JobTitle, Datediff(year, HireDate, GETDATE()) as EXP from HumanResources.Employee  where  Datediff(year, HireDate, GETDATE())>10
--6)
select * from Sales.SalesOrderHeader where Month(OrderDate) = 02
--7)
select ProductID, Name, isnull(Color, 'No colour') as Colour from Production.Product
--8)
Select BusinessEntityID,  CONVERT(VARCHAR(12), BirthDate , 107) AS BirthDate from HumanResources.Employee

