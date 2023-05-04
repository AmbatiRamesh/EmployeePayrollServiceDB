---------- UC1 ---------
show databases;
create database pay_roll;
use pay_roll;

---------- UC2 ----------
create table employee_payroll (emp_id int unsigned not null auto_increment,emp_name varchar(50) not null,salary double not null,startdate date not null,primary key(emp_id));
describe employee_payroll;

----------- UC3 ------------
insert into employee_payroll (emp_name,salary,startdate) values ('ramesh','25000','2022-01-12'),('chandu','30000','2021-12-21'),('vinay','27000','2020-05-1');

------------ UC4 -------------
select * from employee_payroll;

--------------- UC5 ----------
select salary from employee_payroll where emp_name = 'chandu';
select * from employee_payroll where startdate between cast('2021-01-01' as date) and date(now());