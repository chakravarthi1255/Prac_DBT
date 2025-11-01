with cte as (
    select STARTED_AT,Date(STARTED_AT),Month(STARTED_AT),
    Hour(STARTED_AT) as hour_started_At,
    Dayofweek(STARTED_AT),
    case when (dayname(STARTED_AT) in('Sat','Sun')) then 'Holiday'
        else 'businessday'
    end as day_name,
    {{function1('STARTED_AT')}},
    {{function('STARTED_AT')}}

    from {{ source('Learning_dbt', 'BIKERS') }}
)
select * from cte
