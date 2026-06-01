-- CREATE DATABASE retail_capstone_db;
-- USE retail_capstone_db;

-- CREATE TABLE customers
-- (
-- customer_id INT PRIMARY KEY,
-- customer_name VARCHAR (100),
-- city VARCHAR(50),
-- state VARCHAR(50),
-- gender VARCHAR(10),
-- membership_type VARCHAR(30)
-- );

-- CREATE TABLE products
-- (
-- product_id INT PRIMARY KEY,
-- product_name VARCHAR(100),
-- category VARCHAR(50),
-- price DECIMAL (10,2)
-- );

-- CREATE TABLE orders
-- (
-- order_id INT PRIMARY KEY,
-- customer_id INT,
-- order_date DATE,
-- order_status VARCHAR(30)
-- );

-- CREATE TABLE order_items
-- (
-- item_id INT PRIMARY KEY,
-- order_id INT,
-- product_id INT,
-- quantity INT
-- );

-- CREATE TABLE payments
-- (
-- paymeny_id INT PRIMARY KEY,
-- order_id INT,
-- payment_mode VARCHAR(30),
-- payment_statu VARCHAR(30),
-- amount DECIMAL (20,2)
-- );

-- CREATE TABLE deliveries
-- (
-- delivery_id INT PRIMARY KEY,
-- order_id INT,
-- delivery_partner VARCHAR(50),
-- delivery_status VARCHAR(30),
-- delivery_city VARCHAR(50)
-- );

-- SHOW TABLES;
-- INSERT INTO customers VALUES
-- (1,'Ramesh Gupta','Hyderabad','Telangana','Male','Gold'),
-- (2,'Priya Sharma','Bangalore','Karnataka','Female','Silver'),
-- (3,'Amit Kumar','Mumbai','Maharashtra','Male','Gold'),
-- (4,'Sneha Patel','Chennai','Tamil Nadu','Female','Bronze'),
-- (5,'Arjun Verma','Delhi','Delhi','Male','Silver'),
-- (6,'Neha Singh','Hyderabad','Telangana','Female','Gold'),
-- (7,'Farhan Ali','Pune','Maharashtra','Male','Bronze'),
-- (8,'Meera Nair','Chennai','Tamil Nadu','Female','Silver'),
-- (9,'Rahul Reddy','Hyderabad','Telangana','Male','Gold'),
-- (10,'Divya Sharma','Bangalore','Karnataka','Female','Bronze');

-- INSERT INTO products VALUES
-- (101,'Laptop','Electronics',55000),
-- (102,'Smartphone','Electronics',25000),
-- (103,'Headphones','Electronics',2000),
-- (104,'T-Shirt','Fashion',800),
-- (105,'Jeans','Fashion',1500),
-- (106,'Shoes','Fashion',2500),
-- (107,'Office Chair','Furniture',7000),
-- (108,'Study Table','Furniture',9000),
-- (109,'Smart Watch','Electronics',4500),
-- (110,'Backpack','Accessories',1200);

-- INSERT INTO orders VALUES
-- (1001,1,'2026-01-05','Delivered'),
-- (1002,2,'2026-01-10','Delivered'),
-- (1003,3,'2026-01-15','Pending'),
-- (1004,1,'2026-01-18','Delivered'),
-- (1005,4,'2026-01-20','Cancelled'),
-- (1006,5,'2026-01-22','Delivered'),
-- (1007,6,'2026-01-25','Pending'),
-- (1008,7,'2026-01-27','Delivered'),
-- (1009,8,'2026-02-01','Delivered'),
-- (1010,9,'2026-02-03','Pending'),
-- (1011,10,'2026-02-05','Delivered'),
-- (1012,2,'2026-02-08','Delivered'),
-- (1013,3,'2026-02-10','Cancelled'),
-- (1014,4,'2026-02-12','Pending'),
-- (1015,5,'2026-02-15','Delivered');

