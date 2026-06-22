# Healthcare Analytics Platform using Azure Databricks

## Project Overview

The Healthcare Analytics Platform is a Data Engineering and Analytics project developed using Azure Databricks, PySpark, Spark SQL, Delta Lake, and Databricks Workflows. The project processes healthcare data from multiple sources, performs data transformations, generates business insights, and implements Delta Lake features for efficient data management.

---

## Project Objectives

- Ingest healthcare datasets into Azure Databricks
- Process and transform healthcare data
- Analyze patient and doctor information
- Generate healthcare business reports
- Perform data visualization and analytics
- Implement Delta Lake features
- Automate execution using Databricks Workflows

---

## Datasets Used

### Patients Dataset
Contains:
- Patient ID
- Patient Name
- City
- State
- Age
- Gender
- Insurance Status

### Doctors Dataset
Contains:
- Doctor ID
- Doctor Name
- Department
- City
- Consultation Fee

### Appointments Dataset
Contains:
- Appointment ID
- Patient ID
- Doctor ID
- Appointment Date
- Diagnosis
- Bill Amount
- Status

### Patient Preferences Dataset (JSON)
Contains:
- Patient ID
- Preferred Hospital
- Phone Number
- Email Address

---

## Project Architecture

### Bronze Layer
Raw Data Ingestion

- Patients Data
- Doctors Data
- Appointments Data
- Patient Preferences JSON Data

### Silver Layer
Data Transformation

- Patient and Appointment Join
- Doctor and Appointment Join
- Final Bill Calculation
- Appointment Month Extraction
- Patient Age Group Classification
- JSON Data Flattening

### Gold Layer
Business Analytics and Reporting

- Department Revenue Analysis
- Doctor Revenue Analysis
- Insurance Analytics
- Patient Demographics Analysis
- Appointment Analytics

---

## Project Workflow

### Notebook 1
Patient Data Ingestion

### Notebook 2
Doctor Data Ingestion

### Notebook 3
Appointment Data Ingestion

### Notebook 4
Patient Preferences JSON Ingestion

### Notebook 5
Data Transformation and Silver Layer Creation

### Notebook 6
Healthcare Analytics and Data Visualization

### Notebook 7
Spark SQL Analytics, Window Functions, and Delta Lake Features

---

## Data Transformations Performed

### Insurance Discount Logic

- Active Insurance → 20% Discount
- Inactive Insurance → No Discount

### New Columns Created

- final_bill
- appointment_month
- patient_age_group

### Age Group Classification

- Young (<30 Years)
- Adult (30–50 Years)
- Senior (>50 Years)

---

## Exploratory Data Analysis

### Visualizations Created

- Revenue by Department
- Doctor-wise Revenue
- Patient Age Group Distribution
- Insurance Status Analysis
- Appointment Status Analysis
- City-wise Patient Count
- Final Bill Distribution

---

## Spark SQL Analytics

Performed SQL Queries for:

- Total Revenue
- Revenue by Department
- Doctor-wise Revenue
- Patient Count by City
- Insurance Analytics
- Appointment Status Analysis
- Top Patients by Bill Amount

---

## Window Functions Implemented

- Rank()
- Dense Rank()
- Row Number()
- Running Total Revenue
- Top Patients Analysis
- Doctor Revenue Ranking

---

## Delta Lake Features

- Delta Table Creation
- Delta History
- Time Travel
- OPTIMIZE
- VACUUM

---

## Workflow Automation

Created Databricks Workflow:

Healthcare_Analytics_Workflow

Workflow Tasks:

1. Patient Data Ingestion
2. Doctor Data Ingestion
3. Appointment Data Ingestion
4. Preferences JSON Ingestion
5. Data Transformation
6. EDA and Reporting
7. Spark SQL Analytics
8. Delta Lake Operations

---

## Technologies Used

- Microsoft Azure
- Azure Databricks
- PySpark
- Spark SQL
- Delta Lake
- Matplotlib
- Databricks Workflows
- Delta Tables

---

## Learning Outcomes

- Data Ingestion using PySpark
- Data Cleaning and Transformation
- JSON Data Processing
- Data Visualization
- Spark SQL Analytics
- Window Functions
- Delta Lake Management
- Workflow Automation
- Healthcare Data Analytics

---

## Project Outcome
Successfully developed an end-to-end Healthcare Analytics Platform capable of processing healthcare data, generating business insights, implementing Delta Lake operations, and automating workflows using Azure Databricks.

---

## Author
**Thanish Laus**
