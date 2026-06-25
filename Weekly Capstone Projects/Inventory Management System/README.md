# Inventory Management System

## Project Overview

The Inventory Management System is a data engineering and analytics project developed to manage inventory levels, monitor stock movements, identify low-stock products, and generate inventory reports. The project combines database management, data processing, big data analytics, ETL operations, and automation techniques to provide an end-to-end inventory tracking solution.

## Objectives

- Manage inventory across multiple warehouses.
- Track stock movement transactions.
- Identify products that require restocking.
- Analyze warehouse inventory levels.
- Generate inventory reports for decision-making.
- Automate inventory monitoring processes.

---

## Technologies Used

- MySQL
- MongoDB
- Python
- Pandas
- NumPy
- PySpark
- Google Colab
- Git & GitHub

---

## Week 1 – Database Foundations

### Tasks Completed

- Created MySQL database schema.
- Designed Products, Warehouses, Suppliers, and Stock Movements tables.
- Implemented CRUD operations.
- Developed a stored procedure to identify low-stock products.
- Added indexes for optimized database performance.
- Stored inventory audit logs in MongoDB.
- Created MongoDB indexes for faster search operations.

### Deliverables

- schema.sql
- crud.sql
- stored_procedure.sql
- indexes.sql
- audit_logs.js

---

## Week 2 – Stock Processing with Python

### Tasks Completed

- Loaded stock movement data from CSV files.
- Performed data cleaning and validation.
- Processed inventory transactions using Pandas and NumPy.
- Calculated current stock levels.
- Identified products below reorder threshold.
- Generated low-stock inventory reports.

### Deliverables

- stock_movements.csv
- stock_analysis.py
- low_stock_report.csv

---

## Week 3 – Warehouse Analytics using PySpark

### Tasks Completed

- Loaded warehouse inventory data using PySpark.
- Aggregated stock quantities at warehouse level.
- Calculated total inventory available in each warehouse.
- Identified understocked and overstocked warehouses.
- Generated warehouse inventory status reports.

### Deliverables

- warehouse_stock.csv
- warehouse_analysis.py
- warehouse_status.csv

---

## Week 4 – ETL Processing using Google Colab

### Tasks Completed

- Loaded inventory datasets into Google Colab.
- Performed data integration and transformation.
- Joined product and warehouse information.
- Created a Master Inventory View.
- Added reorder flags for inventory monitoring.
- Exported consolidated inventory reports.

### Deliverables

- inventory_products.csv
- warehouse_status.csv
- master_inventory.csv
- Week4_Inventory_ETL.ipynb

---

## Week 5 – Inventory Automation

### Tasks Completed

- Automated inventory monitoring process.
- Calculated inventory levels automatically.
- Identified products requiring restocking.
- Generated low-stock inventory reports.
- Exported automated reports for inventory management.

### Deliverables

- Week5_Inventory_Automation.ipynb
- low_stock_report.csv

---

## Project Workflow

1. Store inventory data in MySQL.
2. Maintain audit logs in MongoDB.
3. Process stock transactions using Python.
4. Analyze warehouse inventory using PySpark.
5. Perform ETL operations and create master inventory views.
6. Generate automated inventory reports.
7. Identify products requiring replenishment.

---

## Expected Outcomes

- Centralized inventory management.
- Improved stock visibility.
- Automated low-stock detection.
- Warehouse-level inventory analysis.
- Data-driven inventory decision-making.
- Scalable inventory reporting workflow.

---
##Author
-Thanislaus 

## Repository Structure

```text
Inventory-Management-System/
│
├── Week1/
│   ├── schema.sql
│   ├── crud.sql
│   ├── stored_procedure.sql
│   ├── indexes.sql
│   └── audit_logs.js
│
├── Week2/
│   ├── stock_movements.csv
│   ├── stock_analysis.py
│   └── low_stock_report.csv
│
├── Week3/
│   ├── warehouse_stock.csv
│   ├── warehouse_analysis.py
│   └── warehouse_status.csv
│
├── Week4/
│   ├── inventory_products.csv
│   ├── master_inventory.csv
│   └── Week4_Inventory_ETL.ipynb
│
├── Week5/
│   ├── Week5_Inventory_Automation.ipynb
│   └── low_stock_report.csv
│
└── README.md

