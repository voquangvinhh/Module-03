create database QuanLyDiemThi;
use QuanLyDiemThi;
create table HocSinh(
MaHS varchar(20) primary key,
TenHs varchar(50),
NgaySinh datetime,
Lop varchar(20),
GT varchar(20)
);
create table Monhoc(
MaMH varchar(20) primary key,
TenMH varchar(50)
);
create table BangDiem(
MaHS varchar(20),
MaMH varchar(29),
DiemThi int,
NgayKT datetime,
primary key (MaHS, MaMH),
foreign key(MaHS) references HocSinh(MaHS),
foreign key (MaHS) references Monhoc(MaMH)
);
create table GiaoVien(
MaGV varchar(20) primary key,
TenGV varchar(20),
SDT varchar(10)
);
alter table Monhoc ADD MaGV varchar(20);
alter table Monhoc ADD constraint FK_MaGV foreign key(MaGv) references Giaovien(MaGV);