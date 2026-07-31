# Data Quality Assessment

## Overview

This document evaluates the quality of the Union of Concerned Scientists (UCS) Satellite Database before preprocessing.

The assessment identifies potential data quality issues and provides recommendations that will guide the data cleaning process.

---

# Quality Dimensions

## 1. Completeness

### Observation

Several columns contain missing values.

Examples:

- Detailed Purpose
- Dry Mass (kg.)
- Power (watts)
- Expected Lifetime (yrs.)
- Multiple Unnamed columns

### Assessment

Most business-critical columns contain very few missing values.

The majority of missing values occur in unnamed or reference-related columns.

**Status:** Good

---

## 2. Accuracy

### Observation

No obvious incorrect values were identified during the initial inspection.

Numerical columns appear realistic.

Examples:

- Launch Mass
- Perigee
- Apogee
- Inclination

A detailed accuracy check will be performed during exploratory analysis.

**Status:** Good

---

## 3. Consistency

### Observation

Column naming follows a consistent structure.

Data types are appropriate.

Some reference columns and unnamed columns exist due to Excel formatting.

**Status:** Good

---

## 4. Validity

### Observation

Most attributes follow expected formats.

Examples:

- Orbit Class
- Launch Date
- Country
- Operator

Further validation will be performed after cleaning.

**Status:** Good

---

## 5. Uniqueness

### Observation

Duplicate records identified:

- Total duplicates: 7

This represents less than 0.1% of the dataset.

These records will be reviewed and removed if confirmed as exact duplicates.

**Status:** Very Good

---

## 6. Relevance

### Observation

Most columns directly support GSIP.

However:

- Source columns
- Unnamed columns

provide limited analytical value.

These columns will be reviewed during cleaning.

**Status:** Moderate

---

# Major Data Quality Issues

| Issue | Severity | Recommended Action |
|--------|----------|--------------------|
| Unnamed columns | High | Remove after verification |
| Missing values | Medium | Handle based on column importance |
| Duplicate rows | Low | Remove exact duplicates |
| Reference URL columns | Low | Evaluate business relevance |
| Missing technical attributes | Medium | Assess case-by-case |

---

# Overall Assessment

| Quality Dimension | Rating |
|-------------------|--------|
| Completeness | Good |
| Accuracy | Good |
| Consistency | Good |
| Validity | Good |
| Uniqueness | Very Good |
| Relevance | Good |

---

# Conclusion

The UCS Satellite Database demonstrates good overall data quality and is suitable for analytical processing.

The primary issues relate to unnamed columns, reference columns, missing values in selected attributes, and a small number of duplicate records.

These findings provide a clear roadmap for the data cleaning phase.