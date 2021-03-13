--Hands-on-III
--Query-I
select * from Person.Person WHERE LEN(MiddleName)>1 
--Query-II
select UPPER(CONCAT(FirstName,' ',MiddleName,' ',LastName)) As Name from Person.Person
--Query-III
select SalesOrderDetailID,ROUND(LineTotal,2)AsLINETOTAL from Sales.SalesOrderDetail ORDER BY SalesOrderDetailID
--Query-IV
SELECT CURRENT_TIMESTAMP;
--Query-V
select * from HumanResources.Employee where DATEDIFF(year, HireDate, CURRENT_TIMESTAMP)>10 ORDER BY HireDate
--Query-VI
select * from Sales.SalesOrderHeader where FORMAT(OrderDate,'MM')=02
--Query-VII
select ProductID,Name, COALESCE(Color,'No color') AS Color from Production.Product 
--Query-VIII
select * ,FORMAT(BirthDate,'MMMM dd,yyyy')As BirthDate --CONVERT(datetime,BirthDate,107)As BirthDate 
from HumanResources.Employee
