--Hands-On-3
-- db used Adventure 2019
-- 1)
select* from Person.Person where LEN(MiddleName) > 1
--2)
Select Upper (FirstName)as Name,Upper(MiddleName) as Name,Upper(LastName) as Name from Person.Person
-- or also
Select Upper(Concat(FirstName,MiddleName,LastName)) as Name from person.person
--3)
Select Round(LineTotal,2)As Line_Total from Sales.SalesOrderDetail ORDER BY SalesOrderDetailID
--4)
Select CURRENT_TIMESTAMP
--5)
Select * from HumanResources.Employee where Datediff(year, HireDate, CURRENT_TIMESTAMP)>10  ;
--6)
Select * from Sales.SalesOrderHeader where Format(OrderDate,'MM')=2
--7)
Select ProductID,Name, coalesce(Color,'No color') AS Color from Production.Product 
--8)
Select Employee.BusinessEntityID as Emp_ID , Format(BirthDate,'MMMM dd,yyyy')As BirthDate from HumanResources.Employee