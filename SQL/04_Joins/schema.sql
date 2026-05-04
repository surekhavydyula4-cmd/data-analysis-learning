DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT
);

INSERT INTO departments VALUES
(1,'IT'),
(2,'HR'),
(3,'Finance'),
(4,'Sales');

INSERT INTO employees VALUES
(1,'Ravi',1,50000),
(2,'Priya',2,45000),
(3,'Arjun',3,60000),
(4,'Sneha',1,55000),
(5,'Kiran',NULL,40000);
