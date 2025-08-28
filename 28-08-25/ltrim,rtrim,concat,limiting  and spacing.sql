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
		(001, ' Monika ', ' Arora ', 100000, '14-02-20 09.00.00', 'HR'),
		(002, ' Niharika ', ' Verma ', 80000, '14-06-11 09.00.00', 'Admin'),
		(003, ' Vishal ', ' Singhal ', 300000, '14-02-20 09.00.00', 'HR'),
		(004, ' Amitabh ', ' Singh ', 500000, '14-02-20 09.00.00', 'Admin'),
		(005, ' Vivek ', ' Bhati ', 500000, '14-06-11 09.00.00', 'Admin'),
		(006, ' Vipul', ' Diwan ', 200000, '14-06-11 09.00.00', 'Account'),
		(007, ' Satish ', ' Kumar ', 75000, '14-01-20 09.00.00', 'Account'),
		(008, ' Geetika', ' Chauhan ', 90000, '14-04-11 09.00.00', 'Admin');
select *from Worker;

-- Option 1: Using LIMIT with OFFSET
SELECT * 
FROM Worker
ORDER BY Salary DESC
LIMIT 1 OFFSET 1;


SELECT SALARY 
FROM Worker
WHERE DEPARTMENT = 'HR'
ORDER BY SALARY DESC
LIMIT 2;


SELECT SALARY 
FROM Worker
WHERE DEPARTMENT = 'HR'
ORDER BY SALARY DESC
LIMIT 2;

select upper(FIRST_NAME) from Worker;

select lower(LAST_NAME) from Worker;

select concat(upper(FIRST_NAME)," ",upper(LAST_NAME)) as fullname from Worker;

select * from Worker where upper(FIRST_NAME)="VIPUL";

select concat(lower(FIRST_NAME),"     ",lower(LAST_NAME)) as fullname from Worker;

select concat("     ",upper(FIRST_NAME)," ",upper(LAST_NAME),"     ") as fullname from Worker;

select ltrim(FIRST_NAME) as name
from Worker;

select rtrim(FIRST_NAME) as name
from Worker;

select concat(first_name,"   ",last_name) as concatination from Worker; 

select trim(concat("   ",first_name,"   ",last_name,"  ")) as trimexample from Worker; 
