# Apache Airflow Workflow Orchestration using Docker

## Project Overview
This project demonstrates the installation, configuration, and execution of Apache Airflow using Docker in a KillerCoda Ubuntu environment. The project focuses on workflow orchestration, DAG creation, task scheduling, monitoring, and automation of data pipelines.
---

## Objectives

* Install Apache Airflow using Docker
* Understand Airflow architecture and components
* Create and execute DAGs
* Schedule and monitor workflows
* Explore Airflow Web UI
* Implement ETL-style workflow automation

---

## Technologies Used
* Apache Airflow
* Docker
* Ubuntu (KillerCoda)
* Python
* Workflow Orchestration

---

## Airflow Architecture Components

### Web Server
Provides the Airflow User Interface for managing and monitoring workflows.

### Scheduler
Schedules and triggers tasks based on DAG definitions.

### Executor
Executes tasks assigned by the scheduler.

### Metadata Database
Stores workflow metadata, task status, logs, and execution history.

### DAGs
Python scripts that define workflow logic and task dependencies.

---

## Implementation Steps

### Step 1: Install and Run Airflow Container

```bash
docker run -d \
-p 8080:8080 \
--name airflow \
apache/airflow standalone
```

### Step 2: Verify Container Status

```bash
docker ps
```

### Step 3: View Airflow Logs

```bash
docker logs airflow
```

### Step 4: Access Airflow UI

```text
http://localhost:8080
```

Login using the credentials generated in the Airflow logs.

### Step 5: Create and Execute First DAG

* Create DAG file
* Define tasks using PythonOperator
* Trigger DAG execution
* Monitor task execution through Airflow UI
* Verify task logs

---

## Sample DAG Workflow

```text
Start
  ↓
Hello Task
  ↓
Success
```

### ETL Workflow

```text
Extract
   ↓
Transform
   ↓
Load
```

---

## Features Implemented

* Workflow Scheduling
* Task Dependency Management
* DAG Creation
* Workflow Monitoring
* Log Management
* ETL Pipeline Execution
* Docker-Based Deployment

---

## Benefits of Apache Airflow

* Open Source
* Python-Based Development
* Scalable Workflow Management
* Easy Monitoring and Debugging
* Supports Complex Task Dependencies
* Integration with Multiple Data Sources

---

## Learning Outcomes

* Understanding Workflow Orchestration
* Apache Airflow Fundamentals
* DAG Design and Execution
* Docker Container Management
* Airflow Monitoring and Logging
* ETL Pipeline Automation
* Task Scheduling Concepts

---

## Project Outcome
Successfully deployed Apache Airflow using Docker, created and executed DAGs, monitored workflow execution through the Airflow UI, and demonstrated workflow orchestration concepts for ETL automation.

---

## Author
**Thanish Laus**


**Skills Demonstrated:**
Apache Airflow | Docker | Python | Workflow Orchestration | ETL Automation | Data Engineering | Linux Administration
