--lay ra du lieu cua bang contact co contactID>= 00 va contactID<=200
use AdventureWorks2022
Select * from Person.Contact where ContactID >= 100 and ContactID <=200
--lay ra du lieu cua bang contact co contactID trong khoang [100,200]
Select *from Person.Contact where ContactID between 100 and 200
--lay ra nhung contact co lastname ket thuc boi ky tu e
Select *from Person.Contact where LastName Like '%e'
--lay ra nhung contact co lastname bat dau boi ky tu R hoac A ket thuc boi ky tu e
Select * from Person.Contact
Where LastName Like '[RA]%e'
--lay ra nhung contact co LastName co 4 ky tu bat dau boi ky tu R hoac A ket thuc boi Ky tu e
Select *from Person.Contact
Where LastName Like '[RA]__e'
--su dung inner join
Select Person.Contact *
From Person.Comtact INNER JOIN HumanResources.Employee ON
Person.Contact.contactID=HumanResources.Employee.ContactID
Select Title, Count(*) [title number]
from person.contact (*) [title number]
From person.comtact
Group by All Title
Having TItle Like 'Mr%'
go



use Example5
Drop table PhongBan
go
Create table PhongBan(
MaPB Varchar(7) Primary key,
TenPB NVARCHAR(50),
)
insert into PhongBan values ('1','phongban1')
insert into PhongBan values ('2','phongban2')
insert into PhongBan values ('3','phongban3')
insert into PhongBan values ('4','phongban4')
insert into PhongBan values ('5','phongban5')
go
Drop table NhanVien

Create Table NhanVien(
MaNV varchar(7) Primary key,
TenNV Nvarchar(50),
NgaySinh Datetime,
SoCMND char(9),
GioiTinh char(1),
DiaChi NVaRchar(100),
NgayVaoLam Datetime,
MaPB varchar(7),
Constraint fkPBNV foreign key (MaPB) References PhongBan(MaPB)
)
insert into NhanVien values (11,'lampham','2004/02/21',123456789,'M','Hanoi','2023-12-31',1)
insert into NhanVien values (12,'thylinh','2004/03/20',987654321,'F','Hanoi','2023-12-31',2)
insert into NhanVien values (13,'thanhtam','2005/12/9',135798642,'F','Hanoi','2023-12-31',3)
insert into NhanVien values (14,'minhnguyet','2004/3/31',246897531,'F','Hanoi','2023-12-31',4)
insert into NhanVien values (15,'huyenanh','2005/05/06',843918018,'F','Hanoi','2023-12-31',5)

go
Drop table LuongDA
Create table LuongDA(
MaDA varchar(8),
MaNV varchar(7),
NgayNhan Datetime,
Sotien money,
Primary key (MaDA,MaNV),
Constraint fkMaNV foreign key (MaNV) references NhanVien(MaNV),
);

insert into LuongDA values(1,11,'2022-12-31',10000),
(1,12,'2022-12-31',10000),
(2,13,'2022-12-31',20000),
(3,14,'2022-12-31',30000),
(4,15,'2022-12-31',40000)
--2
select * from PhongBan
select *from NhanVien
select * from LuongDA
--3
select *from NhanVien
Where GioiTinh like 'F'
--5
SELECT MaNV, SUM(SoTien) AS LuongNhanVienFROM LuongDAGROUP BY MaNV;
--6
select *from NhanVien
Where MaPB ='1'
--7
select NhanVien

