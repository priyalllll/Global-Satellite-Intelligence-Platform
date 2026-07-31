SELECT
COUNT(*) AS null_launch_dates
FROM satellites
WHERE launch_date IS NULL;

SELECT
COUNT(DISTINCT operator_country)
AS total_operator_countries
FROM satellites;

SELECT
COUNT(DISTINCT operator_name)
AS total_operators
FROM satellites;

SELECT
MIN(launch_date) AS first_launch,
MAX(launch_date) AS latest_launch
FROM satellites;

SELECT
orbit_class,
COUNT(*) AS satellites
FROM satellites
GROUP BY orbit_class
ORDER BY satellites DESC;

SELECT
operator_country,
COUNT(*) AS satellites
FROM satellites
GROUP BY operator_country
ORDER BY satellites DESC
LIMIT 10;

