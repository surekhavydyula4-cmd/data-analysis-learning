USE practice;

DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept VARCHAR(50),
    salary INT
);

INSERT INTO employees VALUES
(1,'Ravi','IT',50000),
(2,'Priya','HR',45000),
(3,'Arjun','Finance',60000),
(4,'Sneha','IT',55000),
(5,'Kiran','Sales',40000);

-- 1. Show all employee records
SELECT * FROM employees;

-- 2. Show only employee names
SELECT emp_name FROM employees;

-- 3. Show unique department names
SELECT DISTINCT dept FROM employees;

-- 4. Show employee names with salary
SELECT emp_name, salary FROM employees;

-- 5. Rename salary column as employee_salary (alias)
SELECT salary AS employee_salary FROM employees;

-- 6. Show first 3 rows
SELECT * FROM employees LIMIT 3;

-- 7. Show employees from IT department
SELECT * FROM employees WHERE dept = 'IT';

-- 8. Show employees with salary > 50000
SELECT * FROM employees WHERE salary > 50000;

-- 9. Show employee names in ascending order
SELECT emp_name FROM employees ORDER BY emp_name ASC;

-- 10. Show all data sorted by salary descending
SELECT * FROM employees ORDER BY salary DESC;
