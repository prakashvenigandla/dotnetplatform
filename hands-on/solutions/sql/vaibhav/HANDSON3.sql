
--I
select* 
from  Person.Person where LEN(MiddleName)>1
--II
select UPPER(CONCAT(FirstName,' ',MiddleName,' ',LastName)) 
As Name from Person.Person
--III
select SalesOrderDetailID,ROUND(LineTotal,2)AsLINETOTAL
from Sales.SalesOrderDetail 
ORDER BY SalesOrderDetailID
--IV
SELECT CURRENT_TIMESTAMP;
--V
select *
from HumanResources.Employee
where DATEDIFF(year, HireDate, CURRENT_TIMESTAMP)>10 
ORDER BY HireDate
--VI
select *
from Sales.SalesOrderHeader
where FORMAT(OrderDate,'MM')=02
--VII
select ProductID,Name, COALESCE(Color,'No color')AS Color
from Production.Product 
--VIII
select FORMAT(BirthDate,'MMMM dd,yyyy')As BirthDate 
from HumanResources.Employee

select GETDATE()