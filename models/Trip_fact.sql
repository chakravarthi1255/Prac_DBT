with Trips as (
    select 
    RIDE_ID,
    RIDEABLE_TYPE,
    Date(STARTED_AT),
    START_STATION_ID,
    END_STATION_ID,
    MEMBER,
    Timestampdiff(second,STARTED_AT,ENDED_AT)
    from {{ source('Learning_dbt', 'BIKERS') }}
)select * from Trips