-- SQL Chapter 3 - Aggregations

-- 1. Count total number of employees
SELECT COUNT(*) AS total_employees
FROM employees;


-- 2. Find total salary of all employees
SELECT SUM(salary) AS total_salary
FROM employees;


-- 3. Find average salary of employees
SELECT AVG(salary) AS average_salary
FROM employees;


-- 4. Find maximum salary
SELECT MAX(salary) AS highest_salary
FROM employees;


-- 5. Find minimum salary
SELECT MIN(salary) AS lowest_salary
FROM employees;


-- 6. Count employees in each department
SELECT dept, COUNT(*) AS employee_count
FROM employees
GROUP BY dept;


-- 7. Find total salary by department
SELECT dept, SUM(salary) AS total_salary
FROM employees
GROUP BY dept;


-- 8. Find average salary by department
SELECT dept, AVG(salary) AS average_salary
FROM employees
GROUP BY dept;


-- 9. Show departments having more than 2 employees
SELECT dept, COUNT(*) AS employee_count
FROM employees
GROUP BY dept
HAVING COUNT(*) > 2;


-- 10. Show departments where average salary is greater than 55000
SELECT dept, AVG(salary) AS average_salary
FROM employees
GROUP BY dept
HAVING AVG(salary) > 55000;
