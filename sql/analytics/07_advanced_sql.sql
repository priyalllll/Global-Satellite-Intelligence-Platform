-- Query 52
WITH operator_counts AS (
    SELECT
        operator_country,
        operator_name,
        COUNT(*) AS satellite_count,
        ROW_NUMBER() OVER (
            PARTITION BY operator_country
            ORDER BY COUNT(*) DESC
        ) AS rn
    FROM satellites
    GROUP BY operator_country, operator_name
)

SELECT
    operator_country,
    operator_name,
    satellite_count
FROM operator_counts
WHERE rn = 1
ORDER BY satellite_count DESC;

-- Query 53
SELECT
    operator_country,
    COUNT(*) AS satellites,
    RANK() OVER (
        ORDER BY COUNT(*) DESC
    ) AS country_rank
FROM satellites
GROUP BY operator_country;

-- Query 54
SELECT
    operator_name,
    COUNT(*) AS satellites,
    DENSE_RANK() OVER (
        ORDER BY COUNT(*) DESC
    ) AS operator_rank
FROM satellites
GROUP BY operator_name;

-- Query 55
WITH yearly_launches AS (
    SELECT
        EXTRACT(YEAR FROM launch_date) AS launch_year,
        COUNT(*) AS yearly_total
    FROM satellites
    WHERE launch_date IS NOT NULL
    GROUP BY launch_year
)

SELECT
    launch_year,
    yearly_total,
    SUM(yearly_total) OVER (
        ORDER BY launch_year
    ) AS cumulative_total
FROM yearly_launches;

-- Query 56
WITH yearly_launches AS (
    SELECT
        EXTRACT(YEAR FROM launch_date) AS launch_year,
        COUNT(*) AS yearly_total
    FROM satellites
    WHERE launch_date IS NOT NULL
    GROUP BY launch_year
)

SELECT
    launch_year,
    yearly_total,
    yearly_total -
    LAG(yearly_total) OVER (
        ORDER BY launch_year
    ) AS growth_from_previous_year
FROM yearly_launches;

-- Query 57
WITH yearly_launches AS (
    SELECT
        EXTRACT(YEAR FROM launch_date) AS launch_year,
        COUNT(*) AS yearly_total
    FROM satellites
    WHERE launch_date IS NOT NULL
    GROUP BY launch_year
)

SELECT
    launch_year,
    yearly_total,
    LEAD(yearly_total) OVER (
        ORDER BY launch_year
    ) AS next_year_launches
FROM yearly_launches;

-- Query 58
SELECT
    operator_country,
    COUNT(*) AS satellites,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (),
        2
    ) AS percentage_share
FROM satellites
GROUP BY operator_country
ORDER BY satellites DESC;

-- Query 59
WITH ranked_operators AS (
    SELECT
        operator_country,
        operator_name,
        COUNT(*) AS satellites,
        ROW_NUMBER() OVER (
            PARTITION BY operator_country
            ORDER BY COUNT(*) DESC
        ) AS rn
    FROM satellites
    GROUP BY operator_country, operator_name
)

SELECT *
FROM ranked_operators
WHERE rn <= 3
ORDER BY operator_country, rn;

-- Query 60
SELECT
    purpose,
    ROUND(AVG(expected_lifetime_yrs),2) AS avg_lifetime,
    RANK() OVER (
        ORDER BY AVG(expected_lifetime_yrs) DESC
    ) AS lifetime_rank
FROM satellites
GROUP BY purpose;



