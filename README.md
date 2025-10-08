# 📊 Sales BI Data Warehouse & Reporting System

This project implements a complete **Business Intelligence (BI)** solution, starting from a MySQL database and ending with interactive dashboards in Power BI.  
It was developed as part of the *Management des Systèmes d’Information* module at ENSA El Jadida (Master SDIA, 1st year).

---

## 📑 Table of Contents
1. [Project Overview](#-project-overview)  
2. [Tech Stack](#%EF%B8%8F-tech-stack)  
3. [Architecture](#-architecture)  
4. [Key Performance Indicators (KPIs)](#-key-performance-indicators-kpis)  
5. [Project Deliverables](#-project-deliverables)  
6. [Project Previews](#-project-previews)  
   - [Star Schema](#-data-warehouse-design-star-schema)  
   - [ETL Process](#-etl-process-talend-job)  
   - [Reporting Dashboards](#-reporting-dashboards-power-bi)  
7. [Authors](#-authors)  
8. [Academic Context](#-academic-context)  

---

## 🚀 Project Overview
The objective of this project was to design and implement a **data warehouse** and a **BI reporting solution** to analyze sales performance.  
The process included:
1. Designing a **star schema** for the data warehouse.
2. Building an **ETL pipeline** with Talend to populate the warehouse.
3. Developing **Power BI dashboards** to visualize KPIs and support decision-making.

---

## 🛠️ Tech Stack
- **Database:** MySQL (Data Warehouse in star schema)  
- **ETL Tool:** Talend Open Studio  
- **Reporting Tool:** Power BI  

---

## 📐 Architecture

The BI system follows a layered architecture:

- **Data Source:** Transactional MySQL database (ComptoirProd)  
- **ETL Layer:** Talend Open Studio for data extraction, transformation, and loading  
- **Data Warehouse:** Star schema (fact + dimension tables) implemented in MySQL  
- **Presentation Layer:** Interactive dashboards in Power BI  

![Architecture Diagram Placeholder](https://via.placeholder.com/800x400?text=BI+Architecture)

---

## 📊 Key Performance Indicators (KPIs)

The dashboards provide insights on:
- **Total Revenue (Chiffre d’affaires total)**  
- **Total Quantity Sold**  
- **Average Revenue per Sale**  
- **Revenue by Customer**  
- **Revenue by Product**  
- **Product Market Share**  
- **Monthly Sales Trends**  
- **Stock Turnover**  
- **Discounts Applied**  
- **Geographic Analysis (by city, region, country)**  

---

## 📂 Project Deliverables

- **Data Warehouse**
  - [`datawarehouse/sales_datawarehouse.sql`](./datawarehouse/sales_datawarehouse.sql) – MySQL dump of the warehouse schema  

- **ETL**
  - [`etl/sales_etl_pipeline_talend.zip`](./etl/sales_etl_pipeline_talend.zip) – Talend project for ETL  

- **Reporting**
  - [`reporting/sales_reporting_dashboard.pbix`](./reporting/sales_reporting_dashboard.pbix) – Power BI dashboard  
  - [`reporting/reporting-visuals.pdf`](./reporting/reporting-visuals.pdf) – PDF with dashboard screenshots  

- **Documentation**
  - [`docs/project_specifications_bi.pdf`](./docs/project_specifications_bi.pdf) – Original project specification  
  - [`docs/mini-report.pdf`](./docs/mini-report.pdf) – Mini report describing KPIs, schema, and architecture  

---

## 📸 Project Previews

### 🔹 Data Warehouse Design (Star Schema)
![Star Schema Placeholder](https://via.placeholder.com/800x400?text=Star+Schema+Design)

### 🔹 ETL Process (Talend Job)
![Talend ETL Placeholder](https://via.placeholder.com/800x400?text=ETL+Process+Talend)

### 🔹 Reporting Dashboards (Power BI)
![Dashboard Preview Placeholder 1](https://via.placeholder.com/800x400?text=Dashboard+Preview+1)  
![Dashboard Preview Placeholder 2](https://via.placeholder.com/800x400?text=Dashboard+Preview+2)  
![Dashboard Preview Placeholder 3](https://via.placeholder.com/800x400?text=Dashboard+Preview+3)

*(Replace placeholders with real screenshots from MySQL Workbench, Talend, and Power BI)*  

---

## 👨‍💻 Authors
- **Fahd EL ATTAR**  
- **Anouar EL GORCH**  

---

## 📅 Academic Context
- **Module:** Management des Systèmes d’Information (MSI)  
- **Institution:** ENSA El Jadida, Université Chouaib Doukkali  
- **Academic Year:** 2024/2025  

---
