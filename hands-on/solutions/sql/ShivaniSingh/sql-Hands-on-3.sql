use AdventureWorks2019

select* from Person.Person where LEN(MiddleName) > 1

select UPPER(CONCAT(FirstName, ' ' ,MiddleName,' ', LastName)) as Name from Person.Person 

select SalesOrderDetailID,ROUND(LineTotal,2)As LineTotal from Sales.SalesOrderDetail ORDER BY SalesOrderDetailID

SELECT CURRENT_TIMESTAMP;

select * from HumanResources.Employee where DATEDIFF(year, HireDate, CURRENT_TIMESTAMP)>10 ORDER BY HireDate

select* from Sales.SalesOrderHeader where FORMAT(OrderDate,'MM')=02

select ProductID,Name, COALESCE(Color,'No color') AS Color from Production.Product 

select Employee.BusinessEntityID as Emp_ID , FORMAT(BirthDate,'MMMM dd,yyyy')As BirthDate from HumanResources.Employee