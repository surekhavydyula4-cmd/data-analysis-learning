DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

INSERT INTO employees VALUES
(1,'Ravi','IT',50000,'Hyderabad'),
(2,'Priya','HR',45000,'Chennai'),
(3,'Arjun','Finance',60000,'Bangalore'),
(4,'Sneha','IT',55000,'Hyderabad'),
(5,'Kiran','Sales',40000,'Mumbai'),
(6,'Meena','HR',70000,'Delhi'),
(7,'Vikas','IT',65000,'Hyderabad');
