# Data Understanding

## Overview

The Union of Concerned Scientists (UCS) Satellite Database is the primary dataset selected for the Global Satellite Intelligence Platform (GSIP). The dataset contains comprehensive information about operational satellites worldwide, including ownership, launch details, orbital characteristics, mission categories, technical specifications, and reference information.

The objective of this phase is to understand the dataset's structure, contents, and overall quality before performing data profiling, data quality assessment, and cleaning.

---

# Dataset Information

| Attribute | Value |
|-----------|-------|
| Dataset Name | Union of Concerned Scientists (UCS) Satellite Database |
| File Name | UCS-Satellite-Database 5-1-2023.xlsx |
| File Format | Microsoft Excel (.xlsx) |
| Source Organization | Union of Concerned Scientists (UCS) |
| Number of Worksheets | 3 |
| Data Worksheet | Sheet1 |
| Empty Worksheets | Sheet2, Sheet3 |
| Storage Location | data/raw/UCS-Satellite-Database 5-1-2023.xlsx |
| Download Date | July 28, 2026 |
| Data Current Through | May 1, 2023 |

---

# Dataset Dimensions

| Metric | Value |
|---------|------:|
| Number of Rows | 7,560 |
| Number of Columns | 68 |

---

# Dataset Contents

The dataset includes information related to:

- Satellite identification
- Country and organization ownership
- Satellite operators
- Mission purpose
- Orbit classification
- Orbital parameters
- Launch information
- Satellite mass and power
- Contractors
- Registration identifiers
- Source references

---

# Objectives of Data Understanding

- Understand the overall dataset structure.
- Identify worksheets containing useful data.
- Determine the dataset dimensions.
- Review available attributes.
- Inspect data types.
- Identify potential quality issues.
- Verify the dataset's suitability for GSIP.

---

# Initial Observations

The following observations were made during the initial inspection:

- The Excel workbook contains three worksheets.
- Only **Sheet1** contains data.
- Sheet2 and Sheet3 are empty.
- The dataset contains 7,560 records and 68 attributes.
- Several columns are named **Unnamed**, indicating empty or unused Excel columns.
- Multiple source/reference columns are present.
- The dataset contains both categorical and numerical attributes.
- Date-related fields are available for launch analysis.
- The dataset appears comprehensive and suitable for analytical reporting.

---

# Suitability for GSIP

The dataset supports the primary objectives of the Global Satellite Intelligence Platform (GSIP), including:

- Country-wise satellite analysis
- Operator analysis
- Mission analysis
- Orbit analysis
- Launch trend analysis
- Technical satellite analysis
- Business intelligence dashboard development

---

# Conclusion

The Union of Concerned Scientists (UCS) Satellite Database is a comprehensive and reliable source for GSIP Version 1. The dataset provides sufficient information to support SQL analysis, Python-based exploratory data analysis (EDA), KPI generation, and interactive Power BI dashboards. The next phase will focus on detailed data profiling to assess data quality and prepare for preprocessing.