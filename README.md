# Data Warehouse Using PostgreSQL Project

Welcome to the **Data Warehouse Using PostgreSQL Project** repository! 🚀

This repository showcases an end-to-end data warehousing project, covering the complete lifecycle of data engineering from ingesting raw data into a centralized warehouse to transforming it into business ready datasets that support reporting, analytical exploration, and strategic decision-making.

The project demonstrates industry standard practices in designing modern data warehouses, implementing ETL pipelines, modeling analytical data, and generating meaningful business insights.

---

# 🏗️ Data Architecture

The solution is built using the **Medallion Architecture**, which organizes data into three distinct layers to improve data quality, maintainability, and analytical performance.

### 🥉 Bronze Layer – Raw Data

The Bronze layer serves as the landing zone for all source data. Raw datasets from multiple operational systems are ingested directly from CSV files into PostgreSQL without applying business transformations. This layer preserves the original data for traceability and future reprocessing if needed.

### 🥈 Silver Layer – Cleaned & Standardized Data

The Silver layer focuses on improving data quality through cleansing and transformation processes including:

* Handling missing or invalid values
* Removing duplicate records
* Standardizing formats and data types
* Normalizing inconsistent values
* Applying business rules to ensure data consistency

The resulting datasets provide a reliable and standardized foundation for downstream analytical workloads.

### 🥇 Gold Layer – Business-Ready Data

The Gold layer contains curated datasets specifically designed for reporting and business intelligence. Data is modeled using a **Star Schema**, consisting of fact and dimension tables that enable efficient analytical queries and simplify reporting for end users.

---

# 📖 Project Overview

This project demonstrates the complete workflow of building a modern analytical data platform, including:

1. **Data Warehouse Architecture**

   * Designing a scalable data warehouse based on the Medallion Architecture (Bronze, Silver, and Gold layers).

2. **ETL Pipeline Development**

   * Extracting data from multiple source systems.
   * Transforming raw data through cleansing and standardization processes.
   * Loading processed data into the warehouse.

3. **Data Modeling**

   * Designing analytical data models using fact and dimension tables.
   * Optimizing the schema for reporting and SQL-based analytical queries.

---

# 🚀 Project Requirements

## Building the Data Warehouse (Data Engineering)

### Objective

Develop a modern PostgreSQL-based data warehouse that consolidates sales information from multiple operational systems into a unified analytical repository. The warehouse should support efficient reporting, business intelligence, and data-driven decision-making.

### Specifications

* **Data Sources**

  * Import datasets from two independent business systems (ERP and CRM), provided as CSV files.

* **Data Quality**

  * Identify and resolve data quality issues before loading data into the analytical model.
  * Ensure consistency, completeness, and accuracy across all datasets.

* **Data Integration**

  * Merge ERP and CRM data into a unified data model that provides a single source of truth for business analysis.

* **Scope**

  * Focus exclusively on the latest available dataset.
  * Historical tracking (Slowly Changing Dimensions or historization) is outside the scope of this project.

* **Documentation**

  * Provide comprehensive documentation describing the data architecture, ETL process, and analytical data model to support both technical and business users.

---

# 📂 Repository Structure

```text
data-warehouse-project/
│
├── datasets/                           # Raw ERP and CRM datasets used as source data
│
├── docs/                               # Project documentation and architecture
│
├── scripts/                            # SQL scripts for ETL and transformations
│   ├── bronze/                         # Raw data ingestion scripts
│   ├── silver/                         # Data cleansing and transformation scripts
│   ├── gold/                           # Analytical model creation scripts
│
├── tests/                              # Data validation and quality assurance scripts
│
├── README.md                           # Project documentation
├── LICENSE                             # MIT License
```

---

# 🛡️ License

This project is licensed under the [MIT License](LICENSE), allowing you to use, modify, and distribute the code for personal or commercial purposes, provided that proper attribution is included.

---

# 🌟 About Me

Hi! I'm **Sadam Habnawi**, a Physics graduate with a strong passion for working with data. My interests span across **Data Analytics**, **Data Engineering**, **Data Science**, and Business Intelligence, where I enjoy transforming raw data into valuable insights that drive informed decision-making.

I'm continuously expanding my skills by building real-world projects and exploring modern data technologies.

If you'd like to connect or discuss data-related topics, feel free to reach out through LinkedIn.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge\&logo=linkedin\&logoColor=white)](http://www.linkedin.com/in/sadam-habnawi-7621011b4)