-- SELECT COUNT(*) FROM customers;
-- SELECT COUNT(*) FROM products;
-- SELECT COUNT(*) FROM orders;

-- INSERT INTO order_items VALUES
-- (1,1001,101,1),
-- (2,1001,103,2),
-- (3,1002,102,1),
-- (4,1002,104,3),
-- (5,1003,105,2),
-- (6,1004,109,1),
-- (7,1004,110,2),
-- (8,1005,106,1),
-- (9,1006,107,1),
-- (10,1007,108,1),
-- (11,1008,101,1),
-- (12,1009,102,1),
-- (13,1010,103,2),
-- (14,1011,104,4),
-- (15,1012,105,2),
-- (16,1013,106,1),
-- (17,1014,109,1),
-- (18,1015,110,3),
-- (19,1015,103,1),
-- (20,1008,107,1);

-- INSERT INTO payments VALUES
-- (1,1001,'UPI','Success',59000),
-- (2,1002,'Card','Success',27400),
-- (3,1003,'UPI','Pending',3000),
-- (4,1004,'Net Banking','Success',6900),
-- (5,1005,'Card','Failed',2500),
-- (6,1006,'UPI','Success',7000),
-- (7,1007,'Cash','Pending',9000),
-- (8,1008,'UPI','Success',62000),
-- (9,1009,'Card','Success',25000),
-- (10,1010,'UPI','Pending',4000),
-- (11,1011,'Cash','Success',3200),
-- (12,1012,'Card','Success',3000),
-- (13,1013,'UPI','Failed',2500),
-- (14,1014,'Net Banking','Pending',4500),
-- (15,1015,'UPI','Success',5400);

-- INSERT INTO deliveries VALUES
-- (1,1001,'Delhivery','Delivered','Hyderabad'),
-- (2,1002,'BlueDart','Delivered','Bangalore'),
-- (3,1003,'Ecom Express','Pending','Mumbai'),
-- (4,1004,'Delhivery','Delivered','Hyderabad'),
-- (5,1005,'BlueDart','Cancelled','Chennai'),
-- (6,1006,'Ecom Express','Delivered','Delhi'),
-- (7,1007,'Delhivery','Pending','Hyderabad'),
-- (8,1008,'BlueDart','Delivered','Pune'),
-- (9,1009,'Ecom Express','Delivered','Chennai'),
-- (10,1010,'Delhivery','Pending','Hyderabad'),
-- (11,1011,'BlueDart','Delivered','Bangalore'),
-- (12,1012,'Ecom Express','Delivered','Bangalore'),
-- (13,1013,'Delhivery','Cancelled','Mumbai'),
-- (14,1014,'BlueDart','Pending','Chennai'),
-- (15,1015,'Ecom Express','Delivered','Delhi');

-- 1-5

-- SELECT * FROM customers;
-- SELECT customer_name, city, membership_type
-- FROM customers;
-- SELECT * FROM products ORDER BY price DESC;
-- SELECT * FROM customers WHERE city='Hyderabad';
-- SELECT * FROM customers WHERE membership_type='Gold';

-- 6-20
-- SELECT *
-- FROM products
-- WHERE price BETWEEN 500 AND 5000;

-- SELECT *
-- FROM products
-- WHERE category IN ('Electronics','Fashion');

-- SELECT *
-- FROM orders
-- WHERE order_date > '2026-01-01';

-- SELECT *
-- FROM payments
-- WHERE payment_mode='UPI';

-- SELECT *
-- FROM deliveries
-- WHERE delivery_status='Pending';

-- SELECT COUNT(*) AS total_customers
-- FROM customers;
-- SELECT COUNT(*) AS total_orders
-- FROM orders;

-- SELECT COUNT(*) AS total_products
-- FROM products;
-- SELECT SUM(amount) AS total_revenue
-- FROM payments
-- WHERE payment_status='Success';

-- SELECT AVG(amount) AS avg_payment
-- FROM payments;
-- SELECT MAX(amount) AS highest_payment
-- FROM payments;
-- SELECT MIN(amount) AS lowest_payment
-- FROM payments;

