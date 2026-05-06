-- SQL Chapter 5 - Subqueries
-- Solutions


-- 1. Find employees who earn more than the average salary of the company
SELECT * 
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);


-- 2. Find employees whose salary is greater than the salary of employee 'Ravi'
SELECT * 
FROM employees
WHERE salary > ALL (
    SELECT salary 
    FROM employees 
    WHERE emp_name = 'Ravi'
);


-- 3. Find employees who work in departments where the average salary is greater than 50000
SELECT * 
FROM employees
WHERE dept IN (
    SELECT dept 
    FROM employees 
    GROUP BY dept 
    HAVING AVG(salary) > 50000
);


-- 4. Find employees whose salary is greater than ALL employees in HR department
SELECT * 
FROM employees
WHERE salary > ALL (
    SELECT salary 
    FROM employees 
    WHERE dept = 'HR'
);


-- 5. Find employees whose salary is greater than ANY employee in Finance department
SELECT * 
FROM employees
WHERE salary > ANY (
    SELECT salary 
    FROM employees 
    WHERE dept = 'Finance'
);


-- 6. Find employees who do NOT work in the same department as 'Ravi'
SELECT * 
FROM employees
WHERE dept NOT IN (
    SELECT dept 
    FROM employees 
    WHERE emp_name = 'Ravi'
);


-- 7. Find employees whose salary is above the average salary of their own department
SELECT * 
FROM employees e1
WHERE e1.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e1.dept = e2.dept
);


-- 8. Find employees who have the same salary as at least one other employee
SELECT * 
FROM employees e1
WHERE EXISTS (
    SELECT 1
    FROM employees e2
    WHERE e1.salary = e2.salary
      AND e1.emp_id <> e2.emp_id
);


-- 9. Find employees whose salary is the second highest in the company
SELECT * 
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
    WHERE salary < (
        SELECT MAX(salary) FROM employees
    )
);


-- 10. Find employees who earn more than the minimum salary in their department
SELECT * 
FROM employees e1
WHERE e1.salary > (
    SELECT MIN(e2.salary)
    FROM employees e2
    WHERE e1.dept = e2.dept
);
