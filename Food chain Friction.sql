Use practise;

CREATE TABLE fleet_delivery_logs (
    delivery_id INT PRIMARY KEY,
    restaurant_zone VARCHAR(100),
    food_type VARCHAR(50),
    base_delivery_fee_eur DECIMAL(10, 2),
    transit_time_mins INT,
    temperature_variance_celsius DECIMAL(4, 1),
    delivery_status VARCHAR(50),
    vehicle_type VARCHAR(50)
);

INSERT INTO fleet_delivery_logs (delivery_id, restaurant_zone, food_type, base_delivery_fee_eur, transit_time_mins, temperature_variance_celsius, delivery_status, vehicle_type) VALUES
(1, 'Central Kitchen Hub', 'Hot Meals', 4.50, 18, 2.5, 'Completed', 'E-Bike'),
(2, 'Coastal Strip', 'Cold Desserts', 6.00, 32, 6.8, 'Refunded - Spoiled', 'Motorbike'),
(3, 'Metro Business District', 'Hot Meals', 5.50, 22, 1.8, 'Completed', 'E-Bike'),
(4, 'Suburban Center', 'Cold Desserts', 7.00, 15, 0.5, 'Completed', 'Scooter'),
(5, 'Central Kitchen Hub', 'Cold Desserts', 4.50, 28, 5.2, 'Refunded - Spoiled', 'Motorbike'),
(6, 'Metro Business District', 'Hot Meals', 5.50, 14, 0.8, 'Completed', 'E-Bike'),
(7, 'Coastal Strip', 'Hot Meals', 6.00, 25, 3.1, 'Completed', 'Scooter'),
(8, 'Suburban Center', 'Cold Desserts', 7.00, 35, 7.4, 'Refunded - Spoiled', 'Motorbike'),
(9, 'Central Kitchen Hub', 'Hot Meals', 4.50, 12, 1.0, 'Completed', 'E-Bike'),
(10, 'Metro Business District', 'Cold Desserts', 5.50, 29, 5.8, 'Refunded - Spoiled', 'Motorbike'),
(11, 'Coastal Strip', 'Cold Desserts', 6.00, 34, 8.1, 'Refunded - Spoiled', 'Scooter'),
(12, 'Suburban Center', 'Hot Meals', 7.00, 19, 2.0, 'Completed', 'E-Bike'),
(13, 'Central Kitchen Hub', 'Cold Desserts', 4.50, 24, 4.5, 'Completed', 'E-Bike'),
(14, 'Metro Business District', 'Hot Meals', 5.50, 31, 4.2, 'Refunded - Spoiled', 'Motorbike'),
(15, 'Coastal Strip', 'Hot Meals', 6.00, 16, 1.2, 'Completed', 'E-Bike'),
(16, 'Suburban Center', 'Cold Desserts', 7.00, 27, 4.9, 'Completed', 'Scooter'),
(17, 'Central Kitchen Hub', 'Hot Meals', 4.50, 26, 3.8, 'Completed', 'Scooter'),
(18, 'Metro Business District', 'Cold Desserts', 5.50, 33, 6.2, 'Refunded - Spoiled', 'Motorbike'),
(19, 'Coastal Strip', 'Cold Desserts', 6.00, 15, 1.1, 'Completed', 'E-Bike'),
(20, 'Suburban Center', 'Hot Meals', 7.00, 42, 5.5, 'Refunded - Spoiled', 'Motorbike'),
(21, 'Central Kitchen Hub', 'Cold Desserts', 4.50, 30, 6.1, 'Refunded - Spoiled', 'Motorbike'),
(22, 'Metro Business District', 'Hot Meals', 5.50, 17, 1.5, 'Completed', 'E-Bike'),
(23, 'Coastal Strip', 'Hot Meals', 6.00, 20, 2.1, 'Completed', 'E-Bike'),
(24, 'Suburban Center', 'Hot Meals', 7.00, 13, 0.9, 'Completed', 'Scooter'),
(25, 'Central Kitchen Hub', 'Cold Desserts', 4.50, 35, 7.9, 'Refunded - Spoiled', 'Motorbike'),
(26, 'Metro Business District', 'Cold Desserts', 5.50, 16, 1.4, 'Completed', 'E-Bike'),
(27, 'Coastal Strip', 'Cold Desserts', 6.00, 38, 9.3, 'Refunded - Spoiled', 'Motorbike'),
(28, 'Suburban Center', 'Hot Meals', 7.00, 23, 2.4, 'Completed', 'E-Bike'),
(29, 'Central Kitchen Hub', 'Hot Meals', 4.50, 33, 5.1, 'Refunded - Spoiled', 'Motorbike'),
(30, 'Metro Business District', 'Cold Desserts', 5.50, 12, 0.7, 'Completed', 'Scooter'),
(31, 'Coastal Strip', 'Hot Meals', 6.00, 45, 6.0, 'Refunded - Spoiled', 'Motorbike'),
(32, 'Suburban Center', 'Cold Desserts', 7.00, 18, 1.9, 'Completed', 'E-Bike'),
(33, 'Central Kitchen Hub', 'Cold Desserts', 4.50, 40, 8.5, 'Refunded - Spoiled', 'Motorbike'),
(34, 'Metro Business District', 'Hot Meals', 5.50, 20, 1.1, 'Completed', 'E-Bike'),
(35, 'Coastal Strip', 'Cold Desserts', 6.00, 22, 2.3, 'Completed', 'Scooter'),
(36, 'Suburban Center', 'Cold Desserts', 7.00, 31, 5.9, 'Refunded - Spoiled', 'Motorbike'),
(37, 'Central Kitchen Hub', 'Hot Meals', 4.50, 15, 1.3, 'Completed', 'E-Bike'),
(38, 'Metro Business District', 'Cold Desserts', 5.50, 36, 7.1, 'Refunded - Spoiled', 'Motorbike'),
(39, 'Coastal Strip', 'Hot Meals', 6.00, 11, 0.5, 'Completed', 'E-Bike'),
(40, 'Suburban Center', 'Hot Meals', 7.00, 25, 2.9, 'Completed', 'Scooter');


Select * from fleet_delivery_logs;


Select restaurant_zone, Count(delivery_id) as Total_Delivery_Dispatch,
sum(case when delivery_status = 'Completed' then base_delivery_fee_eur else 0 end) as Total_Revenue_Realised,
sum(case when delivery_status like '%Refunded%' or '%Spolied%' then base_delivery_fee_eur else 0 end) as Total_Revenue_Loss,
round(avg(transit_time_mins),2) as Avg_transit_time,
round(avg(case when delivery_status like '%Refunded%' or '%Spolied%' then temperature_variance_celsius end),2) as Avg_celius_for_refunded_delivery
from fleet_delivery_logs
group by restaurant_zone
Order by 4 desc;



Select vehicle_type, count(delivery_id) as Total_delivery,
count(case when delivery_status like '%Refunded%' or '%Spolied%' then 1 end) as Total_Refunded_Delivery,
round(avg(case when delivery_status like '%Refunded%' or '%Spolied%' then temperature_variance_celsius end),2) as Avg_celius_for_refunded_delivery,
round(avg(case when delivery_status like '%Refunded%' or '%Spolied%' then transit_time_mins end),2) as Avg_transit_mins_for_refunded_delivery
from fleet_delivery_logs
group by vehicle_type;





Select vehicle_type, round(avg(transit_time_mins),2) as Avg_transit_times
from fleet_delivery_logs
group by 1
order by 2 desc;


