-- SQL Chapter 7 
-- Solutions


-- 1. Employees with salary > 50000
WITH high_salary AS (
    SELECT *
    FROM employees
    WHERE salary > 50000
)

SELECT *
FROM high_salary;


-- 2. Highest salary using CTE
WITH max_sal AS (
    SELECT MAX(salary) AS highest_salary
    FROM employees
)

SELECT *
FROM max_sal;


-- 3. Average salary department-wise
WITH dept_avg AS (
    SELECT dept,
           AVG(salary) AS avg_salary
    FROM employees
    GROUP BY dept
)

SELECT *
FROM dept_avg;


-- 4. Salary category using CASE WHEN
SELECT *,
       CASE
           WHEN salary > 60000 THEN 'High'
           WHEN salary BETWEEN 40000 AND 60000 THEN 'Medium'
           ELSE 'Low'
       END AS salary_category
FROM employees;


-- 5. Employees earning more than department average
WITH dept_avg AS (
    SELECT dept,
           AVG(salary) AS avg_salary
    FROM employees
    GROUP BY dept
)

SELECT e.*
FROM employees e
JOIN dept_avg d
ON e.dept = d.dept
WHERE e.salary > d.avg_salary;


-- 6. Departments having more than 2 employees
WITH more_emp AS (
    SELECT dept
    FROM employees
    GROUP BY dept
    HAVING COUNT(*) > 2
)

SELECT *
FROM more_emp;


-- 7. Employees in departments where someone earns > 60000
SELECT *
FROM employees e1
WHERE EXISTS (
    SELECT 1
    FROM employees e2
    WHERE e1.dept = e2.dept
      AND e2.salary > 60000
);


-- 8. Employees in departments where nobody earns > 60000
SELECT *
FROM employees e1
WHERE NOT EXISTS (
    SELECT 1
    FROM employees e2
    WHERE e1.dept = e2.dept
      AND e2.salary > 60000
);


-- 9. Multiple CTEs and JOIN
WITH dept_avg AS (
    SELECT dept,
           AVG(salary) AS avg_salary
    FROM employees
    GROUP BY dept
),
high_salary AS (
    SELECT *
    FROM employees
    WHERE salary > 50000
)

SELECT h.emp_name,
       h.salary,
       h.dept,
       d.avg_salary
FROM high_salary h
JOIN dept_avg d
ON h.dept = d.dept;


-- 10. Second highest salary using CTE
WITH first_max_salary AS (
    SELECT MAX(salary) AS max_sal
    FROM employees
)

SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (
    SELECT max_sal
    FROM first_max_salary
);
