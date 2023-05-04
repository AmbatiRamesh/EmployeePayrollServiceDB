---------- UC1 ---------
show databases;
create database pay_roll;
use pay_roll;

---------- UC2 ----------
create table employee_payroll (emp_id int unsigned not null auto_increment,emp_name varchar(50) not null,salary double not null,startdate date not null,primary key(emp_id));
describe employee_payroll;