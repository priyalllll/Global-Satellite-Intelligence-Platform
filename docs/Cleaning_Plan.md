# Data Cleaning Plan

## Overview

This document outlines the preprocessing strategy for the Union of Concerned Scientists (UCS) Satellite Database.

The objective is to improve data quality while preserving all information required for the Global Satellite Intelligence Platform (GSIP).

No cleaning operations are performed in this document. It only defines the planned preprocessing activities.

---

# Cleaning Objectives

The preprocessing phase aims to:

- Improve overall data quality.
- Remove unnecessary information.
- Preserve business-relevant attributes.
- Ensure consistent formatting.
- Prepare the dataset for SQL, Python, and Power BI.

---

# Planned Cleaning Activities

| Task | Planned Action |
|------|----------------|
| Remove duplicate records | Remove exact duplicate rows |
| Remove unnamed columns | Remove columns with no analytical value |
| Review source/reference columns | Keep only if required; otherwise remove |
| Handle missing values | Apply different strategies based on business importance |
| Standardize column names | Rename columns using snake_case |
| Convert data types | Ensure dates and numeric fields have correct data types |
| Remove unnecessary whitespace | Trim text columns where needed |
| Check categorical consistency | Review spelling and formatting of categories |

---

# Column-Level Strategy

## Keep Without Changes

Examples:

- Country of Operator/Owner
- Operator/Owner
- Purpose
- Class of Orbit
- Date of Launch
- Launch Vehicle

Reason:

These columns directly support business analysis.

---

## Review

Examples:

- Detailed Purpose
- Dry Mass (kg.)
- Power (watts)
- Expected Lifetime (yrs.)

Reason:

These columns contain missing values but may still provide useful insights.

---

## Remove

Examples:

- Unnamed: 28
- Unnamed: 37–67
- Empty formatting columns

Reason:

These columns contain little or no meaningful information and do not contribute to project objectives.

---

## Reference Columns

Columns beginning with:

- Source
- Source.1
- Source.2
- ...

will be evaluated.

If they are used only as documentation links, they will be removed from the analytical dataset while remaining available in the original raw dataset.

---

# Missing Value Strategy

| Situation | Action |
|-----------|--------|
| Essential column with few missing values | Investigate and retain |
| Optional column with many missing values | Evaluate business value |
| Nearly empty column | Remove if not required |

---

# Duplicate Strategy

- Identify duplicate records.
- Verify duplicates.
- Remove only exact duplicate rows.
- Document the number of removed records.

---

# Data Type Strategy

- Dates → datetime
- Numeric values → int or float
- Categories → string/object

---

# Output Dataset

The cleaned dataset will be saved as:

```
data/processed/satellites_cleaned.csv
```

The original raw dataset will remain unchanged.

---

# Expected Result

The cleaned dataset should:

- Contain only relevant columns.
- Have minimal missing values.
- Contain no duplicate records.
- Use consistent column names.
- Be ready for SQL import.
- Be ready for Python EDA.
- Be ready for Power BI dashboards.