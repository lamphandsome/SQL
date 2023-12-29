Create database FinalExam
use FinalExam

Create Table Department(
DepartID int Primary Key,
DepartName Varchar(50) not null,
Description1 Varchar(100) not null
)
Go

Insert into Department Values(1,'Hanh Chinh','Quan Ly Hanh Chinh')
Insert into Department Values(2,'Nhan Su','Quan Ly Nhan Su')
Insert into Department Values(3,'Maketing','Quan Ly Quang Cao')

Create Table Employee(
EmpCode Char(6) Primary Key,
FirstName Varchar(30) not null,
LastName Varchar(30) not null,
Birthday Smalldatetime not null,
Gender Bit Default 1,
Address1 Varchar(100),
DepartID int,
Salary Money,
Foreign key (DepartID) References Department(DepartID)
)
Insert into Employee Values(11,'Lam','Pham','2004-2-21',1,'Address1',1,10000)
Insert into Employee Values(12,'Linh','Hoang','2004-3-21',0,'Address1',2,20000)
Insert into Employee Values(13,'Nga','Pham','2004-4-21',0,'Address1',3,30000)

Go
Select * from Department
Select * from Employee
-----4-----
Update Employee
Set Salary = Salary * 1.1;
Select *from Employee
-----5-----
Alter Table Employee
Add Constraint Salary Check(Salary > 0);