-- SELECT city, COUNT(*) AS customer_count
-- FROM customers
-- GROUP BY city;
-- SELECT category, COUNT(*) AS product_count
-- FROM products
-- GROUP BY category;
-- SELECT order_status, COUNT(*) AS total_orders
-- FROM orders
-- GROUP BY order_status;

-- 21-35
-- SELECT c.customer_name,
--        o.order_id,
--        o.order_date
-- FROM customers c
-- INNER JOIN orders o
-- ON c.customer_id = o.customer_id;

-- SELECT oi.order_id,
--        p.product_name,
--        oi.quantity,
--        p.price
-- FROM order_items oi
-- INNER JOIN products p
-- ON oi.product_id = p.product_id;

-- SELECT c.customer_name,
--        p.product_name,
--        oi.quantity,
--        o.order_date
-- FROM customers c
-- INNER JOIN orders o
-- ON c.customer_id = o.customer_id
-- INNER JOIN order_items oi
-- ON o.order_id = oi.order_id
-- INNER JOIN products p
-- ON oi.product_id = p.product_id;

-- SELECT o.order_id,
--        p.payment_mode,
--        p.payment_status,
--        p.amount
-- FROM orders o
-- INNER JOIN payments p
-- ON o.order_id = p.order_id;

-- SELECT o.order_id,
--        d.delivery_partner,
--        d.delivery_status
-- FROM orders o
-- INNER JOIN deliveries d
-- ON o.order_id = d.order_id;

-- SELECT c.customer_name,
--        c.city,
--        o.order_id,
--        o.order_date,
--        p.product_name,
--        p.category,
--        oi.quantity,
--        p.price,
--        pay.payment_status,
--        d.delivery_status
-- FROM customers c
-- INNER JOIN orders o
-- ON c.customer_id = o.customer_id
-- INNER JOIN order_items oi
-- ON o.order_id = oi.order_id
-- INNER JOIN products p
-- ON oi.product_id = p.product_id
-- INNER JOIN payments pay
-- ON o.order_id = pay.order_id
-- INNER JOIN deliveries d
-- ON o.order_id = d.order_id;

-- SELECT c.city,
--        SUM(pay.amount) AS total_revenue
-- FROM customers c
-- INNER JOIN orders o
-- ON c.customer_id = o.customer_id
-- INNER JOIN payments pay
-- ON o.order_id = pay.order_id
-- WHERE pay.payment_status='Success'
-- GROUP BY c.city;

-- SELECT c.customer_name,
--        SUM(pay.amount) AS total_revenue
-- FROM customers c
-- INNER JOIN orders o
-- ON c.customer_id = o.customer_id
-- INNER JOIN payments pay
-- ON o.order_id = pay.order_id
-- WHERE pay.payment_status='Success'
-- GROUP BY c.customer_name;

-- SELECT p.product_name,
--        SUM(oi.quantity) AS total_quantity
-- FROM products p
-- INNER JOIN order_items oi
-- ON p.product_id = oi.product_id
-- GROUP BY p.product_name;

-- SELECT p.category,
--        SUM(oi.quantity * p.price) AS revenue
-- FROM products p
-- INNER JOIN order_items oi
-- ON p.product_id = oi.product_id
-- GROUP BY p.category;

-- SELECT c.customer_name,
--        COUNT(o.order_id) AS total_orders
-- FROM customers c
-- INNER JOIN orders o
-- ON c.customer_id = o.customer_id
-- GROUP BY c.customer_name;

-- SELECT c.customer_name,
--        COUNT(o.order_id) AS total_orders
-- FROM customers c
-- INNER JOIN orders o
-- ON c.customer_id = o.customer_id
-- GROUP BY c.customer_name
-- HAVING COUNT(o.order_id) > 1;

-- SELECT city,
--        COUNT(*) AS customer_count
-- FROM customers
-- GROUP BY city
-- HAVING COUNT(*) > 2;

