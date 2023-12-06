IF EXISTS (SELECT * FROM sys.databases WHERE Name LIKE 'Example5')
DROP DATABASE Example5
GO
CREATE DATABASE Example5
GO
USE Example5
GO
--DDL: create, alter, drop
--DML: insert, update, delete
--DATATYPE IN SQL
--Tao bang lop hoc
CREATE TABLE LopHoc(
MaLopHoc INT PRIMARY KEY IDENTITY,
TenLopHoc VARCHAR(10)
)
GO
SELECT * from LopHoc
GO
INSERT INTO LopHoc(TenLopHoc) VALUES ('T2308')
SELECT * FROM LopHoc
UPDATE LopHoc SET TenLopHoc = 'T2208M'
WHERE MaLopHoc = 1002
DELETE FROM LopHoc WHERE MaLopHoc = 1002
--SanPham(masp, tensp, gia, loai)
--tao bang sinh vien co khoa ngoai la cot MaLopHoc, not voi bang LopHoc
--composite primary
DROP TABLE SinhVien
CREATE TABLE SinhVien(
MaSV int PRIMARY KEY,
TENSV nvarchar(250),
ClassCode int,
CONSTRAINT fk FOREIGN KEY (ClassCode) REFERENCES LopHoc(MaLopHoc)
)
GO
INSERT INTO SinhVien(MaSV, TenSV, ClassCode) VALUE (1, 'Minh', 5);
INSERT INTO SinhVien(MaSV, TenSV, ClassCode) VALUE (3 'Hoa', 1004);
INSERT INTO SinhVien(MaSV, TenSV, ClassCode) VALUE (14'Minh', 1007),(16, 'linh', 1006);
SELECT *FROM SinhVien
SELECT *FROM LopHoc
GO