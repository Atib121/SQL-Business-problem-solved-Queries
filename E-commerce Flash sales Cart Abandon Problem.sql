use practise;
CREATE TABLE flash_sale_orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    product_category VARCHAR(50),
    item_price_eur DECIMAL(10, 2),
    quantity_locked INT,
    checkout_status VARCHAR(50),
    cart_creation_time TIME,
    cart_expiry_time TIME
);

INSERT INTO flash_sale_orders (order_id, customer_name, product_category, item_price_eur, quantity_locked, checkout_status, cart_creation_time, cart_expiry_time) VALUES
(1, 'Lukas Weber', 'Electronics', 799.00, 1, 'Completed', '12:00:05', '12:15:05'),
(2, 'Emma Jensen', 'Fashion', 45.00, 3, 'Abandoned', '12:00:12', '12:15:12'),
(3, 'Liam O’Connor', 'Electronics', 1200.00, 1, 'Abandoned', '12:00:18', '12:15:18'),
(4, 'Sofia Silva', 'Home & Kitchen', 150.00, 2, 'Pending', '12:00:25', '12:15:25'),
(5, 'Mateo Rossi', 'Electronics', 350.00, 1, 'Completed', '12:01:02', '12:16:02'),
(6, 'Anna Schmidt', 'Fashion', 85.00, 4, 'Abandoned', '12:01:15', '12:16:15'),
(7, 'Noah Nielsen', 'Home & Kitchen', 220.00, 1, 'Completed', '12:01:30', '12:16:30'),
(8, 'Clara Mendes', 'Electronics', 799.00, 2, 'Abandoned', '12:01:45', '12:16:45'),
(9, 'Oliver Hansen', 'Fashion', 60.00, 2, 'Completed', '12:02:01', '12:17:01'),
(10, 'Leon Fischer', 'Electronics', 1200.00, 1, 'Completed', '12:02:10', '12:17:10'),
(11, 'Mia Murphy', 'Home & Kitchen', 95.00, 3, 'Abandoned', '12:02:22', '12:17:22'),
(12, 'Jonas Ziegler', 'Electronics', 150.00, 5, 'Abandoned', '12:02:40', '12:17:40'),
(13, 'Elena Santos', 'Fashion', 110.00, 1, 'Pending', '12:03:05', '12:18:05'),
(14, 'Conor Ryan', 'Electronics', 350.00, 2, 'Abandoned', '12:03:18', '12:18:18'),
(15, 'Lucas Poulsen', 'Home & Kitchen', 310.00, 1, 'Completed', '12:03:30', '12:18:30'),
(16, 'Marie Hoffmann', 'Fashion', 45.00, 10, 'Abandoned', '12:03:45', '12:18:45'),
(17, 'Beatriz Costa', 'Electronics', 799.00, 1, 'Completed', '12:04:12', '12:19:12'),
(18, 'Sean Kelly', 'Fashion', 75.00, 2, 'Pending', '12:04:30', '12:19:30'),
(19, 'Magnus Dahl', 'Home & Kitchen', 180.00, 2, 'Abandoned', '12:04:55', '12:19:55'),
(20, 'Laura Wagner', 'Electronics', 1200.00, 1, 'Abandoned', '12:05:01', '12:20:01'),
(21, 'Diogo Ferreira', 'Fashion', 90.00, 3, 'Completed', '12:05:15', '12:20:15'),
(22, 'Freja Larsen', 'Electronics', 350.00, 1, 'Completed', '12:05:40', '12:20:40'),
(23, 'Cian McCarthy', 'Home & Kitchen', 400.00, 1, 'Pending', '12:06:02', '12:21:02'),
(24, 'Maximilian Fuchs', 'Electronics', 799.00, 1, 'Abandoned', '12:06:18', '12:21:18'),
(25, 'Astrid Jensen', 'Fashion', 120.00, 2, 'Abandoned', '12:06:35', '12:21:35'),
(26, 'Rodrigo Sousa', 'Home & Kitchen', 135.00, 4, 'Completed', '12:07:01', '12:22:01'),
(27, 'Chloe Byrne', 'Electronics', 1200.00, 2, 'Abandoned', '12:07:20', '12:22:20'),
(28, 'Emil Thomsen', 'Fashion', 55.00, 5, 'Completed', '12:07:45', '12:22:45'),
(29, 'Felix Kruger', 'Electronics', 150.00, 3, 'Completed', '12:08:10', '12:23:10'),
(30, 'Sofia Ribeiro', 'Home & Kitchen', 260.00, 1, 'Abandoned', '12:08:32', '12:23:32'),
(31, 'Aoife Walsh', 'Fashion', 65.00, 4, 'Abandoned', '12:08:50', '12:23:50'),
(32, 'Mads Christensen','Electronics', 350.00, 2, 'Abandoned', '12:09:05', '12:24:05'),
(33, 'Julia Richter', 'Home & Kitchen', 95.00, 2, 'Completed', '12:09:22', '12:24:22'),
(34, 'Martim Almeida', 'Electronics', 799.00, 1, 'Completed', '12:09:45', '12:24:45'),
(35, 'Niamh Kennedy', 'Fashion', 110.00, 3, 'Completed', '12:10:01', '12:25:01'),
(36, 'Sander Frandsen', 'Electronics', 1200.00, 1, 'Completed', '12:10:20', '12:25:20'),
(37, 'Tim Schulz', 'Home & Kitchen', 150.00, 2, 'Abandoned', '12:10:45', '12:25:45'),
(38, 'Ines Pereira', 'Fashion', 85.00, 2, 'Completed', '12:11:05', '12:26:05'),
(39, 'Darragh O’Brien', 'Electronics', 350.00, 1, 'Completed', '12:11:30', '12:26:30'),
(40, 'Liva Møller', 'Home & Kitchen', 220.00, 3, 'Abandoned', '12:11:55', '12:26:55');

Select *
from flash_sale_orders;


Select product_category, count(order_id) as Total_carts_created,
	   sum(item_price_eur*quantity_locked) as Total_Revenue_realised,
       sum(case when checkout_status = 'Abandoned' then item_price_eur * quantity_locked end) as Total_Revenue_loss_by_Cart_abandoned,
       sum(case when checkout_status = 'Pending' then item_price_eur * quantity_locked else 0 end) as Total_Revenue_Trap
from flash_sale_orders
group by product_category
order by 4 desc;


Select checkout_status, round(avg(timestampdiff(Minute, cart_creation_time, cart_expiry_time)),2) as Avg_min
from flash_sale_orders
group by checkout_status;

Select product_category, count(order_id) as Abandoned_cart_cnt
from flash_sale_orders
where checkout_status = 'Abandoned'
group by product_category
order by 2 desc;