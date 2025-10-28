select * from {{ source('Learning_dbt', 'BIKERS') }} linit 5;

