{% macro function(d) %}

case when ({{d}})< current_timestamp() then 'past'
else 'future'
END AS def_time

{% endmacro %}

{% macro function1(c) %}
case 
    when month({{ c }}) in (12, 1, 2) then 'winter'
    when month({{ c }}) in (3, 4, 5) then 'spring'
    when month({{ c }}) in (6, 7, 8) then 'summer'
    else 'fall'
end
{% endmacro %}
