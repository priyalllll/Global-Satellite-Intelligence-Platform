# Global Satellite Intelligence Platform (GSIP)

> An end-to-end Data Analytics project that transforms global satellite data into actionable business insights using PostgreSQL, SQL, Python, and Power BI.

---

# Project Overview

The **Global Satellite Intelligence Platform (GSIP)** is a complete data analytics project designed to analyze the global satellite ecosystem. The project demonstrates the entire analytics lifecycle—from raw data collection and preprocessing to relational database design, SQL analysis, business intelligence reporting, and interactive dashboard development.

The platform provides insights into satellite launches, orbit classifications, mission purposes, launch vehicles, operator performance, and country-wise satellite distribution through an interactive multi-page Power BI dashboard.

---

# Problem Statement

The rapidly growing satellite industry generates massive amounts of publicly available data. However, transforming this raw data into meaningful business insights requires effective data engineering, database management, SQL analytics, and visualization.

GSIP addresses this challenge by building a centralized analytics platform that enables exploration of satellite trends, operational statistics, and strategic insights through an efficient analytics pipeline.

---

# Objectives

- Design a structured PostgreSQL database
- Clean and preprocess real-world satellite data
- Perform SQL-based analytical queries
- Create reusable SQL Views for reporting
- Build interactive Power BI dashboards
- Generate business insights using data storytelling
- Demonstrate an end-to-end Data Analytics workflow

---

# Technology Stack

| Category | Technology |
|-----------|------------|
| Programming Language | Python |
| Data Processing | Pandas, NumPy |
| Database | PostgreSQL |
| Query Language | SQL |
| Visualization | Power BI |
| Notebook Environment | Jupyter Notebook |
| Version Control | Git & GitHub |
| Documentation | Markdown |

---

# Analytics Workflow

```text
Raw Dataset
      │
      ▼
Data Cleaning & Preprocessing
      │
      ▼
PostgreSQL Database Design
      │
      ▼
SQL Validation & Analytics
      │
      ▼
SQL Views Creation
      │
      ▼
Power BI Dashboard
      │
      ▼
Business Insights
```

---

# Database Design

The project uses PostgreSQL to store and manage satellite records efficiently.

Key database operations include:

- Database creation
- Table creation
- Data import
- Data validation
- SQL aggregations
- SQL Views
- Business queries

---

# Dashboard Pages

The Power BI dashboard consists of four interactive pages:

## 1. Executive Overview

Provides a high-level summary including:

- Total Satellites
- Total Countries
- Total Operators
- Mission Types
- Average Satellite Lifetime
- Launch Trend
- Orbit Distribution
- Top Countries
- Top Operators

---

## 2. Country & Operator Analysis

Provides detailed insights into:

- Top satellite-owning countries
- Leading satellite operators
- Country statistics table
- Operator comparisons

---

## 3. Orbit & Mission Analysis

Analyzes:

- Orbit Class Distribution
- Mission Distribution
- Orbit Statistics
- Average Apogee
- Average Perigee
- Average Orbital Period

---

## 4. Launch Analysis

Focuses on:

- Satellite Launch Trend
- Top Launch Vehicles
- Launch Vehicle Statistics
- Payload Analysis

---

# Dashboard Preview

## Executive Overview

![Executive Overview](dashboard/dashboard_screenshots/executive_overview.png)

---

## Country & Operator Analysis

![Country Analysis](dashboard/dashboard_screenshots/country_operator_analysis.png)

---

## Orbit & Mission Analysis

![Orbit Analysis](dashboard/dashboard_screenshots/orbit_mission_analysis.png)

---

## Launch Analysis

![Launch Analysis](dashboard/dashboard_screenshots/launch_analysis.png)

---

# Key Business Insights

The analysis revealed several meaningful trends:

- Low Earth Orbit (LEO) contains the majority of operational satellites.
- The United States owns the largest number of satellites globally.
- SpaceX is currently the leading satellite operator.
- Communication satellites dominate overall mission categories.
- Satellite launches have accelerated significantly during the last decade.
- Falcon 9 is the most frequently used launch vehicle.

---

# Key Features

- Designed a PostgreSQL relational database containing **7,553+ satellite records**
- Implemented SQL validation and analytical queries
- Created reusable SQL Views for reporting
- Built a four-page interactive Power BI dashboard
- Developed KPI cards, trend analysis, distribution charts, and comparison dashboards
- Generated business-oriented insights for decision making
- Structured the project using industry-standard folder organization

---

# Project Structure

```text
GSIP/
│
├── data/
│   └── satellites.csv
│
├── database/
│   ├── 01_create_database.sql
│   ├── 02_create_table.sql
│   ├── 03_insert_data.sql
│   └── 04_validation_queries.sql
│
├── dashboard/
│   ├── GSIP.pbix
│   └── dashboard_screenshots/
│       ├── executive_overview.png
│       ├── country_operator_analysis.png
│       ├── orbit_mission_analysis.png
│       └── launch_analysis.png
│
├── docs/
│   ├── Database_Design.md
│   └── Business_Insights.md
│
├── README.md
├── LICENSE
└── .gitignore
```

---

# Future Improvements

Potential future enhancements include:

- Real-time satellite API integration
- Machine Learning-based launch prediction
- Interactive geospatial satellite visualization
- AI-generated business insights
- Web-based analytics dashboard
- Automated report generation

---

# Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis (EDA)
- PostgreSQL
- SQL
- Database Design
- SQL Views
- Data Validation
- Business Analytics
- Data Visualization
- Power BI
- Dashboard Development
- Git & GitHub
- Documentation

---

# Author

**Priyal Rathore**

B.Tech Computer Engineering  
SVKM's NMIMS Indore

GitHub: https://github.com/<your-github-username>

LinkedIn: https://linkedin.com/in/<your-linkedin-profile>

---

# License

This project is licensed under the MIT License. See the LICENSE file for more information.