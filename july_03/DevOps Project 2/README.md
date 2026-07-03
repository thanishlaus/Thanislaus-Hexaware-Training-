# Azure DevOps CI Pipeline for Loan Eligibility System

## Project Overview

This project demonstrates the implementation of a **Loan Eligibility System** using **Python** and **Azure DevOps CI Pipeline**. The application evaluates whether a customer is eligible for a loan based on predefined business rules such as salary, credit score, and employment status.

The project also demonstrates Agile Planning, Source Code Management, and Continuous Integration using Azure DevOps.

---

## Objectives

- Create Agile work items using Azure DevOps Boards.
- Organize work into Epic, Features, User Stories, and Tasks.
- Develop a Python-based Loan Eligibility application.
- Store source code in Azure Repos.
- Configure an Azure DevOps YAML CI Pipeline.
- Automatically build and execute the application.

---

## Technologies Used

- Python 3.11
- Azure DevOps
- Azure Boards
- Azure Repos
- Azure Pipelines
- Git
- YAML

---

## Project Modules

### Agile Planning
- Epic
- Features
- User Stories
- Tasks

### Source Code Management
- Azure Repos
- Git Repository
- Python Application

### Continuous Integration
- Azure Pipelines
- YAML Configuration
- Automated Build
- Application Execution

---

## Project Structure

```text
loan-eligibility-system/
│
├── loan_eligibility.py
├── azure-pipelines.yml
└── README.md
```

---

## Application Features

- Add Customer Details
- Check Loan Eligibility
- Display Loan Status
- Validate Business Rules

---

## Loan Eligibility Rules

A customer is **Eligible for Loan** if:

- Salary is **₹50,000 or above**
- Credit Score is **700 or above**
- Employment Status is **Employed**

Otherwise, the customer is **Not Eligible for Loan**.

---

## Azure DevOps CI Workflow

```text
Developer
      ↓
Azure Repos
      ↓
CI Pipeline Trigger
      ↓
Setup Python Environment
      ↓
Run Python Application
      ↓
Verify Build
      ↓
Build Successful
```

---

## Pipeline Activities

- Retrieve source code from repository
- Configure Python environment
- Upgrade pip
- Execute Python application
- Verify successful build
- Display application output in logs

---

## Expected Output

```text
Customer ID       : 101
Customer Name     : Rahul Sharma
Salary            : 75000
Credit Score      : 760
Employment Status : Employed
Loan Status       : Eligible

Customer ID       : 102
Customer Name     : Priya Kumar
Salary            : 35000
Credit Score      : 650
Employment Status : Unemployed
Loan Status       : Not Eligible

Build completed successfully.
```

---

## Learning Outcomes

- Understood Agile Planning using Azure Boards.
- Created Epic, Features, User Stories, and Tasks.
- Developed a Python Loan Eligibility application.
- Learned Git-based source code management.
- Created an Azure DevOps YAML CI pipeline.
- Understood the Continuous Integration workflow.
- Learned automated application execution using Azure Pipelines.

---

## Conclusion

This project demonstrates the implementation of a simple Loan Eligibility System using Python along with Azure DevOps for Agile Planning, source code management, and Continuous Integration. It provides practical knowledge of CI pipelines, YAML configuration, and automated application execution.

---

## Author
**Thanish Laus**  

