use Practise ;

CREATE TABLE surge_ride_logs (
    ride_id INT PRIMARY KEY,
    city_zone VARCHAR(100),
    base_fare_inr DECIMAL(10, 2),
    surge_multiplier DECIMAL(3, 1),
    driver_payout_inr DECIMAL(10, 2),
    ride_status VARCHAR(50),
    request_hour INT,
    weather_condition VARCHAR(50)
);

INSERT INTO surge_ride_logs (ride_id, city_zone, base_fare_inr, surge_multiplier, driver_payout_inr, ride_status, request_hour, weather_condition) VALUES
(1, 'Downtown Core', 150.00, 1.2, 135.00, 'Completed', 17, 'Clear'),
(2, 'Airport Terminal', 500.00, 2.5, 0.00, 'Rider Drop-off', 18, 'Heavy Rain'),
(3, 'Tech Park Hub', 200.00, 1.8, 270.00, 'Completed', 17, 'Heavy Rain'),
(4, 'Suburban Residential', 100.00, 1.0, 0.00, 'Driver Rejection', 8, 'Clear'),
(5, 'Downtown Core', 150.00, 2.2, 0.00, 'Rider Drop-off', 17, 'Heavy Rain'),
(6, 'Tech Park Hub', 200.00, 1.2, 180.00, 'Completed', 12, 'Clear'),
(7, 'Airport Terminal', 500.00, 1.5, 562.50, 'Completed', 21, 'Clear'),
(8, 'Suburban Residential', 100.00, 1.5, 0.00, 'Rider Drop-off', 8, 'Heavy Rain'),
(9, 'Downtown Core', 150.00, 1.0, 112.50, 'Completed', 14, 'Clear'),
(10, 'Tech Park Hub', 200.00, 2.0, 0.00, 'Driver Rejection', 18, 'Heavy Rain'),
(11, 'Airport Terminal', 500.00, 3.0, 0.00, 'Rider Drop-off', 18, 'Heavy Rain'),
(12, 'Suburban Residential', 100.00, 1.2, 90.00, 'Completed', 9, 'Clear'),
(13, 'Downtown Core', 150.00, 1.8, 202.50, 'Completed', 17, 'Heavy Rain'),
(14, 'Tech Park Hub', 200.00, 1.0, 0.00, 'Driver Rejection', 13, 'Clear'),
(15, 'Airport Terminal', 500.00, 1.0, 375.00, 'Completed', 11, 'Clear'),
(16, 'Suburban Residential', 100.00, 2.0, 0.00, 'Rider Drop-off', 18, 'Heavy Rain'),
(17, 'Downtown Core', 150.00, 1.5, 168.75, 'Completed', 19, 'Clear'),
(18, 'Tech Park Hub', 200.00, 2.5, 0.00, 'Rider Drop-off', 17, 'Heavy Rain'),
(19, 'Airport Terminal', 500.00, 2.2, 825.00, 'Completed', 18, 'Heavy Rain'),
(20, 'Suburban Residential', 100.00, 1.0, 0.00, 'Driver Rejection', 7, 'Clear'),
(21, 'Downtown Core', 150.00, 2.5, 0.00, 'Driver Rejection', 18, 'Heavy Rain'),
(22, 'Tech Park Hub', 200.00, 1.5, 225.00, 'Completed', 16, 'Clear'),
(23, 'Airport Terminal', 500.00, 1.8, 675.00, 'Completed', 22, 'Clear'),
(24, 'Suburban Residential', 100.00, 1.2, 90.00, 'Completed', 8, 'Clear'),
(25, 'Downtown Core', 150.00, 2.0, 225.00, 'Completed', 17, 'Heavy Rain'),
(26, 'Tech Park Hub', 200.00, 1.2, 180.00, 'Completed', 9, 'Clear'),
(27, 'Airport Terminal', 500.00, 2.8, 0.00, 'Rider Drop-off', 18, 'Heavy Rain'),
(28, 'Suburban Residential', 100.00, 1.8, 135.00, 'Completed', 8, 'Heavy Rain'),
(29, 'Downtown Core', 150.00, 1.0, 0.00, 'Driver Rejection', 23, 'Clear'),
(30, 'Tech Park Hub', 200.00, 2.2, 330.00, 'Completed', 17, 'Heavy Rain'),
(31, 'Airport Terminal', 500.00, 1.2, 450.00, 'Completed', 12, 'Clear'),
(32, 'Suburban Residential', 100.00, 1.0, 75.00, 'Completed', 15, 'Clear'),
(33, 'Downtown Core', 150.00, 2.8, 0.00, 'Rider Drop-off', 18, 'Heavy Rain'),
(34, 'Tech Park Hub', 200.00, 1.5, 225.00, 'Completed', 15, 'Clear'),
(35, 'Airport Terminal', 500.00, 2.0, 750.00, 'Completed', 17, 'Heavy Rain'),
(36, 'Suburban Residential', 100.00, 2.5, 0.00, 'Rider Drop-off', 17, 'Heavy Rain'),
(37, 'Downtown Core', 150.00, 1.5, 168.75, 'Completed', 8, 'Clear'),
(38, 'Tech Park Hub', 200.00, 1.0, 0.00, 'Driver Rejection', 14, 'Clear'),
(39, 'Airport Terminal', 500.00, 1.5, 562.50, 'Completed', 16, 'Clear'),
(40, 'Suburban Residential', 100.00, 1.0, 0.00, 'Driver Rejection', 19, 'Clear');

Select * from surge_ride_logs;

Select city_zone, count(ride_id) as Total_Ride_request,
	round(sum(case when ride_status = 'Completed' then (base_fare_inr * surge_multiplier) else 0 end),0) as Total_Revenue_Realised,
	round(sum(case when ride_status = 'Rider Drop-off' then (base_fare_inr * surge_multiplier) else 0 end),0) as Total_Rev_loss_Rider_dropoff,
	round(sum(case when ride_status = 'Driver Rejection' then (base_fare_inr * surge_multiplier) else 0 end),0) as Total_Rev_loss_Driver_Rej,
	round(avg(surge_multiplier),1) as Avg_surge_applied
from surge_ride_logs
group by city_zone
Order by 4 desc;

Select weather_condition, count(ride_id) as Total_ride, round(avg(surge_multiplier),1) as Avg_multiplier,
       sum(case when ride_status = 'Rider Drop-off' then 1 else 0 end) as Rider_drop_off_count,
       round(sum(case when ride_status = 'Rider Drop-off' then (base_fare_inr * surge_multiplier) else 0 end),0) Revenue_loss
from surge_ride_logs
where city_zone = 'Airport Terminal'
group by weather_condition;

