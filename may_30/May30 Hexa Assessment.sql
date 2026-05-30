-- EX1
-- CREATE DATABASE training_sql_db;
-- USE training_sql_db;
-- CREATE TABLE books
-- (
--     book_id INT PRIMARY KEY,
--     book_title VARCHAR(100),
--     category VARCHAR(50),
--     author VARCHAR(50),
--     price DECIMAL(10,2),
--     stock INT,
--     published_year INT
-- );
-- INSERT INTO books VALUES
-- (1, 'Python Basics', 'Programming', 'Ravi Kumar', 550, 30, 2021),
-- (2, 'Advanced SQL', 'Database', 'Priya Sharma', 750, 15, 2020),
-- (3, 'Data Engineering Guide', 'Data', 'Amit Verma', 1200, 10, 2023),
-- (4, 'Machine Learning Start', 'AI', 'Neha Reddy', 950, 8, 2022),
-- (5, 'Excel for Business', 'Business', 'Kiran Rao', 400, 50, 2019),
-- (6, 'Power BI Reports', 'Data', 'Sneha Patel', 850, 12, 2021),
-- (7, 'Java Fundamentals', 'Programming', 'Arjun Mehta', 600, 20, 2018),
-- (8, 'Cloud Basics', 'Cloud', 'Rahul Nair', 700, 18, 2022),
-- (9, 'SQL Interview Prep', 'Database', 'Farhan Ali', 500, 25, 2024),
-- (10, 'AI for Beginners', 'AI', 'Meera Singh', 650, 5, 2023);
-- SELECT * FROM books;

-- EX2
-- SELECT book_title, category, price
-- FROM books;

-- EX3
-- SELECT DISTINCT category
-- FROM books;

-- EX4
-- SELECT *
-- FROM books
-- WHERE category = 'Programming';

-- EX5
-- SELECT *
-- FROM books
-- WHERE stock < 15;

-- EX6
-- SELECT *
-- FROM books
-- WHERE stock < 15;

-- EX7
-- SELECT *
-- FROM books
-- WHERE category IN ('Programming','Database','AI');

-- EX8
-- SELECT *
-- FROM books
-- WHERE price BETWEEN 500 AND 900;

-- EX9
-- SELECT *
-- FROM books
-- WHERE book_title LIKE '%SQL%';

-- EX10
-- SELECT *
-- FROM books
-- WHERE book_title LIKE 'Data%';

-- EX11
-- SELECT *
-- FROM books
-- ORDER BY price DESC;

-- EX12
-- SELECT *
-- FROM books
-- ORDER BY category ASC, price DESC;
-- Aggregate Functions

-- EX13
-- SELECT COUNT(*) AS total_books
-- FROM books;

-- EX14
-- SELECT MAX(price) AS highest_price
-- FROM books;

-- EX15
-- SELECT MIN(price) AS lowest_price
-- FROM books;

-- EX16
-- SELECT AVG(price) AS average_price
-- FROM books;

-- EX17
-- SELECT SUM(stock) AS total_stock
-- FROM books;

-- GROUP BY & HAVING
-- EX18
-- SELECT category, COUNT(*) AS number_of_books
-- FROM books
-- GROUP BY category;

-- EX19
-- SELECT category, AVG(price) AS average_price
-- FROM books
-- GROUP BY category;

-- EX20
-- SELECT category, SUM(stock) AS total_stock
-- FROM books
-- GROUP BY category;

-- EX21
-- SELECT category, COUNT(*) AS number_of_books
-- FROM books
-- GROUP BY category
-- HAVING COUNT(*) > 1;

-- EX22
-- SELECT category, AVG(price) AS average_price
-- FROM books
-- GROUP BY category
-- HAVING AVG(price) > 700;

-- NEW TABLE
-- CREATE TABLE departments (
--     department_id INT PRIMARY KEY,
--     department_name VARCHAR(50),
--     location VARCHAR(50)
-- );
-- CREATE TABLE employees (
--     employee_id INT PRIMARY KEY,
--     employee_name VARCHAR(50),
--     department_id INT,
--     salary DECIMAL(10,2),
--     city VARCHAR(50),
--     manager_id INT
-- );
-- INSERT INTO departments VALUES
-- (10, 'IT', 'Hyderabad'),
-- (20, 'HR', 'Bangalore'),
-- (30, 'Finance', 'Mumbai'),
-- (40, 'Sales', 'Delhi'),
-- (50, 'Marketing', NULL);
-- INSERT INTO employees VALUES
-- (101, 'Rahul Sharma', 10, 75000, 'Hyderabad', 201),
-- (102, 'Priya Reddy', 10, 85000, 'Bangalore', 201),
-- (103, 'Amit Kumar', 20, 55000, NULL, 202),
-- (104, 'Sneha Patel', 30, 65000, 'Mumbai', 203),
-- (105, 'Arjun Verma', NULL, 60000, 'Chennai', 204),
-- (106, 'Neha Singh', 60, 50000, 'Delhi', NULL),
-- (107, 'Farhan Ali', 40, NULL, 'Hyderabad', 205),
-- (108, 'Meera Nair', 10, 90000, 'Pune', 201);
-- SELECT * FROM departments;
-- SELECT * FROM employees;

