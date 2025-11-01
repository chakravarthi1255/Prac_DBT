with cte as (
    select STARTED_AT,Date(STARTED_AT),Month(STARTED_AT),
    Hour(STARTED_AT) as hour_started_At,
    Dayofweek(STARTED_AT),
    case when (dayname(STARTED_AT) in('Sat','Sun')) then 'Holiday'
        else 'businessday'
    end as day_name,
    case when month(STARTED_AT) in (12,1,2) then 'winter'
         when month(STARTED_AT) in (3,4,5) then 'Spring'
         when month(STARTED_AT) in (6,7,8) then 'summer'
         else 'fall'
    end as month_wise,
    from {{ source('Learning_dbt', 'BIKERS') }}
)
select * from cte
