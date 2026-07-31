# Data Dictionary

## Overview

This document describes the attributes available in the Union of Concerned Scientists (UCS) Satellite Database used for the Global Satellite Intelligence Platform (GSIP).

The purpose of this document is to provide a clear understanding of each attribute, its data type, business relevance, and whether it will be used in the project.

---

# 1. Satellite Identification

| Column Name | Data Type | Description | Keep? |
|--------------|----------|-------------|--------|
| Name of Satellite, Alternate Names | Text | Common name or alternate names of the satellite. | Yes |
| Current Official Name of Satellite | Text | Official registered satellite name. | Yes |

---

# 2. Ownership Information

| Column Name | Data Type | Description | Keep? |
|--------------|----------|-------------|--------|
| Country of Operator/Owner | Text | Country responsible for the satellite. | Yes |
| Operator/Owner | Text | Organization operating or owning the satellite. | Yes |

---

# 3. Mission Information

| Column Name | Data Type | Description | Keep? |
|--------------|----------|-------------|--------|
| Users | Text | Primary users of the satellite. | Yes |
| Purpose | Text | General mission category. | Yes |
| Detailed Purpose | Text | Detailed mission description. | Review |

---

# 4. Orbital Information

| Column Name | Data Type | Description | Keep? |
|--------------|----------|-------------|--------|
| Class of Orbit | Text | Orbit classification (LEO, MEO, GEO, etc.). | Yes |
| Type of Orbit | Text | Orbit subtype. | Yes |
| Longitude of GEO (degrees) | Numeric | Longitude for GEO satellites. | Yes |
| Perigee (km) | Numeric | Minimum orbital altitude. | Yes |
| Apogee (km) | Numeric | Maximum orbital altitude. | Yes |
| Eccentricity | Numeric | Orbit eccentricity. | Yes |
| Inclination (degrees) | Numeric | Orbital inclination. | Yes |
| Period (minutes) | Numeric | Time required to complete one orbit. | Yes |

---

# 5. Technical Specifications

| Column Name | Data Type | Description | Keep? |
|--------------|----------|-------------|--------|
| Launch Mass (kg.) | Numeric | Mass at launch. | Yes |
| Dry Mass (kg.) | Numeric | Satellite mass without fuel. | Review |
| Power (watts) | Numeric | Electrical power generation. | Review |
| Expected Lifetime (yrs.) | Numeric | Expected operational lifetime. | Yes |

---

# 6. Launch Information

| Column Name | Data Type | Description | Keep? |
|--------------|----------|-------------|--------|
| Date of Launch | Date | Launch date. | Yes |
| Launch Site | Text | Launch location. | Yes |
| Launch Vehicle | Text | Rocket used for launch. | Yes |

---

# 7. Manufacturing Information

| Column Name | Data Type | Description | Keep? |
|--------------|----------|-------------|--------|
| Contractor | Text | Manufacturing organization. | Yes |
| Country of Contractor | Text | Contractor's country. | Yes |

---

# 8. Registration Information

| Column Name | Data Type | Description | Keep? |
|--------------|----------|-------------|--------|
| COSPAR Number | Text | International satellite identifier. | Yes |
| NORAD Number | Numeric | NORAD catalog number. | Yes |

---

# 9. Source & Reference Columns

These columns contain URLs and references used by UCS for documentation purposes.

Examples include:

- Source
- Source.1
- Source.2
- Source.3
- ...

These columns are **not required** for business analytics and will likely be removed during data cleaning.

---

# 10. Unnamed Columns

The dataset contains multiple columns named:

- Unnamed: 28
- Unnamed: 29
- ...
- Unnamed: 67

These appear to be empty or formatting-related columns created during Excel export.

These columns will be evaluated during data profiling and are expected to be removed.

---

# Summary

The dataset contains a mix of categorical, numerical, date, identifier, and reference fields. The majority of the business-relevant columns will be retained for analysis, while reference and empty columns will be evaluated during the data cleaning phase.