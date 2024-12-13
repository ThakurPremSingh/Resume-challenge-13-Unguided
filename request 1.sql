with cte as (SELECT 
		city_name, f.city_id, count(f.trip_id) as total_trips,
		Round(sum(fare_amount)/sum(distance_travelled_km),2) as avg_fare_per_km,
		Round(avg(fare_amount),2) as avg_fare_per_trip,
        sum(fare_amount) as individual_contribution
	FROM fact_trips f
    join dim_city c
		on c.city_id = f.city_id
	group by c.city_id)
    select city_name, total_trips, avg_fare_per_km, avg_fare_per_trip,
		Round(individual_contribution*100/(SELECT sum(fare_amount) FROM fact_trips),2) as pct_contribution_to_total_trips 
    from cte;
   
        
        
--------------------------
