
CREATE TABLE employees(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

INSERT INTO employees VALUES
(101,'Sai','HR',55000,'Hyderabad'),
(102,'Rahul','IT',70000,'Bangalore'),
(103,'Sneha','Finance',65000,'Chennai'),
(104,'Akhil','HR',50000,'Mumbai'),
(105,'Keerthi','IT',72000,'Hyderabad');
