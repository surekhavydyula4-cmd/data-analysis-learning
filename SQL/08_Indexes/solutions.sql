-- SQL Chapter 8 - Indexes 
-- Solutions


-- 1. Create index on employee name
CREATE INDEX idx_emp_name
ON emp(emp_name);


-- 2. Create index on salary
CREATE INDEX idx_salary
ON emp(salary);


-- 3. Composite index on department and salary
CREATE INDEX idx_dept_salary
ON emp(department, salary);


-- 4. Unique index on email
CREATE UNIQUE INDEX idx_email
ON emp(email);


-- 5. Query using indexed column
SELECT *
FROM emp
WHERE emp_name = 'Sai';


-- 6. Salary condition query
SELECT *
FROM emp
WHERE salary > 50000;


-- 7. Drop index
DROP INDEX idx_salary
ON emp;


-- 8. Index on joining date
CREATE INDEX idx_joining_date
ON emp(joining_date);


-- 9. Composite index on city and department
CREATE INDEX idx_city_department
ON emp(city, department);


-- 10. Drop composite index
DROP INDEX idx_city_department
ON emp;
