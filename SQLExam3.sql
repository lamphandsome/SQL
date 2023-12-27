use Example5


Create Table Employee(
EmployeeID int primary key,
Name1 Varchar(100),
Tel char(11),
Email Varchar(30)
)
go


Create Table Project(
ProjectID int primary key,
ProjectName varchar(30),
StartDate Datetime,
EndDate Datetime,
Period int,
Cost money,
)
go

Create table Group1(
GroupID int primary key,
GroupName Varchar(100),
LeaderID int,
ProjectID int
Foreign key (ProjectID) references Project(ProjectID)
)



drop table Group1
go





Create table GroupDetail(
GroupID int,
EmployeeID int,
Status1 char(20),
Primary key(GroupID,EmployeeID),
Foreign key (GroupID) references Group1(GroupID),
Foreign key (EmployeeID) references Employee(EmployeeID)
)

Drop table Employee 
Drop table Project
Drop table Group1
Drop table GroupDetail
go
Select * from Employee
Select *from Project
Select *from Group1
Select * from GroupDetail
