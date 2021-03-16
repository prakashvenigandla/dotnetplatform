use HR
--1)Done
create table Department
(DepartmentID smallint identity(100,10) Primary key,
DepartmentName varchar(50) unique,
GroupName varchar(50) not null,
Location varchar(30))

--2)
create table Employee
(EmployeeID int identity(1001,1) Primary key,
EmployeeName varchar(100) NOT NULL,
DateOfJoin datetime2,
Designation varchar(50),
CostToCompany money CHECK(CostToCompany>=5000),
DepartmentID smallint constraint fk_emp_dept foreign key references Department(DepartmentID))
Select * from Employee

--3)
sp_help Employee
sp_help Department

--4)
alter table Employee add constraint ck_emp_dateofjoin check(DateOfJoin <= getDate()) 

--5)
alter table Department add  DepartmentHead int, 
constraint fk_emp_dept_head foreign key(DepartmentHead) references Employee(EmployeeID)

--6)
create table SalesOrder
(OrderID int identity(1,1) Primary key,
OrderDate datetime2 default getdate(),
DueDate datetime2,
ShippingDate datetime2)
sp_help SalesOrder

--7)
alter table SalesOrder add OrderValue money
select * from SalesOrder

--8)
alter table SalesOrder drop column ShippingDate

--9)
sp_help SalesOrder
select * from SalesOrder

--10)
drop table SalesOrder
Sp_help SalesOrder
