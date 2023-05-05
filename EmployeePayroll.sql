---------- UC1 ---------
show databases;
create database pay_roll;
use pay_roll;

---------- UC2 ----------
create table employee_payroll (emp_id int unsigned not null auto_increment,emp_name varchar(50) not null,salary double not null,startdate date not null,primary key(emp_id));
describe employee_payroll;

----------- UC3 ------------
insert into employee_payroll (emp_name,gender,salary,startdate) values ('ramesh','25000','2022-01-12'),('chandu','30000','2021-12-21'),('vinay','27000','2020-05-1');

------------ UC4 -------------
select * from employee_payroll;

--------------- UC5 ----------
select salary from employee_payroll where emp_name = 'chandu';
select * from employee_payroll where startdate between cast('2021-01-01' as date) and date(now());

------------- UC6 -----------
alter table employee_payroll add gender char(1) after emp_name;
describe employee_payroll;
update employee_payroll set gender = 'M' where emp_id ='1';
update employee_payroll set gender = 'M' where emp_id ='2';
update employee_payroll set gender = 'F' where emp_id ='3';
select * from employee_payroll;

-------------- UC7 -----------
select sum(salary) from employee_payroll where gender ='M' group by gender;
 select avg(salary) from employee_payroll where gender ='M' group by gender;
 select min(salary) from employee_payroll where gender ='M' group by gender;
 select max(salary) from employee_payroll where gender ='M' group by gender;
 
 ------------ UC8 ---------------
 alter table employee_payroll add phonenumber long after emp_name;
 alter table employee_payroll add address varchar(250) default '6-23 near gogulamma temple'after phonenumber;
 alter table employee_payroll add department varchar(150) not null after address;
 select * from employee_payroll;