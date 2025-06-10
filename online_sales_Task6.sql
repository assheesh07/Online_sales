create database sales;
use sales;

create table online_sales
(order_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);

INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(101, '2023-01-15', 300.50, 1),
(102, '2023-01-17', 200.75, 2),
(103, '2023-02-20', 150.00, 1),
(104, '2023-02-22', 400.25, 3),
(105, '2023-03-01', 250.00, 2),
(106, '2023-03-10', 200.00, 4),
(107, '2023-04-05', 350.00, 1);

SELECT * FROM online_sales;

SELECT  
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY total_revenue DESC
LIMIT 3;

