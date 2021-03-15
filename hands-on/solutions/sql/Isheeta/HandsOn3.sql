--hands-on-3
--1)
use AdventureWorks2019
select*
from Person.Person where LEN(MiddleName) > 1 AND MiddleName Not like '%.'
--2)
select UPPER(CONCAT(FirstName, ' ' ,MiddleName,' ', LastName)) as Name 
from Person.Person 
--3)
select SalesOrderDetailID,ROUND(LineTotal,2)As LineTotal 
from Sales.SalesOrderDetail ORDER BY SalesOrderDetailID
--4)
SELECT CURRENT_TIMESTAMP;
--5)
select * 
from HumanResources.Employee where DATEDIFF(year, HireDate, CURRENT_TIMESTAMP)>10 ORDER BY HireDate
--6)
select*
from Sales.SalesOrderHeader where FORMAT(OrderDate,'MM')=02
--7)
select ProductID,Name, COALESCE(Color,'No color') AS Color from Production.Product 
--8)
select Employee.BusinessEntityID as Emp_ID , FORMAT(BirthDate,'MMMM dd,yyyy')As BirthDate 
from HumanResources.Employee

