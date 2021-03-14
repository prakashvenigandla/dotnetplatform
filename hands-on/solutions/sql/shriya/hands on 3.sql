--hands on 3
--1)
select AdditionalContactInfo from Person.Person where LEN(MiddleName) > 2
--2)
select UPPER(Isnull(FirstName,' ') +' '+ Isnull(MiddleName,' ')+' '+ Isnull(Lastname,' ') )
from Person.Person
--3)
select ROUND(LineTotal, 2)  from Sales.SalesOrderDetail;
--4)
SELECT CURRENT_TIMESTAMP;
--5)
SELECT DATEDIFF(year, StartDate ,EndDate ) from HumanResources.EmployeeDepartmentHistory
AS "Years Difference";
--6)
select *from Sales.SalesOrderHeader where month(OrderDate)= 3
--7)
select ProductID,Name,Color from Production.Product 
Select  ISNULL(Color,'no color') from Production.Product 
--8)
Select CONVERT(varchar,BirthDate,1) as [MM/DD/YY]
From HumanResources.Employee