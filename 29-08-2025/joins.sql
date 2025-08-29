create database organisation;
use organisation;
CREATE TABLE Department (
    DEPT_ID INT PRIMARY KEY,
    DEPT_NAME VARCHAR(30)
);

INSERT INTO Department VALUES
(1, 'HR'),
(2, 'Admin'),
(3, 'IT'),
(4, 'Finance');

CREATE TABLE Employee (
    EMP_ID INT PRIMARY KEY,
    NAME VARCHAR(30),
    SALARY INT,
    DEPT_ID INT,
    FOREIGN KEY (DEPT_ID) REFERENCES Department(DEPT_ID)
);

INSERT INTO Employee VALUES
(101, 'Karthick', 60000, 1),
(102, 'Loki', 75000, 2),
(103, 'Adib', 90000, 3),
(104, 'Srihari', 55000, 3),
(105, 'Tharun', 80000, 4),
(106, 'Gopi', 65000, 2);

CREATE TABLE Project (
    PROJECT_ID INT PRIMARY KEY,
    PROJECT_NAME VARCHAR(50),
    EMP_ID INT,
    FOREIGN KEY (EMP_ID) REFERENCES Employee(EMP_ID)
);

INSERT INTO Project VALUES
(201, 'Payroll System', 101),
(202, 'Recruitment Portal', 102),
(203, 'AI Chatbot', 103),
(204, 'Finance Tracker', 105),
(205, 'Inventory System', 106),
(206, 'Network Security', 104);

SELECT e.NAME, d.DEPT_NAME
FROM Employee e
INNER JOIN Department d
ON e.DEPT_ID = d.DEPT_ID;

SELECT p.PROJECT_NAME, e.NAME
FROM Project p
INNER JOIN Employee e
ON p.EMP_ID = e.EMP_ID;

SELECT d.DEPT_NAME, e.NAME, p.PROJECT_NAME
FROM Department d
INNER JOIN Employee e
ON d.DEPT_ID = e.DEPT_ID
INNER JOIN Project p
ON e.EMP_ID = p.EMP_ID;

SELECT d.DEPT_NAME, e.NAME, p.PROJECT_NAME
FROM Department d
INNER JOIN Employee e
ON d.DEPT_ID = e.DEPT_ID
INNER JOIN Project p
ON p.EMP_ID = e.EMP_ID
WHERE d.DEPT_NAME = 'IT';

SELECT e.emp_name, d.dept_name
FROM Employee e
RIGHT JOIN Department d
  ON e.dept_id = d.dept_id;

SELECT e.emp_name, d.dept_name
FROM Employee e
LEFT JOIN Department d
  ON e.dept_id = d.dept_id;

SELECT e.emp_name, 
       p.proj_name, 
       s.shift_name
FROM Employee e
CROSS JOIN Project p
CROSS JOIN Shift s;

SELECT * 
FROM Employee 
CROSS JOIN Project 
ORDER BY emp_name;
