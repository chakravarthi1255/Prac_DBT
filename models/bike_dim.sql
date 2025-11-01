with bike_cte as (
    select 
    START_STATION_NAME,
    START_STATION_ID,
    END_STATION_NAME,
    END_STATION_ID,
    START_LATITUDE,
    START_LONGITUDE
    from {{ source('Learning_dbt', 'BIKERS') }}
    limit  10
) select * from bike_cte 