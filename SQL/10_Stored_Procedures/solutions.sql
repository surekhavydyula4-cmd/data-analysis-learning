-- SQL Chapter 10 - Stored Procedures 
-- Solutions

-- 1. Create procedure
CREATE PROCEDURE show_emp()
SELECT *
FROM employees;

-- 2. Call procedure
CALL show_emp();

-- 3. Employees by department
CREATE PROCEDURE dept_emp(IN d VARCHAR(30))
SELECT *
FROM employees
WHERE dept=d;

-- 4. Salary parameter
CREATE PROCEDURE sal_emp(IN s INT)
SELECT *
FROM employees
WHERE salary>s;

-- 5. Using IN parameter
CALL dept_emp('IT');

-- 6. OUT parameter
CREATE PROCEDURE emp_count(OUT total INT)
SELECT COUNT(*) INTO total
FROM employees;

-- 7. INOUT parameter
CREATE PROCEDURE increase_sal(INOUT s INT)
SET s=s+5000;

-- 8. Call count procedure
CALL emp_count(@total);
SELECT @total;

-- 9. Drop procedure
DROP PROCEDURE show_emp;

-- 10. High salary employees
CREATE PROCEDURE high_salary()
SELECT *
FROM employees
WHERE salary>60000;
