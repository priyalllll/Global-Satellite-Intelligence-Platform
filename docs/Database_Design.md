# Database Design

## Overview

The Global Satellite Intelligence Platform (GSIP) stores cleaned satellite information in a PostgreSQL relational database.

The database is designed to support SQL analytics, Python integration, and Power BI dashboards.

---

# Database Name

gsip

---

# Table Name

satellites

---

# Primary Purpose

The satellites table stores cleaned information about operational satellites worldwide.

The data supports:

- Country analysis
- Operator analysis
- Mission analysis
- Orbit analysis
- Launch trend analysis
- Power BI reporting

---

# Data Source

Union of Concerned Scientists (UCS) Satellite Database

---

# Database Type

Relational Database

PostgreSQL

---

# Expected Records

Approximately 7,553

---

# Expected Columns

Approximately 24

---

# Future Expansion

Future versions may include:

- launch_sites
- countries
- operators
- launch_vehicles
- manufacturers

using normalized relational tables.