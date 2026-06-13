CREATE DATABASE inventory_management;
USE inventory_management;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    reorder_level INT
);

CREATE TABLE warehouses (
    warehouse_id INT PRIMARY KEY,
    warehouse_name VARCHAR(100),
    location VARCHAR(100)
);

CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100),
    contact_number VARCHAR(20)
);

CREATE TABLE stock_movements (
    movement_id INT PRIMARY KEY,
    product_id INT,
    warehouse_id INT,
    quantity INT,
    movement_type VARCHAR(10),
    movement_date DATE,
    FOREIGN KEY (product_id)
        REFERENCES products(product_id),
    FOREIGN KEY (warehouse_id)
        REFERENCES warehouses(warehouse_id)
);