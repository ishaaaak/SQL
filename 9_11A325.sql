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