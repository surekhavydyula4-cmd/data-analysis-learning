
CREATE TABLE employees(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT
);

CREATE TABLE employee_log(
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    action_msg VARCHAR(100)
);

INSERT INTO employees VALUES
(101,'Sai',50000),
(102,'Rahul',60000),
(103,'Sneha',70000);