-- SELECT p.product_name,
--        SUM(oi.quantity) AS total_sold
-- FROM products p
-- INNER JOIN order_items oi
-- ON p.product_id = oi.product_id
-- GROUP BY p.product_name
-- HAVING SUM(oi.quantity) > 3;

-- 36-45

-- SELECT *
-- FROM customers
-- WHERE customer_id IN
-- (
--     SELECT customer_id
--     FROM orders
-- );

-- SELECT *
-- FROM customers
-- WHERE customer_id NOT IN
-- (
--     SELECT customer_id
--     FROM orders
-- );

-- SELECT *
-- FROM products
-- WHERE product_id NOT IN
-- (
--     SELECT product_id
--     FROM order_items
-- );

-- SELECT *
-- FROM payments
-- WHERE amount >
-- (
--     SELECT AVG(amount)
--     FROM payments
-- );

-- SELECT c.customer_name,
--        p.amount
-- FROM customers c
-- INNER JOIN orders o
-- ON c.customer_id = o.customer_id
-- INNER JOIN payments p
-- ON o.order_id = p.order_id
-- WHERE p.amount =
-- (
--     SELECT MAX(amount)
--     FROM payments
-- );

-- SELECT *
-- FROM products
-- WHERE price >
-- (
--     SELECT AVG(price)
--     FROM products
-- );

-- SELECT DISTINCT c.customer_name
-- FROM customers c
-- INNER JOIN orders o
-- ON c.customer_id = o.customer_id
-- INNER JOIN order_items oi
-- ON o.order_id = oi.order_id
-- INNER JOIN products p
-- ON oi.product_id = p.product_id
-- WHERE p.category = 'Electronics';

-- SELECT *
-- FROM orders
-- WHERE order_id IN
-- (
--     SELECT order_id
--     FROM payments
--     WHERE payment_status = 'Success'
-- );

-- SELECT *
-- FROM orders
-- WHERE order_id IN
-- (
--     SELECT order_id
--     FROM deliveries
--     WHERE delivery_status <> 'Delivered'
-- );

-- SELECT c.customer_name,
--        SUM(p.amount) AS total_spending
-- FROM customers c
-- INNER JOIN orders o
-- ON c.customer_id = o.customer_id
-- INNER JOIN payments p
-- ON o.order_id = p.order_id
-- GROUP BY c.customer_name
-- HAVING SUM(p.amount) >
-- (
--     SELECT AVG(total_amount)
--     FROM
--     (
--         SELECT SUM(amount) AS total_amount
--         FROM payments p
--         INNER JOIN orders o
--         ON p.order_id = o.order_id
--         GROUP BY o.customer_id
--     ) avg_spending
-- );

-- 46-52
SELECT *
FROM orders
-- WHERE order_id NOT IN
-- (
--     SELECT order_id
--     FROM payments
-- );
-- SELECT *
-- FROM orders
-- WHERE order_id NOT IN
-- (
--     SELECT order_id
--     FROM deliveries
-- );

-- SELECT *
-- FROM payments
-- WHERE amount IS NULL
-- OR amount = 0;

-- SELECT o.order_id,
--        o.order_status,
--        p.payment_status
-- FROM orders o
-- INNER JOIN payments p
-- ON o.order_id = p.order_id
-- WHERE o.order_status = 'Cancelled'
-- AND p.payment_status = 'Success';

-- SELECT o.order_id,
--        o.order_status,
--        p.payment_status
-- FROM orders o
-- INNER JOIN payments p
-- ON o.order_id = p.order_id
-- WHERE o.order_status = 'Delivered'
-- AND p.payment_status = 'Failed';

-- SELECT *
-- FROM order_items
-- WHERE product_id NOT IN
-- (
--     SELECT product_id
--     FROM products
-- );

-- SELECT * 
-- FROM orders
-- WHERE customer_id NOT IN
-- (
--     SELECT customer_id
--     FROM customers
-- );

















