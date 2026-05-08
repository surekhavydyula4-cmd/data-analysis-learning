-- SQL Chapter 6 - Window Functions
-- Solutions


-- 1. Assign row numbers to all employees based on salary
SELECT *,
       ROW_NUMBER() OVER(ORDER BY salary DESC) AS row_num
FROM employees;


-- 2. Rank employees based on salary
SELECT *,
       RANK() OVER(ORDER BY salary DESC) AS rnk
FROM employees;


-- 3. Find dense rank of employees by salary
SELECT *,
       DENSE_RANK() OVER(ORDER BY salary DESC) AS dense_rnk
FROM employees;


-- 4. Assign row numbers within each department
SELECT *,
       ROW_NUMBER() OVER(PARTITION BY dept ORDER BY salary DESC) AS row_num
FROM employees;


-- 5. Find highest paid employee in each department
SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER(PARTITION BY dept ORDER BY salary DESC) AS rn
    FROM employees
) t
WHERE rn = 1;


-- 6. Find second highest salary in the company using DENSE_RANK()
SELECT *
FROM (
    SELECT *,
           DENSE_RANK() OVER(ORDER BY salary DESC) AS drnk
    FROM employees
) t
WHERE drnk = 2;


-- 7. Find previous employee salary using LAG()
SELECT *,
       LAG(salary) OVER(ORDER BY salary) AS prev_salary
FROM employees;


-- 8. Find next employee salary using LEAD()
SELECT *,
       LEAD(salary) OVER(ORDER BY salary) AS next_salary
FROM employees;


-- 9. Calculate running total of salaries
SELECT *,
       SUM(salary) OVER(ORDER BY emp_id) AS running_total
FROM employees;


-- 10. Find employees whose salary is greater than previous employee salary
SELECT *
FROM (
    SELECT *,
           LAG(salary) OVER(ORDER BY salary) AS prev_salary
    FROM employees
) t
WHERE salary > prev_salary;
