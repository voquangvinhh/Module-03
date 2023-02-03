create database module_03;
use module_03;
use sakila;
create database Student_management;
use Student_management;
select * from student;
create table teacher(id int, 
name varchar(45) not null, 
age int, 
address varchar(45)
);
select * from teacher;
select id from teacher;
select name from teacher;
insert into teacher(id, name, age, address) value(1, "Quang", 45, "HCM");
select id from teacher;
select * from teacher;
insert into teacher(id) value(2);
select id from teacher;
insert into teacher(name, age, address) value("Long", 40, "HCM"); 
select * from teacher;
update teacher set name = "Long" , age = 40, address = "HCM" where id = 2;