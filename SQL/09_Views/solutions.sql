-- SQL Chapter 9 - Views
-- Solutions

-- 1. Create a view showing employee names and salary
CREATE VIEW emp_salary_view AS
SELECT emp_name, salary
FROM employees;

-- 2. Display all data from the view
SELECT *
FROM emp_salary_view;

-- 3. Create a view for employees with salary > 60000
CREATE VIEW high_salary_view AS
SELECT *
FROM employees
WHERE salary > 60000;

-- 4. Create a view for IT department employees
CREATE VIEW it_emp_view AS
SELECT *
FROM employees
WHERE dept='IT';

-- 5. Replace an existing view
CREATE OR REPLACE VIEW emp_salary_view AS
SELECT emp_id, emp_name, salary
FROM employees;

-- 6. Update salary using a view
UPDATE it_emp_view
SET salary = salary + 2000
WHERE emp_id = 102;

-- 7. Create a view with selected columns only
CREATE VIEW emp_basic_view AS
SELECT emp_id, emp_name
FROM employees;

-- 8. Create a view using multiple conditions
CREATE VIEW senior_it_view AS
SELECT *
FROM employees
WHERE dept='IT'
AND salary > 65000;

-- 9. Drop a view
DROP VIEW emp_basic_view;

-- 10. Create a view for employees from Hyderabad
CREATE VIEW hyd_emp_view AS
SELECT *
FROM employees
WHERE city='Hyderabad';
