WITH airports_regions_join AS (
    SELECT * 
    FROM {{source('staging_data', 'airports')}}
    LEFT JOIN {{source('staging_data', 'regions')}}
    USING (country)
)
SELECT * FROM airports_regions_join