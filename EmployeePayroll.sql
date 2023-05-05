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
 
 ------------- UC9 --------------
 alter table employee_payroll add deduction varchar(150) not null after salary;
 alter table employee_payroll add taxable_pay varchar(150) after deduction;
 alter table employee_payroll add income_tax varchar(150) after taxable_pay;
 alter table employee_payroll add net_pay varchar(150) after income_tax;
  select * from employee_payroll;
 
 ---------------- UC10 -----------------
 insert into employee_payroll (emp_name,phonenumber,address,department, gender,salary,deduction,taxable_pay,income_tax,net_pay,startdate) values ('virat','9640827483'
	,' 6-23 near gogulamma temple','HR','M','30000','2000','500','500','27000','2022-01-12');
 select * from employee_payroll where emp_name ='virat';
 
 ----------------- UC11 ------------
 create table company (company_id int not null,company_name varchar(150),primary key(company_id,company_name));
 describe company;
 insert into company values (1,'nokia'),(2,'apple'),(3,'samsung'),(4,'tata'),(5,'infosys');
 select * from company;