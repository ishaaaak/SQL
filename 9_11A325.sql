show databases;
create database a325;
show databases;
use a325;
create table student_info(
roll_no tinyint,
attendance bit,
pocket_money smallint);
show tables; # for showing the tables inside the selected database
/*for showing
the tables inside
the selected database
*/
#describe student_info; # gives metadata or schema i.e. data about data
desc student_info;
insert into student_info values(1,1,1000);
select * from student_info;
insert into student_info values(255,2,32767),
(256,2,32768),
(746376,748374,637485);
select * from student_info;
use a325;
create table product_d(id int, pho_nu bigint, price decimal(5,2));
desc product_d;
use a325;
create table fp_datatype(id float, re real);
desc fp_datatype;
insert into fp_datatype values(9793753726,757952366759, 4657597937927666,84698650629669);
select * from fp_datatype;
use a325;
create table employee_info (id tinyint, salary int, work_hours decimal(2,1));
show tables;
desc employee_info;
insert into employee_info values
(1,20000,2.9),
(2,60000,4.6),
(3,50000,7.8),
(4,30000,3.2);
select * from employee_info;
use a325;
create table dt(dt date, ti time, dt_ti datetime);
show tables;
desc dt;
insert into dt values('2025-04-16','09:48:48','2025-04-16 09:48:48');
select * from dt;
use a325;
create table student_c(sname char(10), svname varchar(20));
insert into student_c values("ABC","DEF");
select * from student_c;
use a325;
create table student_demo(roll int, subject varchar(20), addr varchar(20), marks int); 
desc student_demo;
insert into student_demo values
(1,'Python','Pune',56),
(2,'Java','Mumbai',95),
(3,'HTML','Nasik',85),
(4,'C','Pune',56),
(5,'Python','Nasik',50),
(6,'Django','Andheri',99),
(7,'Javascript','Bangalore',85),
(8,null,'Pune',null);
select * from student_demo;
insert into student_demo(roll,addr) values(9,'Delhi'),(10,'Mumbai');
select * from student_demo;
insert into student_demo values
(11,'Django','Andheri',78),
(12,'Javascript','Bangalore',45),
(13,'Python','Andheri',16),
(14,'Python','Pune',96);
select * from student_demo;
select roll,addr from student_demo;
select * from student_demo where roll=5;
select subject,marks from student_demo where roll=7;
select roll,marks from student_demo where marks<90;
use a325;
select roll, marks from student_demo where marks>=50 and marks<=90;
select roll,marks from student_demo where marks between 50 and 90;
select roll,marks from student_demo where marks<=90 and marks>=50;
select roll,marks from student_demo where marks between 90 and 50;
# between works only in ascending order range

# case
select roll,
case when marks>=75 and marks<=100 then "very good"
when marks >=60 and marks<75 then "good"
when marks>=35 and marks<60 then "ok"
else "fail"
end Result # aliasing
from student_demo;
 
use a325;

select *from student_demo where roll=1 or roll=2;
select *from student_demo where roll in (1,2);

select *from student_demo where roll not in (1,2);
select *from student_demo where roll <> 1 and roll <> 2;

select addr from student_demo;
select distinct addr from student_demo;

select address from student_demo
where address like "%i";
# percentage % is any numbers,characters

select address from student_demo
where address like "_u__";
# _ underscore is for only one character

select address from student_demo
where address like "_u%";

select address from student_demo
where address like "M%";

select address from student_demo
where address like "____i";

select roll,marks from student_demo
order by marks desc limit 3;

select roll,marks from student_demo
where marks is null;

select roll,marks from student_demo
where marks is not null
order by marks limit 1;
# limit to find top most or least

select roll,marks from student_demo
order by marks desc limit 3;
select roll,marks from student_demo
order by marks desc limit 1,2;

# constraints----------------------------------------------
/*
jhhf
hfjg
*/

use a325;
show tables;
create table  c(id int);
show tables;
insert into c values('A');
insert into c values(1);
#---------------------------------------------------
use a325;
create table u1(id int unique, name varchar(30));
show tables;
desc u1;
insert into u1 values(1,'Harry');
select * from u1;
insert into u1 values(1,'Tom');
insert into u1 values(2,'Harry');
select *  from u1;
insert into u1 values(null,'Harry');
select * from u1;
insert into u1 values(null,'Harry');
select * from u1;
insert into u1 values(0,'Harry');
select * from u1;
insert into u1 values(0,'Harry');
select * from u1;
--------
create table n(id int not null, name varchar(30));
desc n;
insert into n values(0,'Harry');
select * from n;
insert into n values(0,'Harry');
select * from n;
insert into n values(0,null);
select * from n;
insert into n values(null,'Harry');
select * from n;
-------
use a325;
create table u_n(id int unique not null,name varchar(20));
desc u_n;
create table p(id int primary key,name varchar(20));
desc p;

create table po(AN int primary key,
  PN varchar(20) unique not null,
  passport int unique not null);
desc po;
drop table po;
create table po(AN int unique not null,
  PN varchar(20) unique not null,
  passport int unique not null);
desc po;
insert into po values(14774987,'N3467833',16376875);
select * from po;
--------
create table a(id int primary key auto_increment,name varchar(20));
desc a;
insert into a values(100,"Harry");
insert into a(name) values ("Garry"),("Tarry"),("Darry"),("Cherry");
select * from a;
----------
create table ch(id int primary key,
  age int,
  name varchar(20),
  check (age>18));
desc ch;
insert into ch values(1,16,"Harry");
select * from ch;
insert into ch values(1,19,"Harry");
select * from ch;
drop table ch;
create table ch(id int primary key,
  age int,
  name varchar(20),
  constraint check_age check (age>18));
drop table ch;
create table ch(id int primary key,
				age int check (age>18),
				name varchar(20));
drop table ch;
create table ch(id int,
				age int,
				name varchar(20),
                check (age>18),
                primary key(id));
show create table ch; 
-------------
create table d(id int,
				name varchar(20),
                city varchar(20) default "Mumbai");
desc d;
insert into d values (1,"Harry","Pune");
select * from d;
insert into d values (1,"Harry",null);
select * from d;
insert into d(id,name) values (1,"Harry");
select * from d;
------------------
create table customers(
						id int primary key,
						name varchar(20));
 
 create table  orders(
				o_id int primary key,
                c_id int,
                constraint fo foreign key(c_id) references customers(id));
desc customers;
desc orders;
#child table insertion
insert into orders values(10,1); #error because it is child table 
insert into customers values(1,"Harry");  #green tick cause inserted first in parent table
insert into orders values(10,1); 
select * from customers;
select * from orders; 
# parent table deletion
delete from customers where id=1; #error because it is parent table. first delete child table
delete from orders where c_id=1;
delete from customers where id=1;
select * from customers;
insert into customers values(2,"Harry");
delete from customers where id=2;