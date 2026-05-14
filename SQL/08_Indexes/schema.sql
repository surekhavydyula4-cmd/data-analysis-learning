
CREATE TABLE emp (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    email VARCHAR(100),
    city VARCHAR(50),
    joining_date DATE
);

INSERT INTO emp VALUES
(101, 'Sai', 'HR', 55000, 'sai@gmail.com', 'Hyderabad', '2021-05-10'),
(102, 'Rahul', 'IT', 70000, 'rahul@gmail.com', 'Bangalore', '2020-08-15'),
(103, 'Sneha', 'Finance', 65000, 'sneha@gmail.com', 'Chennai', '2019-06-20'),
(104, 'Akhil', 'HR', 50000, 'akhil@gmail.com', 'Mumbai', '2022-01-11'),
(105, 'Keerthi', 'IT', 72000, 'keerthi@gmail.com', 'Hyderabad', '2020-11-25');
