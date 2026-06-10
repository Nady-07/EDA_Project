# Exploratory Data Analysis (EDA) Project

## 📌 Project Overview
This repository contains a comprehensive Exploratory Data Analysis (EDA) structured framework using SQL. The objective of this project is to investigate an underlying relational database, audit data quality, examine dimensional constraints, and extract preliminary business insights across dates, categories, and key metrics before advanced modeling or dashboarding.

---

## 🛠️ Tech Stack & SQL Concepts
* **Database Engine:** SQL Server (T-SQL)
* **Advanced SQL Techniques Utilized:**
  * **System Catalog Auditing:** Querying `INFORMATION_SCHEMA` to discover database architecture.
  * **Time-Series Analysis:** Evaluating data distributions across continuous date ranges.
  * **Dimensional Analysis:** Uncovering granular relationships within dimension tables (e.g., customers, products).
  * **Descriptive Statistics:** Implementing aggregations (`SUM`, `AVG`, `COUNT`) to measure business magnitude.
  * **Ranking & Window Functions:** Using `ROW_NUMBER()`, `RANK()`, and `DENSE_RANK()` for structural segmentation.

---

## 📁 Repository Structure
The scripts are organized sequentially to reflect a professional data engineering and analysis pipeline:

```text
├── sql_scripts/
│   ├── 01_data_exploration.sql          # Database metadata, table schemas, and row counts
│   ├── 02_date_range_exploration.sql     # Timeline boundaries, tracking data freshness/gaps
│   ├── 03_dimensions_exploration.sql     # Customer/product distribution and categorical analysis
│   ├── 04_magnitude_analysis.sql         # High-level financial or transactional volumetric checks
│   ├── 05_measures_exploration.sql       # Key metric calculations and statistical distributions
│   └── 06_ranking_analysis.sql          # Top-performing entities and segmentation logic
├── .gitattributes
├── .gitignore
└── LICENSE