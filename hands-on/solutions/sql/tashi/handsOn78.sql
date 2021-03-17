--hands-on-VII
--1)
create table Department(DepartmentID smallint Identity(100,10) Primary Key, DepartmentName varchar(50) Unique, GroupName varchar(50) not null, Location varchar(30))
sp_help Department
--2)
create table Employee(EmployeeID int identity(1001,1) primary key, EmployeeName varchar(100) not null, DateOfJoin datetime2, Designation varchar(50), CostToCompany money check(CostToCompany>=50000), DepartmentID smallint, constraint fk_emp_dep foreign key(DepartmentID) references Department(DepartmentID))
sp_help Employee
--4)
alter table Employee add constraint ck_emp_dateof check(DateOfJoin <= GETDATE())
--5)
alter table Department add DepartmentHead int, constraint fk_emp_depthead foreign key(DepartmentHead) references Employee(EmployeeID)
--6)
insert into Department(DepartmentName, GroupName, Location, DepartmentHead ) values('Human Resources', 'Operation', 'New Delhi', null)
insert into Department(DepartmentName, GroupName, Location, DepartmentHead ) values('Administration ', 'Operations', 'Hyderabad ', null)
insert into Department(DepartmentName, GroupName, Location, DepartmentHead ) values('Production ', 'Inward', 'Bengaluru', null)
insert into Department(DepartmentName, GroupName, Location, DepartmentHead ) values('Finance ', 'Operations', 'Chennai ', null)
insert into Department(DepartmentName, GroupName, Location, DepartmentHead ) values('Sales ', 'Outward', 'Mumbai ', null)
insert into Department(DepartmentName, GroupName, Location, DepartmentHead ) values('Purchasing ', 'Inward', null, null)
insert into Department(DepartmentName, GroupName, Location, DepartmentHead ) values('Public Relations ', 'Operations', null, null)

select * from Department
delete from Department

insert into Employee(EmployeeName, DateOfJoin, Designation, CostToCompany, DepartmentID) values('Manoj', '29-Jan-93', 'CEO', 15000000, 170)
insert into Employee(EmployeeName, DateOfJoin, Designation, CostToCompany, DepartmentID) values('Suren', '05-Nov-90', 'Sr.Manager', 10000000, 220)
insert into Employee(EmployeeName, DateOfJoin, Designation, CostToCompany, DepartmentID) values('Bhaskar', '09-Jul-98', 'Sr.Manager', 12000000, 170)
insert into Employee(EmployeeName, DateOfJoin, Designation, CostToCompany, DepartmentID) values('Arijit', null, 'Manager', 5000000, 170)
insert into Employee(EmployeeName, DateOfJoin, Designation, CostToCompany, DepartmentID) values('Ravindra', null, 'Executive', 5000000, 170)
insert into Employee(EmployeeName, DateOfJoin, Designation, CostToCompany, DepartmentID) values('Kishor', null, 'Executive', 500000, 170)
insert into Employee(EmployeeName, DateOfJoin, Designation, CostToCompany, DepartmentID) values('Mathew', null, 'Executive', 500000, 170)
insert into Employee(EmployeeName, DateOfJoin, Designation, CostToCompany, DepartmentID) values('Rachna', '31-Oct-09', 'Executive', null, 170)
insert into Employee(EmployeeName, DateOfJoin, Designation, CostToCompany, DepartmentID) values('Nilesh', '14-Sep-09', null, null, 170)
insert into Employee(EmployeeName, DateOfJoin, Designation, CostToCompany, DepartmentID) values('Hari', null, 'Manager', 800000, 170)
insert into Employee(EmployeeName, DateOfJoin, Designation, CostToCompany, DepartmentID) values('Ananta', '01-Aug-08', 'Executive', null, 170)

dbcc checkident ('Employee')
go

update Employee set DateOfJoin='01-Feb-05' where EmployeeName='Arijit'
update Employee set DateOfJoin='16-Jun-06' where EmployeeName='Mathew'
update Employee set DateOfJoin='04-Aug-07' where EmployeeName='Hari'
update Employee set DateOfJoin='22-Mar-08' where EmployeeName='Kishor'
update Employee set DateOfJoin='01-Jan-10' where EmployeeName='Ravindra'

select * from Employee

update Department set DepartmentHead=(select EmployeeID from Employee where EmployeeName='Suren') where DepartmentName='Human Resources'
update Department set DepartmentHead=(select EmployeeID from Employee where EmployeeName='Manoj') where DepartmentName='Administration '
update Department set DepartmentHead=(select EmployeeID from Employee where EmployeeName='Mathew') where DepartmentName='Sales '
update Department set DepartmentHead=(select EmployeeID from Employee where EmployeeName='Bhaskar') where DepartmentName='Public Relations '



select * from Department

delete from Employee where EmployeeName='Ananta'