--hands on 8
select * from Department
select * from Employee

--1)
insert into Department(DepartmentId,DepartmentName,GroupName,Location) values(100,'Human Resources','Operation','New Delhi')
insert into Department(DepartmentId,DepartmentName,GroupName,Location) values(110,'Administration','Operation','Hyderabad')
insert into Department(DepartmentId,DepartmentName,GroupName,Location) values(120,'Production','Inward','Bangaluru')
insert into Department(DepartmentId,DepartmentName,GroupName,Location) values(130,'Finance','Operation','Chennai')
insert into Department(DepartmentId,DepartmentName,GroupName,Location) values(140,'Sales','Outward','Mumbai')
insert into Department(DepartmentId,DepartmentName,GroupName,Location) values(150,'Purchasing','Inwards','Mumbai')
insert into Department(DepartmentId,DepartmentName,GroupName,Location) values(160,'Public Relation','Operation','Delhi')

--2)
insert into Employee values
(1001,'Manoj','1993-01-29','CEO',1500000,110),
(1002,'Suren','1990-11-05','Sr.Manager',1000000,160),
(1003,'Bhaskar','1998-07-09','Sr.Manager',1200000,140),
(1004,'Arijit',null,'Manager',500000,120),
(1005,'Ravindra',null,'Executive',500000,110),
(1006,'Kishor',null,'Manager',600000,150),
(1007,'Mathew',null,'Manager',800000,140),
(1008,'Rachna','2009-10-31','Executive',null,120),
(1009,'Nilesh','2009-09-14',null,null,160),
(1010,'Hari',null,'Manager',800000,140),
(1011,'Ananta','2008-08-01',null,null,120)

--3)
update Employee set DateOfJoin='2005-02-01' where  EmployeeName='Arijit'
update Employee set DateOfJoin='2006-06-16' where  EmployeeName='Mathew'
update Employee set DateOfJoin='2007-08-04' where  EmployeeName='Hari'
update Employee set DateOfJoin='2008-03-22' where  EmployeeName='Kishor'
update Employee set DateOfJoin='2010-01-01' where  EmployeeName='Ravindra'

--4)
update Department set DepartmentHead='Suren'
where DepartmentName='Human Resources'
update Department set DepartmentHead='Manoj'
where DepartmentName='Administration'
update Department set DepartmentHead='Mathew'
where DepartmentName='Sales'
update Department set DepartmentHead='Bhaskar'
where DepartmentName='Public Relation'

--5)
delete from  Employee
where EmployeeName='Ananta'