-- EX23 JOINS & NULL Handling
-- SELECT e.employee_name,
--        e.salary,
--        d.department_name,
--        d.location
-- FROM employees e
-- INNER JOIN departments d
-- ON e.department_id = d.department_id-- ;

-- EX24
-- SELECT e.employee_name,
--        d.department_name,
--        d.location
-- FROM employees e
-- LEFT JOIN departments d
-- ON e.department_id = d.department_id;

-- EX25
-- SELECT e.employee_name
-- FROM employees e
-- LEFT JOIN departments d
-- ON e.department_id = d.department_id
-- WHERE d.department_id IS NULL;

-- EX26
-- SELECT d.department_name,
--        e.employee_name
-- FROM employees e
-- RIGHT JOIN departments d
-- ON e.department_id = d.department_id;

-- EX27
-- SELECT *
-- FROM employees
-- WHERE salary IS NULL;

-- EX28
-- SELECT *
-- FROM employees
-- WHERE salary IS NULL;

-- Ex29
-- SELECT *
-- FROM employees
-- WHERE city IS NULL;

-- EX30
-- SELECT *
-- FROM departments
-- WHERE location IS NULL;

-- EX31
-- SELECT d.department_name,
--        COUNT(e.employee_id) AS employee_count
-- FROM departments d
-- LEFT JOIN employees e
-- ON d.department_id = e.department_id
-- GROUP BY d.department_name;

-- EX32
-- SELECT d.department_name,
--        AVG(e.salary) AS avg_salary
-- FROM departments d
-- LEFT JOIN employees e
-- ON d.department_id = e.department_id
-- GROUP BY d.department_name;

-- EX33
-- SELECT d.department_name,
--        COUNT(e.employee_id) AS employee_count
-- FROM departments d
-- LEFT JOIN employees e
-- ON d.department_id = e.department_id
-- GROUP BY d.department_name
-- HAVING COUNT(e.employee_id) > 2;

-- EX34
-- SELECT d.department_name,
--        MAX(e.salary) AS highest_salary
-- FROM departments d
-- LEFT JOIN employees e
-- ON d.department_id = e.department_id
-- GROUP BY d.department_name;
-- NEW TABLE CREATION  
-- CREATE TABLE customers_new (
--     customer_id INT PRIMARY KEY,
--     customer_name VARCHAR(50),
--     city VARCHAR(50),
--     membership_type VARCHAR(30)
-- );
-- CREATE TABLE payments (
--     payment_id INT PRIMARY KEY,
--     customer_id INT,
--     amount DECIMAL(10,2),
--     payment_mode VARCHAR(30),
--     payment_status VARCHAR(30)
-- );
-- Subqueries

-- EX35
-- SELECT *
-- FROM customers_new
-- WHERE customer_id IN
-- (
--     SELECT customer_id
--     FROM payments
-- );

-- EX36
-- SELECT *
-- FROM customers_new
-- WHERE customer_id NOT IN
-- (
--     SELECT customer_id
--     FROM payments
--     WHERE customer_id IS NOT NULL
-- );

-- EX37
-- SELECT *
-- FROM payments
-- WHERE amount >
-- (
--     SELECT AVG(amount)
--     FROM payments
-- );

-- EX38
-- SELECT *
-- FROM customers_new
-- WHERE customer_id =
-- (
--     SELECT customer_id
--     FROM payments
--     WHERE amount =
--     (
--         SELECT MAX(amount)
--         FROM payments
--     )
-- );

-- EX39
-- SELECT *
-- FROM customers_new
-- WHERE membership_type = 'Gold'
-- AND customer_id IN
-- (
--     SELECT customer_id
--     FROM payments
-- );

-- EX40
-- SELECT customer_id,
--        SUM(amount) AS total_payment
-- FROM payments
-- GROUP BY customer_id
-- HAVING SUM(amount) > 10000;

-- EX41
-- SELECT *
-- FROM payments p
-- WHERE NOT EXISTS
-- (
--     SELECT 1
--     FROM customers_new c
--     WHERE c.customer_id = p.customer_id
-- );

-- EX42
-- SELECT *
-- FROM customers_new c
-- WHERE EXISTS
-- (
--     SELECT 1
--     FROM payments p
--     WHERE p.customer_id = c.customer_id
-- );

-- EX43
-- SELECT *
-- FROM customers_new c
-- WHERE NOT EXISTS
-- (
--     SELECT 1
--     FROM payments p
--     WHERE p.customer_id = c.customer_id
-- );

-- EX44
-- SELECT *
-- FROM customers_new
-- WHERE customer_id IN
-- (
--     SELECT customer_id
--     FROM payments
--     WHERE amount >
--     ALL
--     (
--         SELECT amount
--         FROM payments
--         WHERE customer_id = 2
--     )
-- );