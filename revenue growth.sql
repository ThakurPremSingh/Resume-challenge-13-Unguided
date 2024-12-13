

with cte as (
SELECT
	t.city_id as city_id, month(date) as month_name, sum(t.fare_amount) as fare_amount
FROM fact_trips t
	join dim_city c
    on c.city_id=t.city_id
group by month_name, t.city_id
)
 select *, Round(fare_amount*100/(SELECT sum(fare_amount) FROM fact_trips),2) as monthly_revenue_growth,
	(case 
		when month_name = '1' then 'January'
		when month_name = '2' then 'February'
		when month_name = '3' then 'March'
		when month_name = '4' then 'April'
		when month_name = '5' then 'May'
		when month_name = '6' then 'June'
        end) as mon from cte;
        
        
select city_id,sum(fare_amount) as monthly_revenue_growth from fact_trips group by city_id; /*day wise revenue*/

-------------------------------------------
SELECT * FROM trips_db.fact_trips;
------------------------------


/*weekday vs weekend trip count*/

with cte as 
(SELECT count(trip_id) as trip_count,d.date as date,day_type,city_id as city_id FROM trips_db.fact_trips f 
join dim_date d
on d.date=f.date 
where day_type="weekday"
group by city_id,date
) 
select city_id, sum(trip_count) weekday_trip_count from cte group by cte.city_id;

with cte as 
(SELECT count(trip_id) as trip_count,d.date as date,day_type,city_id as city_id FROM trips_db.fact_trips f 
join dim_date d
on d.date=f.date 
where day_type="weekend"
group by city_id,date
) 
select city_id, sum(trip_count) as weekend_trip_count from cte group by cte.city_id;