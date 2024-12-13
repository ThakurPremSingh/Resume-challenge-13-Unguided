/*city_name
month
total passengers
repeat passengers
monthly repeat passenger rate %
city repeat passenger rate*/

------------------------------------------------
select city_name from dim_city;
select * from fact_trips;
SELECT * FROM trips_db.fact_passenger_summary;
------------------------------------------------------------------
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

----------------------------------------------

select city_id,count(trip_id) from fact_trips where passenger_type = "repeated" group by city_id;

select city_id,count(trip_id) from fact_trips where passenger_type = "new" group by city_id;