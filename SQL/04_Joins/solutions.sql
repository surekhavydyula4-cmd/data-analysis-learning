-- SQL Chapter 4 - Joins
-- Solutions

-- 1. Show employee names with their department names
SELECT e.emp_name, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;


-- 2. Show all employees and their departments (even if no department)
SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;


-- 3. Show all departments and their employees
SELECT e.emp_name, d.dept_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id;


-- 4. Show employees who do not belong to any department
SELECT e.emp_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_id IS NULL;


-- 5. Show departments that have no employees
SELECT d.dept_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
WHERE e.emp_id IS NULL;


-- 6. Show employee name and salary along with department name
SELECT e.emp_name, e.salary, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;


-- 7. Show total employees in each department
SELECT d.dept_id, d.dept_name, COUNT(e.emp_id) AS employee_count
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name;


-- 8. Show average salary by department
SELECT d.dept_id, d.dept_name, AVG(e.salary) AS avg_salary
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_id, d.dept_name;


-- 9. Show employees earning more than 50000 with department name
SELECT e.emp_name, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id
WHERE e.salary > 50000;


-- 10. Show highest salary in each department
SELECT d.dept_name, MAX(e.salary) AS highest_salary
FROM departments d
JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;
