show databases;
create database A325;
show databases;
use A325;
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
(746567,748742,635466);
select * from student_info;
use A325;
create table product_d(
id int, pho_nu bigint, price decimal(5,2));
show tables;
desc product_d;
use A325;
create table fp_datatype(
id float, re real);
show tables;
desc fp_datatype;
insert into fp_datatype values(9793753726.757952366759, 4657597937927666.84698650629669);
select * from fp_datatype;
use A325;
create table employee_info
(id tinyint, salary int, work_hours decimal(2,1));
show tables;
desc employee_info;
insert into employee_info values
(1,20000,2.9),
(2,60000,4.6),
(3,50000,7.8),
(4,30000,3.2);
select * from employee_info;
create table employee_inf
(id tinyint, salary int, work_hours decimal(2,1));
insert into employee_inf values
(1,20000,2.9),
(2,60000,4.6),
(3,50000,7.8),
(4,30000,3.2);
select * from employee_inf;
use A325;
create table dt(dt date, ti time, dt_ti datetime);
insert into dt values('2025-04-16','09:48:48',"2025-04-16 09:48:48");
# yyyy-mm-dd
select * from dt;
use A325;
create table student_c(
sname char(10), svname varchar(10));
desc student_c;
insert into student_c values
("ABC","DEF");
select * from student_c;
use A325;
create table student_demo(
roll int, subject varchar(20), addr varchar(20), marks int);
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