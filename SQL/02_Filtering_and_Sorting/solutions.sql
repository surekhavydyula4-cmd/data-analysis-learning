-- 1. Show employees with salary > 50000
SELECT * 
FROM employees 
WHERE salary>50000;

-- 2. Show employees from IT department
SELECT * 
FROM employees
WHERE dept='IT';

-- 3. Show employees from HR or Finance
SELECT *
FROM employees
WHERE dept IN ('HR','Finance');

-- 4. Show employees whose salary is between 40000 and 60000
SELECT * 
FROM employees
WHERE salary BETWEEN 40000 AND 60000;

-- 5. Show employees whose name starts with 'R'
SELECT * 
FROM employees
WHERE emp_name LIKE 'R%';

-- 6. Show employees whose name ends with 'a'
SELECT *
FROM employees
WHERE emp_name LIKE '%a';

-- 7. Show employees from cities Hyderabad or Delhi
SELECT *
FROM employees
WHERE city IN ('Hyderabad','Delhi');

-- 8. Show employees whose salary is not 45000
SELECT *
FROM employees
WHERE salary <> 45000;

-- 9. Show all employees sorted by salary ascending
SELECT *
FROM employees
ORDER BY salary ASC;

-- 10. Show all employees sorted by name descending
SELECT *
FROM employees
ORDER BY emp_name DESC;
