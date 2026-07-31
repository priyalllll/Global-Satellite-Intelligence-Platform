-- ==================================================
-- Module 1: Business Overview Dashboard
-- ==================================================

-- Query 1: Total Satellites
SELECT COUNT(*) AS total_satellites
FROM satellites;

-- Query 2: Total Operator Countries
SELECT COUNT(DISTINCT operator_country) AS total_operator_countries
FROM satellites;

-- Query 3: Total Operators
SELECT COUNT(DISTINCT operator_name) AS total_operators
FROM satellites;

-- Query 4: Total Orbit Classes
SELECT COUNT(DISTINCT orbit_class) AS total_orbit_classes
FROM satellites;

-- Query 5: Total Mission Types
SELECT COUNT(DISTINCT purpose) AS total_purposes
FROM satellites;

-- Query 6: Dataset Time Range
SELECT
    MIN(launch_date) AS first_launch,
    MAX(launch_date) AS latest_launch
FROM satellites;

-- Query 7: Average Launch Mass
SELECT
    ROUND(AVG(launch_mass_kg), 2) AS average_launch_mass
FROM satellites;

-- Query 8: Average Expected Lifetime
SELECT
    ROUND(AVG(expected_lifetime_yrs), 2) AS average_lifetime_years
FROM satellites;

-- Query 9: Largest Satellite by Launch Mass
SELECT
    satellite_name,
    launch_mass_kg
FROM satellites
ORDER BY launch_mass_kg DESC
LIMIT 1;

-- Query 10: Oldest Satellite
SELECT
    satellite_name,
    launch_date
FROM satellites
ORDER BY launch_date
LIMIT 1;

-- ==================================================
-- Module 2 : Country Analysis
-- ==================================================

SELECT
    operator_country,
    COUNT(*) AS total_satellites
FROM satellites
GROUP BY operator_country
ORDER BY total_satellites DESC
LIMIT 10;

SELECT
    operator_country,
    COUNT(*) AS total_satellites,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM satellites),
        2
    ) AS percentage_share
FROM satellites
GROUP BY operator_country
ORDER BY total_satellites DESC
LIMIT 10;

SELECT
    operator_country,
    COUNT(*) AS total_satellites
FROM satellites
GROUP BY operator_country
HAVING COUNT(*) > 100
ORDER BY total_satellites DESC;

SELECT
    operator_country,
    ROUND(AVG(launch_mass_kg),2) AS avg_launch_mass
FROM satellites
GROUP BY operator_country
ORDER BY avg_launch_mass DESC;

SELECT
    operator_country,
    MIN(launch_date) AS first_launch
FROM satellites
GROUP BY operator_country
ORDER BY first_launch;

SELECT
    operator_country,
    MAX(launch_date) AS latest_launch
FROM satellites
GROUP BY operator_country
ORDER BY latest_launch DESC;

SELECT
    operator_country,
    COUNT(DISTINCT operator_name) AS total_operators
FROM satellites
GROUP BY operator_country
ORDER BY total_operators DESC;

SELECT
    operator_country,
    COUNT(*) AS satellites,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS country_rank
FROM satellites
GROUP BY operator_country;
