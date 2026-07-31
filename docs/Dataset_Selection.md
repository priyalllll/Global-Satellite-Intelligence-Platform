# Dataset Selection

## Selected Dataset

**Dataset Name:** Union of Concerned Scientists (UCS) Satellite Database

---

## Reason for Selection

The Union of Concerned Scientists (UCS) Satellite Database was selected as the primary data source for the Global Satellite Intelligence Platform (GSIP). This dataset provides comprehensive information about operational satellites, including satellite ownership, launch details, mission categories, orbital characteristics, operational status, and technical specifications.

The dataset closely aligns with the business objectives of GSIP by supporting country-wise analysis, operator analysis, mission classification, orbital distribution, and launch trend analysis. Its structured format, reliable source, and detailed documentation make it suitable for SQL analysis, Python-based exploratory data analysis (EDA), and Power BI dashboard development.

---

## Dataset Metadata

| Field | Value |
|--------|-------|
| **Dataset Name** | Union of Concerned Scientists (UCS) Satellite Database |
| **Source Organization** | Union of Concerned Scientists (UCS) |
| **Official Source** | https://www.ucs.org/resources/satellite-database |
| **File Format** | Microsoft Excel (.xlsx) |
| **Download Date** | July 28, 2026 |
| **Data Current Through** | May 1, 2023 |
| **Storage Location** | `data/raw/UCS_Satellite_Database.xlsx` |
| **Project Version** | GSIP Version 1.0 |

---

## Strengths

- Published by a well-known and reliable organization.
- Contains detailed information about thousands of operational satellites.
- Includes important attributes such as satellite name, country, operator, launch date, orbit class, mission purpose, operational status, and launch vehicle.
- Well-structured and easy to import into Python and PostgreSQL.
- Suitable for descriptive analytics and business intelligence dashboards.
- Closely aligns with the objectives and KPIs defined for GSIP.

---

## Limitations

- The dataset is historical and is currently updated only through **May 1, 2023**.
- It does not provide real-time satellite tracking or live orbital updates.
- Some records may contain missing or incomplete values.
- Certain advanced orbital parameters are not included.
- Additional data cleaning and preprocessing will be required before analysis.

---

## Conclusion

After evaluating multiple publicly available satellite datasets, the Union of Concerned Scientists (UCS) Satellite Database was selected as the primary dataset for the Global Satellite Intelligence Platform (GSIP).

Its comprehensive coverage, structured format, reliable source, and compatibility with the project's objectives make it the most suitable dataset for Version 1.0. The dataset provides sufficient information to support SQL analytics, Python-based exploratory data analysis, KPI generation, and interactive Power BI dashboards while maintaining a manageable scope for the project.