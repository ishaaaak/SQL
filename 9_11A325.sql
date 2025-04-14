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