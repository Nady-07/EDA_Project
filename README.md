# Exploratory Data Analysis (EDA) in SQL Server

![SQL Server](https://img.shields.io/badge/SQL_SERVER-T--SQL-0B0B0B?style=flat-square&labelColor=1D1D1D)
![Focus](https://img.shields.io/badge/FOCUS-EXPLORATORY_ANALYSIS-1D1D1D?style=flat-square&labelColor=0B0B0B)
![License](https://img.shields.io/badge/LICENSE-MIT-3D3D3D?style=flat-square&labelColor=1D1D1D)

A structured **Exploratory Data Analysis (EDA)** script framework in **SQL Server (T-SQL)** designed to audit database metadata, verify date freshness, profile dimensions, quantify business magnitude, and rank top/bottom performers before building dashboards or advanced models.

[Live Portfolio ↗](https://nady-07.github.io/portfolio/#portfolio) · [Upstream Warehouse Repo](https://github.com/Nady-07/SQL_Data_Warehouse_Project) · [Next: Advanced EDA Repo](https://github.com/Nady-07/Advanced_EDA_Project)

---

## Overview & SQL Techniques

| Script | Analytical Stage | Core SQL Concepts |
| :--- | :--- | :--- |
| `01_data_exploration.sql` | **Schema & Catalog Audit** | `INFORMATION_SCHEMA.TABLES`, `INFORMATION_SCHEMA.COLUMNS` |
| `02_date_range_exploration.sql` | **Temporal Boundaries** | `MIN`, `MAX`, `DATEDIFF` across order and customer birth dates |
| `03_dimensions_exploration.sql` | **Dimensional Profiling** | `DISTINCT`, hierarchy cardinality across countries and categories |
| `04_magnitude_analysis.sql` | **Volumetric & Financial KPIs** | `GROUP BY`, `SUM`, `COUNT`, `AVG`, joins across fact & dimension tables |
| `05_measures_exploration.sql` | **Executive Summary Report** | Multi-metric KPI rollup using `UNION ALL` |
| `06_ranking_analysis.sql` | **Top / Bottom Entity Ranking** | `TOP`, `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()` window functions |

---

## Repository Structure

```text
EDA_Project/
├── sql_scripts/
│   ├── 01_data_exploration.sql          # Database metadata, table schemas, and row counts
│   ├── 02_date_range_exploration.sql    # Timeline boundaries and data freshness checks
│   ├── 03_dimensions_exploration.sql    # Customer and product categorical distribution
│   ├── 04_magnitude_analysis.sql        # Financial and volumetric checks by segment
│   ├── 05_measures_exploration.sql      # Key metric summary calculations
│   └── 06_ranking_analysis.sql          # Top/bottom performers and ranking logic
├── .gitattributes
├── .gitignore
├── LICENSE
└── README.md
```

---

## How to Run

1. Set up the `gold` Star Schema layer from [SQL_Data_Warehouse_Project](https://github.com/Nady-07/SQL_Data_Warehouse_Project) (or connect to any compatible sales warehouse database in SQL Server).
2. Execute the scripts in `sql_scripts/` sequentially (`01` through `06`) in SSMS or Azure Data Studio.

---

## License

Licensed under the [MIT License](./LICENSE).

---

**Mohamed Al Nady** — *Data & Business Intelligence Analyst*  
[Live Portfolio ↗](https://nady-07.github.io/portfolio/) · [LinkedIn](https://www.linkedin.com/in/mohamed-alnady-52b87123b) · [Email](mailto:mohamednady0@outlook.com) · [GitHub](https://github.com/Nady-07)
