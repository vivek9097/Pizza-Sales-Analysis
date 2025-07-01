-- Calculate the total revenue generated from pizza sales.

SELECT 
    SUM(o.quantity * p.price) AS total_revenue
FROM
    order_details o
        JOIN
    pizzas p ON p.pizza_id = o.pizza_id;