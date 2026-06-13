# Smart Retail Inventory and Sales Analytics

## Datasets Used
- stores.csv
- products.csv
- inventory.csv
- sales.csv
- suppliers.json

## Tasks Done
### Data Ingestion
- Read CSV and JSON files
- Display schema and record counts
- Save Bronze layer data

### Data Cleaning
- Handle missing values
- Create data quality status
- Save Silver layer data

### JSON Processing
- Flatten nested JSON
- Handle missing contact information

### Joins
- Product and Supplier joins
- Inventory and Product joins
- Sales and Store joins
- Retail Master dataset creation

### Transformations
- Stock status analysis
- Price categorization
- Revenue categorization
- Inventory valuation
- Supplier quality analysis

### Aggregations
- Revenue by store
- Revenue by category
- Revenue by city
- Product performance analysis

### Window Functions
- Product ranking
- Store ranking
- Running revenue calculations
- Lead and Lag analysis

### Spark SQL
- SQL-based reporting
- Revenue analytics
- Product and supplier analysis

### Incremental Load
- Append new sales data
- Refresh Gold layer
- Partition data by year and month

### Final Reports
- Store Performance Report
- Product Performance Report
- Inventory Reorder Report
- Supplier Quality Report
- Category Revenue Report
- Payment Mode Report

## Output Files
- bronze_stores
- bronze_products
- bronze_inventory
- bronze_sales
- bronze_suppliers
- silver_products
- silver_inventory
- silver_sales
- silver_suppliers
- gold_sales
- gold_sales_partitioned


# Telecom Customer Usage and Billing Analytics

## Datasets Used
- customers.csv
- usage.csv
- payments.csv
- plans.json

## Features Implemented

### Data Ingestion
- Read CSV and JSON datasets
- Schema validation
- Record count analysis
- Bronze layer creation

### Data Cleaning
- Missing value handling
- Data quality checks
- Silver layer creation

### JSON Processing
- Flatten nested plan features
- Handle missing roaming values

### Joins
- Customer + Usage + Payments + Plans integration
- Telecom Master dataset creation

### Transformations
- Usage Category
- Payment Category
- Churn Risk Analysis
- Over Usage Detection

### Aggregations
- Revenue Analysis
- Plan Performance
- Customer Distribution
- Usage Analytics

### Window Functions
- Customer Ranking
- Revenue Ranking
- Usage Ranking

### Spark SQL
- Business Reports
- Revenue Reports
- Churn Reports

### Incremental Load
- March Usage Data
- Append Process
- Gold Layer Refresh

### Final Reports
- Customer Usage Summary
- Plan Performance Report
- City Revenue Report
- Churn Risk Report
- Over Usage Report

## Output Files

- bronze_customers
- bronze_usage
- bronze_payments
- bronze_plans
- silver_customers
- silver_usage
- silver_payments
- silver_plans
- silver_telecom_master
- gold_telecom_transformed

## Author
Thanish Laus
