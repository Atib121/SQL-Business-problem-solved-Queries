use practise;

CREATE TABLE munich_delivery_log (
    delivery_id INT PRIMARY KEY,
    order_date DATE,
    munich_region VARCHAR(100),
    delivery_time_mins INT,
    courier_type VARCHAR(50)
);


INSERT INTO munich_delivery_log (delivery_id, order_date, munich_region, delivery_time_mins, courier_type) VALUES
-- April 2026 Data
(1, '2026-04-02', 'Altstadt', 35, 'E-Bike'),
(2, '2026-04-05', 'Schwabing', 42, 'Van'),
(3, '2026-04-08', 'Maxvorstadt', 28, 'E-Bike'),
(4, '2026-04-10', 'Altstadt', 38, 'Scooter'),
(5, '2026-04-12', 'Schwabing', 45, 'Van'),
(6, '2026-04-15', 'Maxvorstadt', 30, 'E-Bike'),
(7, '2026-04-18', 'Altstadt', 32, 'E-Bike'),
(8, '2026-04-20', 'Schwabing', 40, 'Scooter'),
(9, '2026-04-22', 'Maxvorstadt', 25, 'Scooter'),
(10, '2026-04-25', 'Bogenhausen', 50, 'Van'),
(11, '2026-04-26', 'Bogenhausen', 52, 'Van'),
(12, '2026-04-28', 'Altstadt', 36, 'E-Bike'),
(13, '2026-04-29', 'Schwabing', 41, 'E-Bike'),
(14, '2026-04-30', 'Maxvorstadt', 27, 'E-Bike'),
-- May 2026 Data
(15, '2026-05-02', 'Altstadt', 45, 'E-Bike'),
(16, '2026-05-04', 'Schwabing', 38, 'Van'),
(17, '2026-05-06', 'Maxvorstadt', 35, 'E-Bike'),
(18, '2026-05-08', 'Altstadt', 48, 'Scooter'),
(19, '2026-05-10', 'Schwabing', 35, 'Van'),
(20, '2026-05-12', 'Maxvorstadt', 38, 'E-Bike'),
(21, '2026-05-14', 'Altstadt', 42, 'E-Bike'),
(22, '2026-05-16', 'Schwabing', 36, 'Scooter'),
(23, '2026-05-18', 'Maxvorstadt', 32, 'Scooter'),
(24, '2026-05-20', 'Bogenhausen', 42, 'Van'),
(25, '2026-05-22', 'Bogenhausen', 40, 'Van'),
(26, '2026-05-24', 'Altstadt', 46, 'E-Bike'),
(27, '2026-05-25', 'Schwabing', 34, 'E-Bike'),
(28, '2026-05-27', 'Maxvorstadt', 36, 'E-Bike'),
(29, '2026-05-28', 'Altstadt', 44, 'Scooter'),
(30, '2026-05-29', 'Schwabing', 35, 'Van'),
(31, '2026-05-30', 'Maxvorstadt', 34, 'E-Bike'),
-- Extra June Boundary records for testing
(32, '2026-06-01', 'Altstadt', 33, 'E-Bike'),
(33, '2026-06-02', 'Schwabing', 39, 'Van'),
(34, '2026-06-03', 'Maxvorstadt', 29, 'E-Bike'),
(35, '2026-06-04', 'Bogenhausen', 45, 'Van');


Select *, monthname(order_date) as mon from munich_delivery_log
Order by Order_date;


with cte as (
Select month(order_date) as Mon, monthname(order_date) as Month_, round(avg(delivery_time_mins),2) as Avg_time_taken
from munich_delivery_log
group by month(order_date), monthname(order_date) )
Select *, 
round((Avg_time_taken - (lag(Avg_time_taken) over (order by  Mon))) / (lag(Avg_time_taken) over (order by  Mon))*100,2) as percent_chng
from cte;

with cte as (
Select * from munich_delivery_log
where order_date between '2026-05-01' and '2026-05-31' )
Select munich_region, count(delivery_id) as orders, avg(delivery_time_mins) as avg_delivery_time
from cte 
group by munich_region
order by avg_delivery_time desc;