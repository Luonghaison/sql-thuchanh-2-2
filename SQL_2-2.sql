create database QuanLyBanHang;
use QuanLyBanHang ;

create table customer(
cid int auto_increment primary key,
cname varchar(50),
cage int
);

create table orrder(
oid int auto_increment primary key,
cid int,
foreign key(cid) references customer(cid),
oDate date,
ototalprice int
);

create table orderdetail(
pid int auto_increment primary key,
oid int,
foreign key(oid) references orrder(oid),
odQTY varchar(255)
);

create table product(
pid int,
foreign key(pid) references orrder(pid),
pname varchar(50) not null,
pprice int
);