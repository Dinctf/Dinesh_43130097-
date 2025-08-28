show databases;
create database employee;
use employee;
create table Worker(
	WORKER_ID INT NOT NULL PRIMARY KEY ,
	FIRST_NAME CHAR(25),
	LAST_NAME CHAR(25),
	SALARY INT(15),
	JOINING_DATE DATETIME,
    DEPARTMENT varchar(10)
);
INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
		(002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
		(004, 'Amitabh', 'Singh', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, 'Vivek', 'Bhati', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, '14-06-11 09.00.00', 'Account'),
		(007, 'Satish', 'Kumar', 75000, '14-01-20 09.00.00', 'Account'),
		(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09.00.00', 'Admin');
select *from Worker;

select department,sum(salary) from Worker
group by department
order by department desc;

select sum(salary) from Worker;

select Department,count(department) from Worker
group by Department;

select Department,avg(salary) as avgsal from Worker
group by Department;

select Department,max(salary) as maxsal from Worker
group by Department;

select JOINING_DATE,count(JOINING_DATE) as no_of_candidates from Worker
group by JOINING_DATE;

select FIRST_NAME from Worker
order by FIRST_NAME;

select salary from Worker
order by salary desc;

select * from Worker
order by department asc,salary desc;

select count(*) from Worker
where department not in("HR","Admin");

select department,max(salary) as maximu_salary from Worker 
group by department;
