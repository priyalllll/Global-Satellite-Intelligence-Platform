# Data Profile

## Overview

Data profiling was performed on the Union of Concerned Scientists (UCS) Satellite Database to assess its structure, completeness, and quality before data cleaning.

The profiling results provide evidence-based insights that will guide preprocessing decisions in the next phase.

---

# Dataset Summary

| Metric | Value |
|--------|------|
| Number of Rows | 7,560 |
| Number of Columns | 68 |
| File Format | Microsoft Excel (.xlsx) |
| Memory Usage | 19.58 MB |
| Duplicate Records | 7 |

---

# Data Type Distribution

| Data Type | Count |
|-----------|------:|
| Object | 59 |
| Float64 | 8 |
| Int64 | 1 |

---

# Missing Value Analysis

The dataset contains several columns with a high percentage of missing values, primarily unnamed columns created during the Excel export process.

Examples include:

- Unnamed: 28 → 99.93% missing
- Unnamed: 37–52 → approximately 93.60% missing
- Unnamed: 56–58 → approximately 93.58% missing

These columns will be evaluated during data cleaning and are likely to be removed due to their limited analytical value.

---

# Duplicate Records

A total of **7 duplicate records** were identified, representing less than 0.1% of the dataset.

These duplicates will be reviewed and removed during the cleaning phase if confirmed as exact duplicates.

---

# Initial Findings

- The dataset is well-structured and suitable for analytics.
- Most missing values occur in unnamed columns rather than business-related attributes.
- The dataset contains a rich combination of categorical and numerical attributes.
- The memory footprint is small enough for efficient processing.
- The dataset is suitable for SQL, Python, PostgreSQL, and Power BI.

---

# Conclusion

The profiling results indicate that the dataset is of good overall quality. The primary data quality issues relate to empty unnamed columns and a small number of duplicate records. These findings provide a clear basis for the upcoming data quality assessment and data cleaning phases.