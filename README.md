# Resume-challenge-13-Unguided
Transportation domain and Tools used for analysis are MySQL, Power BI and Excel 
# Notes for presentation
Slide: 0<br>
Good cabs good cabs good cabs, feel the beat<br>
Good cabs is a cabs service company<br>
Let me give a brief on how this mobility business works<br>
Slide: 1<br>
Cabs company don’t own any car they use existing vehicles and create employment<br>
It is just a Tech company whose work is to make Drivers meet Riders. Here drivers get Part-time employment opportunity and riders gets their requirement full-filled<br>
As Restrictions (like commercial registration, special driving license, regular checks) got decreased, these cabs company could provide their services at low price<br>
Typical Framework of a cabs company<br>
•	Cash drain – they burn lot of money to penetrate into market and increase their product TAM<br>
•	Trust building – they make offers and show their gratitude towards customers to build trust<br>
•	Dependency – they try to make the customer feel comfortable using their services<br>
•	Control – they try to give competitive offers and make the customer to stick to their services only<br>
For successful cabs services business, focus on<br>
•	Local ecosystem (serve on basis of population density)<br>
•	Loyalty of driver (by providing incentives and insurance for their safety & by reducing the hidden charges)<br>
•	Ride monitoring system – safe travel purpose without route deviation<br>
•	Concentrated feedback loop – to improve quality of service as per trends & requirement<br>
•	Brand ambassador (like actors) to penetrate to larger audience as it is a familiar face to them<br>
•	KYC – to have a safe and secured service and understand customer behaviour<br>
Price (it plays a key role in business)<br>
Typical Algorithm used for price calculation consists of<br>
•	Base fare (depends upon the type of car)<br>
•	Cost per min multiplied by time (depends upon location)<br>
•	Cost per km multiplied by time (it is also depended on location)<br>
•	Surge multiplier (during bad weather conditions or huge demand)<br>
•	Booking fees (using platform to book a service)<br>
Consumer<br>
(Per capital income of India is 1,84,000 rupees = 15000 rupees per month= 500 rupees per day)<br>
•	Super saver (late on work due to traffic jam)<br>
•	Super wealthy<br>
In some locations there will be more drivers & in some locations there will be more riders, we need to balance them to work efficiently. Try to divide the locations into pentagons shape and differentiate the density of drivers and density of riders in each slot and then add surge charges accordingly and pool them by distributing drivers over various locations<br>
Out of total cost of ride, company keeps 20-25% as a platform provider and 75-80% is given to the drivers, Strategic investors give advices how to save the company from being killed in competition
Places where there are a smaller number of cars but people are willing to work, they can take car on lease from the company and give services, then driver has to pay rent of the car to the company. The disadvantage of this program is that the company has to buy cars and keep it with them, it is difficult to manage them and it needs a lot of money.<br>
Connecting drivers with fleet owners, they are the persons who has more than one vehicle at home/their company and are willing to give it on rent to increase their income<br>
Slide: 2<br>
This is a mobility operation domain and here<br>
•	Trip volume<br>
•	Passenger satisfaction<br>
•	Repeat passenger rate<br>
•	Balance between new and repeat passengers<br>
Slide: 3<br>
Good cabs are into transportation and mobility domain since last 2-years. It has gained a strong foothold in Indian cities. They built business on local ecosystem model so that it builds a strong loyalty driver base and they can give excellent service to the passengers<br>
Slide: 4<br>
It has focused mainly on tier-2 cities with operations in ten cities across the India, we can see in map. Good cabs have set an ambitious performance targets for the year 2024, as a part of it the management team aims to access the company’s performance on various key aspects. So, they hired data analyst to get actionable insights and have robust growth<br>
Slide: 5<br>
Hi everybody, 
I am thakur prem singh, I have started my journey as a software developer 3 year ago with TCS. Currently I am working on power bi project where I do analyse the data and suggest actionable insights. I have expertise in SQL, Power BI, Advanced excel & I can perform operations using Python libraries like pandas, numpy, matplotlib.<br>
Feel free to connect with me, I appreciate constructive criticism, 
Let’s get back to good cabs<br>
Slide: 6<br>
As a data analyst I have collected data from good cabs and they provided it in csv format and SQL format<br>
I have used excel to check contents in various tables and do cleaning of data if needed, 
I have used MySQL to perform query operations and answer the ad-hoc requests, 
I have used power bi to do data visualization and create an interactive dashboard, 
I used PowerPoint to present the data and give valuable insights, 
I used Microsoft word for documentation purpose<br>
Slide: 7<br>
The Ad-hoc requests are<br>
1.	gives us information related to customer spending parity, we know their per capita income<br>
2.	weather good cabs are performing as expected in that particular city<br>
3.	repeat passenger makes us know density of city, new driver requirement<br>
4.	new passengers tell us about how good our company performance is and we can pivot our marketing strategies accordingly<br>
5.	from monthly data we can analyse the peak month and the reasons for that demand and is there any pattern of repetition<br>
6.	Repeat rate talks about penetration of our services in that particular city<br>
Slide: 8<br>
Generally used Data model are star schema and snowflake schema<br>
•	Star schema consists of fact tables and the dimension tables, whereas<br>
•	Snowflake schema has fact tables, dimension tables as well as sub dimension tables<br>
Slide: 9<br>
I have made city level fare and trip summary report<br>
I have gone through various tables and got to know the contents of the table<br>
I performed CTE query using MySQL on dim city table and fact passenger summary table & collected the combined data<br>
Slide: 10<br>
I saved this data in csv format and used power bi to visualize it<br>
From my analysis, I came up with the insights like<br>
•	Jaipur city is leading in parameters like fare per trip, average fare per km & % contribution to total trips in India<br>
•	The city with least average fare per trip is Surat, we need to improve it<br>
•	The city with least average fare per km is Vadodara<br>
•	The city with least % contribution to total trips is Coimbatore<br>
Slide: 11<br>
I have made monthly city level target performance report<br>
I have performed joins between dim date, dim city and monthly target trips table and collected the combined data<br>
Slide: 12<br>
I saved this data in csv format and used power bi to visualize it<br>
From my analysis, I came up with insights like<br>
•	=Jaipur city topped with performance almost 15% more than targeted<br>
•	Least was Lucknow with performance of 10 % less then targeted<br>
•	Only 40% of cities reached target level<br>
Slide: 13<br>
I have to make city level repeat passenger trip frequency report<br>
Here I performed joins between dim city and dim repeat trip distribution and collected the data<br>
Slide: 14<br>
From my analysis, I came up with insights like<br>
•	In 2 trips repeat frequency 60% cities has peaked<br>
•	Surat & Coimbatore were top in 5 trip repetition frequency<br>
•	Vadodara & Lucknow were top in 6 trips repetition frequency<br>
Slide: 15<br>
I have to identify cities with highest and lowest total new passengers<br>
I performed queries on dim city and fact trip table and collected the data<br>
Slide: 16<br>
From my analysis, I came up with insights like<br>
•	Coimbatore lacks 20% than that of Jaipur city<br>
•	Jaipur has 1/4th of total new passengers in India<br>
Slide: 17<br>
I have to identify month with highest revenue for each city<br>
I have performed joins between dim city and fact trip table and collected the data<br>
Slide: 18<br>
From my analysis, I came up with insights like<br>
•	40% of cities has April as highest revenue month<br>
•	60% of cities has June as lowest revenue month<br>
Slide: 19<br>
I have to do repeat passenger rate analysis<br>
I performed queries on fact passenger summary, dim city and dim date and collected the data<br>
Slide: 20<br>
From my analysis, I came up with insights like<br>
•	Repeat passenger rate is highest for Surat with 42 % repetition and least for Mysore with almost 12% repetition<br>
•	May month has highest repeat passenger rate % and January has least repeat passenger rate % and both are at Kochi city<br>
Slide: 21<br>
Here is a sample dashboard created for Vishakhapatnam city<br>
I have performed power query operations in power bi and created it<br>
The dashboard link is given below<br>
From this interactive dashboard we can get information related to various key metrics at a glance and we can conclude to actionable plans<br>
Slide: 22<br>
Here are few conclusions based on KPI like total trips, price efficiency, passenger rating, demand month, weekday and weekend preference cities, monthly evaluation, monthly repeat rate passengers<br>
Slide: 23<br>
I would like to recommend good cabs these methods to increase its TAM and build a loyal brand<br>
Slide: 24<br>
Thank you<br>
Reach out to build connections and lets grow together<br>

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

select city_id,sum(fare_amount) as percentage_contributtion 
    from fact_trips
    group by city_id ;
    
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

select city_id, sum(repeat_passengers) as repeat_city_passengers from fact_passenger_summary group by city_id;

select city_id, sum(total_passengers) as total_repeat_city_passengers from fact_passenger_summary group by city_id;

select * from dim_city;
