{{config(materialized='table')}}

WITH flights_one_month AS (
    SELECT * 
    FROM {{source('staging_data', 'flights')}}
    WHERE DATE_PART('month', flight_date) = 1 
)
SELECT * FROM flights_one_month