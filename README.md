# Resume-challenge-13-Unguided
Transportation domain and Tools used for analysis are MySQL, Power BI and Excel 

# Request 1
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
# Request 2
Power query in Power BI
# Request 3
Power query in Power BI
# Request 4
select 
	city_name as city_name,
    count(passenger_type) as total_new_passengers
from fact_trips t
	join dim_city c
		on c.city_id=t.city_id
	where passenger_type = "new" 
    group by t.city_id
    order by total_new_passengers DESC;
# Request 5
SELECT city_name,
	t.city_id, month(date) as month_name, sum(fare_amount) as revenue
FROM fact_trips t
	join dim_city c
    on c.city_id=t.city_id
group by month_name, t.city_id;

---------------------------------------
select city_id,sum(fare_amount) as percentage_contributtion 
    from fact_trips
    group by city_id ;
    
----------------------------------
with cte as (SELECT
	t.city_id, month(date) as month_name
FROM fact_trips t
	join dim_city c
    on c.city_id=t.city_id
group by month_name, t.city_id)
 
 select *,
	(case 
		when month_name = '1' then 'January'
		when month_name = '2' then 'February'
		when month_name = '3' then 'March'
		when month_name = '4' then 'April'
		when month_name = '5' then 'May'
		when month_name = '6' then 'June'
        end) as mon from cte;
# Request 6
with cte as(SELECT
	fp.city_id as city_id, month(month) as month_name, 
    sum(total_passengers) as total_passengers,
    sum(repeat_passengers) as repeat_passengers
FROM fact_passenger_summary fp
	join dim_city c
    on c.city_id=fp.city_id
group by month_name, fp.city_id)

 select *,
	(case 
		when month_name = '1' then 'January'
		when month_name = '2' then 'February'
		when month_name = '3' then 'March'
		when month_name = '4' then 'April'
		when month_name = '5' then 'May'
		when month_name = '6' then 'June'
        end) as mon from cte;
        
------------------------------------------

select city_id, sum(repeat_passengers) as repeat_city_passengers from fact_passenger_summary group by city_id;

select city_id, sum(total_passengers) as total_repeat_city_passengers from fact_passenger_summary group by city_id;

select * from dim_city;
