# Apache Airflow Exercises

## Project Overview

This project demonstrates the implementation of Apache Airflow workflows using Docker and KillerCoda Ubuntu environment. Multiple DAGs were created to automate file processing, report generation, data analysis, and CSV processing tasks.

---

## Technologies Used

- Apache Airflow
- Python
- Docker
- Ubuntu (KillerCoda)

---

## Exercises Completed

### Exercise 1 – Create and Read File

Workflow:

create_file → read_file

Tasks:
- Create a text file
- Read file contents
- Display output in logs

---

### Exercise 2 – Employee Salary Report

Workflow:

create_salary_file → calculate_total_salary → generate_report

Tasks:
- Create employee salary file
- Calculate total salary
- Generate salary report

Output:
- Total Salary = 206000

---

### Exercise 3 – Student Marks Processing

Workflow:

create_marks_file → calculate_average → generate_result

Tasks:
- Create marks file
- Calculate average marks
- Generate result report

Output:
- Average Marks = 85
- Result = PASS

---

### Exercise 4 – Product Stock Alert

Workflow:

create_inventory → find_low_stock → generate_alert

Tasks:
- Create inventory file
- Identify low stock products
- Generate stock alert

Output:
- Oil
- Sugar
- Tea

---

### Exercise 5 – Attendance Report

Workflow:

create_attendance → count_present → count_absent → generate_summary

Tasks:
- Create attendance file
- Count present students
- Count absent students
- Generate attendance report

Output:
- Total Students = 5
- Present = 3
- Absent = 2

---

### Exercise 6 – CSV Processing

Workflow:

create_csv → read_csv → calculate_revenue → create_summary

Tasks:
- Create sales CSV file
- Read CSV data
- Calculate revenue
- Generate sales summary

Output:
- Laptop Revenue = 140000
- Mouse Revenue = 2500
- Keyboard Revenue = 3600
- Total Revenue = 146100

---

## Key Concepts Learned

- Apache Airflow Fundamentals
- DAG Creation and Execution
- Task Dependencies
- Python Operators
- File Handling
- CSV Processing
- Workflow Automation
- Log Monitoring
- Docker-Based Airflow Deployment

---

## Project Outcome

Successfully created and executed multiple Airflow DAGs to automate file processing, reporting, inventory monitoring, attendance analysis, and revenue calculation workflows.

---

## Author
**Thanish Laus**
