-- Query 42
SELECT
    EXTRACT(YEAR FROM launch_date) AS launch_year,
    COUNT(*) AS total_satellites
FROM satellites
WHERE launch_date IS NOT NULL
GROUP BY launch_year
ORDER BY launch_year;

-- Query 43
SELECT
    launch_vehicle,
    COUNT(*) AS total_launches
FROM satellites
GROUP BY launch_vehicle
ORDER BY total_launches DESC
LIMIT 10;

-- Query 44
SELECT
    launch_site,
    COUNT(*) AS total_launches
FROM satellites
GROUP BY launch_site
ORDER BY total_launches DESC
LIMIT 10;

-- Query 45
SELECT
    EXTRACT(YEAR FROM launch_date) AS launch_year,
    operator_country,
    COUNT(*) AS satellites
FROM satellites
WHERE launch_date IS NOT NULL
GROUP BY launch_year, operator_country
ORDER BY launch_year, satellites DESC;

-- Query 46
SELECT
    EXTRACT(YEAR FROM launch_date) AS launch_year,
    ROUND(AVG(launch_mass_kg), 2) AS avg_launch_mass
FROM satellites
WHERE launch_date IS NOT NULL
GROUP BY launch_year
ORDER BY launch_year;

-- Query 47
SELECT
    EXTRACT(YEAR FROM launch_date) AS launch_year,
    ROUND(AVG(expected_lifetime_yrs), 2) AS avg_lifetime
FROM satellites
WHERE launch_date IS NOT NULL
GROUP BY launch_year
ORDER BY launch_year;

-- Query 48
SELECT
    EXTRACT(YEAR FROM launch_date) AS launch_year,
    COUNT(*) AS total_launches
FROM satellites
WHERE launch_date IS NOT NULL
GROUP BY launch_year
ORDER BY total_launches DESC
LIMIT 1;

-- Query 49
SELECT
    launch_year,
    yearly_launches,
    SUM(yearly_launches) OVER (ORDER BY launch_year) AS cumulative_satellites
FROM (
    SELECT
        EXTRACT(YEAR FROM launch_date) AS launch_year,
        COUNT(*) AS yearly_launches
    FROM satellites
    WHERE launch_date IS NOT NULL
    GROUP BY launch_year
) AS yearly_data
ORDER BY launch_year;

-- Query 50
SELECT
    launch_vehicle,
    ROUND(AVG(launch_mass_kg), 2) AS avg_launch_mass
FROM satellites
GROUP BY launch_vehicle
HAVING COUNT(*) >= 10
ORDER BY avg_launch_mass DESC
LIMIT 5;

-- Query 51
SELECT
    launch_site,
    COUNT(DISTINCT launch_vehicle) AS unique_launch_vehicles
FROM satellites
GROUP BY launch_site
ORDER BY unique_launch_vehicles DESC;



