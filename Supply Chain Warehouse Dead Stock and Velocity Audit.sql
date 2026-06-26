use practise;
CREATE TABLE warehouse_inventory (
    item_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    product_category VARCHAR(50),
    units_in_stock INT,
    unit_cost_eur DECIMAL(10, 2),
    days_since_last_shipment INT,
    warehouse_zone CHAR(1)
);
INSERT INTO warehouse_inventory (item_id, product_name, product_category, units_in_stock, unit_cost_eur, days_since_last_shipment, warehouse_zone) VALUES
(1, 'Eco-Friendly Yoga Mat', 'Fitness', 450, 15.00, 12, 'A'),
(2, 'Ergonomic Office Chair', 'Furniture', 85, 120.00, 45, 'B'),
(3, 'Wireless Noise-Canceling Headphones', 'Electronics', 300, 85.00, 8, 'A'),
(4, 'Stainless Steel Water Bottle 1L', 'Fitness', 600, 10.50, 15, 'A'),
(5, 'Solid Oak Dining Table', 'Furniture', 12, 450.00, 110, 'C'),
(6, '4K Ultra HD Projector', 'Electronics', 45, 350.00, 95, 'B'),
(7, 'Adjustable Dumbbell Set 20kg', 'Fitness', 110, 65.00, 32, 'A'),
(8, 'Orthopedic Memory Foam Mattress', 'Furniture', 25, 250.00, 125, 'C'),
(9, 'Mechanical Gaming Keyboard', 'Electronics', 180, 55.00, 22, 'B'),
(10, 'Resistance Bands Set', 'Fitness', 800, 4.20, 5, 'A'),
(11, 'Teak Wood Garden Bench', 'Furniture', 18, 180.00, 140, 'C'),
(12, 'Smart Fitness Watch v2', 'Electronics', 250, 95.00, 14, 'A'),
(13, 'Premium Whey Protein 2kg', 'Fitness', 400, 35.00, 19, 'B'),
(14, 'Minimalist Coffee Table', 'Furniture', 55, 75.00, 60, 'B'),
(15, 'Biometric Door Lock', 'Electronics', 90, 115.00, 38, 'B'),
(16, 'Running Hydration Vest', 'Fitness', 140, 28.00, 25, 'A'),
(17, 'Leather Chesterfield Sofa', 'Furniture', 6, 850.00, 180, 'C'),
(18, 'Portable Bluetooth Speaker', 'Electronics', 420, 40.00, 3, 'A'),
(19, 'Gym Floor Interlocking Mats', 'Fitness', 950, 3.50, 18, 'A'),
(20, 'Modular Fabric Sectional Sofa', 'Furniture', 10, 620.00, 105, 'C'),
(21, 'Ergonomic Vertical Mouse', 'Electronics', 340, 22.00, 11, 'B'),
(22, 'Heavy-Duty Punching Bag', 'Fitness', 65, 55.00, 40, 'B'),
(23, 'Bamboo Shoe Rack 4-Tier', 'Furniture', 130, 18.50, 55, 'B'),
(24, 'Dual-Monitor Desk Mount', 'Electronics', 160, 45.00, 27, 'B'),
(25, 'High-Density Foam Roller', 'Fitness', 210, 8.00, 14, 'A'),
(26, 'Vintage Study Desk', 'Furniture', 30, 140.00, 115, 'C'),
(27, 'Smart LED Light Strip 5m', 'Electronics', 750, 12.50, 6, 'A'),
(28, 'Pre-Workout Energy Mix', 'Fitness', 320, 22.00, 21, 'B'),
(29, 'Ergonomic Foot Rest', 'Furniture', 140, 19.90, 42, 'B'),
(30, 'USB-C Docking Station Multi-Port', 'Electronics', 280, 60.00, 9, 'A'),
(31, 'Pull-Up Bar Doorway', 'Fitness', 170, 18.00, 33, 'A'),
(32, 'Industrial Metal Bookshelf', 'Furniture', 40, 110.00, 92, 'C'),
(33, 'Wireless Charging Stand', 'Electronics', 500, 15.00, 4, 'A'),
(34, 'Speed Jumping Rope', 'Fitness', 1200, 2.50, 2, 'A'),
(35, 'Walnut Wood Nightstand', 'Furniture', 80, 48.00, 85, 'B'),
(36, 'Noise-Isolating Earbuds', 'Electronics', 650, 18.00, 7, 'A'),
(37, 'Yoga Balance Ball', 'Fitness', 280, 11.20, 16, 'A'),
(38, 'Adjustable Standing Desk Frame', 'Furniture', 48, 160.00, 70, 'C'),
(39, 'Home Theater Soundbar', 'Electronics', 110, 130.00, 50, 'B'),
(40, 'LED Desk Lamp with Qi Charger', 'Electronics', 220, 32.00, 24, 'B');

Select * from warehouse_inventory;


Select product_category, sum(units_in_stock) as Total_units_in_Warehouse,
						sum(units_in_stock *unit_cost_eur) as Total_capital_Invested,
                        sum(case when days_since_last_shipment > 90 then 1 else 0 end) as Total_dead_stock,
                        round(avg(days_since_last_shipment),1) as Avg_days_dormat
From warehouse_inventory
group by product_category
Order by 4 desc;


Select warehouse_zone, sum(units_in_stock) as Total_units_in_Warehouse,
						sum(units_in_stock *unit_cost_eur) as Total_capital_Invested,
                        sum(case when days_since_last_shipment > 90 then 1 else 0 end) as Total_dead_stock,
                        round(avg(days_since_last_shipment),1) as Avg_days_dormat
From warehouse_inventory
group by warehouse_zone
Order by 4 desc;

Select product_category, Product_name,(units_in_stock*unit_cost_eur) as Capital_at_risk
from warehouse_inventory
where days_since_last_shipment > 90;


