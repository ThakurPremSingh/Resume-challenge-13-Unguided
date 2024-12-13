
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