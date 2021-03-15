--Hands on 3

--1)
select * from Person.Person
where MiddleName like '__%_'

--2)
select upper(Name) as NAME from Person.ContactType

--3)
select round(LineTotal,2) as Rounded_LineTotal from Sales.SalesOrderDetail
select * from Sales.SalesOrderDetail

--4)
select sysdatetime( ) as System_Date_Time

--5) doubt
select *, datediff(year, HireDate, getdate()) from HumanResources.Employee

--6)
select * from Sales.SalesOrderHeader where datename(mm,OrderDate) like 'February'

--7)
select ProductID,Name ,Color from Production.Product update Production.Product set Color ='No Color' where Color is null 

--8) 
select convert(varchar(12),BirthDate ,107) as[dd-mm-yyyy] from HumanResources.Employee