use practice;
CREATE TABLE ecommerce_order_returns (
    order_id INT PRIMARY KEY,
    product_category VARCHAR(50),
    payment_method VARCHAR(20),
    order_value_inr DECIMAL(10, 2),
    shipping_cost_inr DECIMAL(10, 2),
    reverse_logistics_cost_inr DECIMAL(10, 2),
    order_status VARCHAR(50),
    days_to_deliver INT
);
INSERT INTO ecommerce_order_returns (order_id, product_category, payment_method, order_value_inr, shipping_cost_inr, reverse_logistics_cost_inr, order_status, days_to_deliver) VALUES
(1, 'Fashion Apparel', 'Cash on Delivery', 2499.00, 120.00, 150.00, 'Customer Return', 6),
(2, 'Consumer Electronics', 'Prepaid', 14999.00, 250.00, 0.00, 'Delivered', 3),
(3, 'Beauty & Personal Care', 'Prepaid', 899.00, 60.00, 0.00, 'Delivered', 2),
(4, 'Fashion Apparel', 'Cash on Delivery', 3199.00, 120.00, 160.00, 'RTO - Delivery Refused', 7),
(5, 'Home & Kitchen', 'Prepaid', 4200.00, 180.00, 0.00, 'Delivered', 4),
(6, 'Fashion Apparel', 'Cash on Delivery', 1899.00, 120.00, 150.00, 'Customer Return', 5),
(7, 'Consumer Electronics', 'Cash on Delivery', 8999.00, 220.00, 240.00, 'RTO - Delivery Refused', 8),
(8, 'Beauty & Personal Care', 'Cash on Delivery', 1299.00, 70.00, 90.00, 'Customer Return', 4),
(9, 'Fashion Apparel', 'Prepaid', 4500.00, 130.00, 0.00, 'Delivered', 3),
(10, 'Home & Kitchen', 'Cash on Delivery', 3100.00, 160.00, 180.00, 'RTO - Delivery Refused', 7),
(11, 'Consumer Electronics', 'Prepaid', 22500.00, 300.00, 0.00, 'Delivered', 2),
(12, 'Fashion Apparel', 'Cash on Delivery', 1599.00, 110.00, 140.00, 'Customer Return', 6),
(13, 'Beauty & Personal Care', 'Prepaid', 1499.00, 65.00, 0.00, 'Delivered', 3),
(14, 'Fashion Apparel', 'Cash on Delivery', 2799.00, 120.00, 150.00, 'RTO - Delivery Refused', 8),
(15, 'Home & Kitchen', 'Prepaid', 5600.00, 190.00, 0.00, 'Delivered', 4),
(16, 'Consumer Electronics', 'Prepaid', 18990.00, 280.00, 0.00, 'Delivered', 3),
(17, 'Fashion Apparel', 'Cash on Delivery', 3499.00, 125.00, 155.00, 'Customer Return', 7),
(18, 'Beauty & Personal Care', 'Cash on Delivery', 999.00, 60.00, 80.00, 'RTO - Delivery Refused', 6),
(19, 'Home & Kitchen', 'Cash on Delivery', 2800.00, 150.00, 170.00, 'Customer Return', 5),
(20, 'Consumer Electronics', 'Cash on Delivery', 12499.00, 240.00, 260.00, 'RTO - Delivery Refused', 9),
(21, 'Fashion Apparel', 'Prepaid', 5199.00, 130.00, 0.00, 'Delivered', 2),
(22, 'Beauty & Personal Care', 'Prepaid', 1750.00, 70.00, 0.00, 'Delivered', 3),
(23, 'Fashion Apparel', 'Cash on Delivery', 2199.00, 120.00, 150.00, 'RTO - Delivery Refused', 7),
(24, 'Home & Kitchen', 'Prepaid', 6400.00, 210.00, 0.00, 'Delivered', 3),
(25, 'Consumer Electronics', 'Prepaid', 31999.00, 350.00, 0.00, 'Delivered', 2),
(26, 'Fashion Apparel', 'Cash on Delivery', 2999.00, 120.00, 150.00, 'Customer Return', 6),
(27, 'Beauty & Personal Care', 'Prepaid', 850.00, 60.00, 0.00, 'Delivered', 3),
(28, 'Consumer Electronics', 'Cash on Delivery', 6499.00, 200.00, 220.00, 'RTO - Delivery Refused', 8),
(29, 'Fashion Apparel', 'Prepaid', 3899.00, 125.00, 0.00, 'Delivered', 3),
(30, 'Home & Kitchen', 'Cash on Delivery', 3900.00, 170.00, 190.00, 'Customer Return', 6),
(31, 'Beauty & Personal Care', 'Cash on Delivery', 1150.00, 65.00, 85.00, 'RTO - Delivery Refused', 7),
(32, 'Fashion Apparel', 'Cash on Delivery', 1999.00, 115.00, 145.00, 'RTO - Delivery Refused', 8),
(33, 'Consumer Electronics', 'Prepaid', 16500.00, 260.00, 0.00, 'Delivered', 3),
(34, 'Home & Kitchen', 'Prepaid', 4900.00, 180.00, 0.00, 'Delivered', 4),
(35, 'Fashion Apparel', 'Cash on Delivery', 2699.00, 120.00, 150.00, 'Customer Return', 5),
(36, 'Beauty & Personal Care', 'Prepaid', 2100.00, 75.00, 0.00, 'Delivered', 2),
(37, 'Consumer Electronics', 'Prepaid', 27900.00, 320.00, 0.00, 'Delivered', 2),
(38, 'Fashion Apparel', 'Cash on Delivery', 3299.00, 125.00, 155.00, 'RTO - Delivery Refused', 7),
(39, 'Home & Kitchen', 'Cash on Delivery', 4500.00, 185.00, 205.00, 'RTO - Delivery Refused', 8),
(40, 'Beauty & Personal Care', 'Prepaid', 1300.00, 65.00, 0.00, 'Delivered', 3),
(41, 'Fashion Apparel', 'Prepaid', 4100.00, 130.00, 0.00, 'Delivered', 3),
(42, 'Consumer Electronics', 'Prepaid', 19500.00, 290.00, 0.00, 'Delivered', 3),
(43, 'Fashion Apparel', 'Cash on Delivery', 2299.00, 120.00, 150.00, 'Customer Return', 5),
(44, 'Beauty & Personal Care', 'Cash on Delivery', 1450.00, 70.00, 90.00, 'Customer Return', 4),
(45, 'Home & Kitchen', 'Prepaid', 5200.00, 190.00, 0.00, 'Delivered', 3);

Select * from ecommerce_order_returns;

Select product_category,
	   count(order_id) as Total_Order_placed,
       sum(order_value_inr) as Total_GMV,
	   sum(case when order_status = 'Delivered' then order_value_inr else 0 end) as Total_Revenue_realised,
       sum(case when order_status = 'Customer Return' or 'RTO - Delivery Refused' then order_value_inr else 0 end)
       as Total_Logistic_Cost_Leakage,
       sum(case when order_status = 'Customer Return' or 'RTO - Delivery Refused' then 1 else 0 end) * 100 / count(order_id)
       as Return_Refuse_rate,
       avg(case when order_status = 'Delivered' then days_to_deliver end) as Avg_days_for_Delivered_items,
       avg(case when order_status = 'Customer Return' or 'RTO - Delivery Refused' then days_to_deliver end) as Avg_days_for_return_items
from ecommerce_order_returns
Group By product_category;



Select payment_method,
       sum(case when order_status = 'Delivered' then 1 else 0 end ) as Successful_Delivered,
       sum(case when order_status = 'Customer Return' or 'RTO - Delivery Refused' then 1 else 0 end ) as Returned_Delivery
From ecommerce_order_returns
Group by Payment_Method;