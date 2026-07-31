# Changelog

All notable changes to the Global Satellite Intelligence Platform (GSIP) project will be documented in this file.

---

## Version 1.0.0 – Project Foundation

### Phase 1 – Project Planning
- Defined Product Vision.
- Documented Problem Statement.
- Established Project Objectives.
- Identified Stakeholders.
- Defined Project Scope.
- Created KPIs and Metrics.
- Defined Success Criteria.
- Developed Product Roadmap.

### Phase 2 – Data Acquisition & Understanding
- Researched available satellite datasets.
- Evaluated candidate datasets.
- Selected the UCS Satellite Database.
- Downloaded and organized the raw dataset.
- Performed data understanding and initial inspection.
- Created the Data Dictionary.
- Conducted Data Profiling.
- Performed Data Quality Assessment.
- Prepared the Data Cleaning Plan.

### Phase 3 – Data Cleaning & Preprocessing
- Created a working copy of the dataset.
- Removed 7 duplicate records.
- Removed 32 unnamed columns.
- Removed source/reference columns.
- Renamed columns using SQL-friendly `snake_case`.
- Removed high-missing, low-value columns.
- Validated data types.
- Prepared the cleaned dataset for PostgreSQL and Power BI.
## Version 1.1.0 – PostgreSQL Integration

### Phase 4 – Database Design

- Installed PostgreSQL 18 and pgAdmin 4.
- Created the GSIP database.
- Designed the `satellites` table with appropriate data types.
- Added `satellite_id` as the primary key.
- Imported the cleaned satellite dataset into PostgreSQL.
- Prepared the database for SQL analytics and Power BI integration.