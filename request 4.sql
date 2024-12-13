select 
	city_name as city_name,
    count(passenger_type) as total_new_passengers
from fact_trips t
	join dim_city c
		on c.city_id=t.city_id
	where passenger_type = "new" 
    group by t.city_id
    order by total_new_passengers DESC;
