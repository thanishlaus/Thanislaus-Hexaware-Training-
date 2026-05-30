SELECT * FROM customers; 
UPDATE customers
SET city='Chennai'
WHERE customer_id=1;
SELECT * FROM customers; 
SET SQL_SAFE_UPDATES=0;
UPDATE customers
SET city='Chennai'
WHERE customer_id =1;
SET SQL_SAFE_UPDATES=1;
DELETE FROM customers
WHERE city='Mumbai'
SELECT * FROM customers; 

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT,
    supplier_city VARCHAR(50)
);

INSERT INTO products
(product_id, product_name, category, price, stock_quantity, supplier_city)
VALUES
(1, 'Laptop', 'Electronics', 55000, 10, 'Hyderabad');

SELECT * FROM products;

UPDATE products
SET price = 60000,
    stock_quantity = 15
WHERE product_id = 1;

DELETE FROM products
WHERE product_id = 1;

SELECT * FROM products;

INSERT INTO products
(product_id, product_name, category, price, stock_quantity, supplier_city)
VALUES
(1, 'Laptop', 'Electronics', 55000, 10, 'Hyderabad');
DROP TABLE products;
 CREATE TABLE products (
     product_id INT PRIMARY KEY,
     product_name VARCHAR(100),
     category VARCHAR(50),
     price DECIMAL(10,2),
     stock_quantity INT,
     supplier_city VARCHAR(50)
 );

DROP TABLE products;
CREATE TABLE products
(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(30),
    price DECIMAL(10,2),
    stock_quantity INT,
    supplier_city VARCHAR(30)
);

INSERT INTO products VALUES
(1,'Laptop','Electronics',55000,10,'Hyderabad'),
(2,'Mobile','Electronics',25000,25,'Bangalore'),
(3,'Printer','Electronics',18000,8,'Pune'),
(4,'Office Chair','Furniture',7500,15,'Mumbai'),
(5,'Desk','Furniture',12000,5,'Chennai'),
(6,'Notebook','Stationery',80,200,'Hyderabad'),
(7,'Pen','Stationery',20,500,'Delhi'),
(8,'Water Bottle','Accessories',500,50,'Bangalore');

SELECT * FROM products;
SELECT product_name,price FROM products;
SELECT DISTINCT category FROM products;
SELECT * FROM products WHERE price >1000;
SELECT * FROM products WHERE NOT category='ELectronics';
SELECT * FROM products WHERE supplier_city IN ('Hyderabad', 'Delhi');
SELECT * FROM products WHERE Product_name LIKE 'P%';
SELECT * FROM products WHERE price BETWEEN 500 AND 20000;
SELECT product_name AS product,
price AS productprice FROM products;
SELECT * FROM products ORDER BY price DESC;
SELECT COUNT(*) FROM products;
SELECT COUNT(*) FROM products WHERE category='Electronics';
SELECT SUM(price) FROM products;
ELECT COUNT (*) AS Totalproducts,
SUM(price) AS totalprice,
AVG(price) AS Averageprice,
MAX(price) AS highestprice,
MIN(price) AS Lowestprice
FROM products;
SELECT 
category, 
COUNT(*) AS ProductCount FROM products GROUP BY category;
(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50),
    phone VARCHAR(15)
);
CREATE TABLE orders
(
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    order_amount DECIMAL(10,2),
    order_status VARCHAR(30)
);
INSERT INTO orders VALUES
(101, 1, 'Laptop', 55000, 'Delivered'),
(102, 1, 'Mouse', 700, 'Delivered'),
(103, 2, 'Mobile', 25000, 'Shipped'),
(104, 3, 'Keyboard', NULL, 'Pending'),
(105, 7, 'Printer', 18000, 'Delivered'),
(106, NULL, 'Office Chair', 7500, 'Pending'),
(107, 4, NULL, 12000, 'Cancelled'),
(108, 8, 'Monitor', 1500, NULL);    











