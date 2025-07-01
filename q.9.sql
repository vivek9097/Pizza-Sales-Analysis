-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT 
    round(AVG(quantity), 0) as avg_pizza_ordered_per_day
FROM
    (SELECT 
        o.order_date, SUM(od.quantity) AS quantity
    FROM
        orders o
    JOIN order_details od ON od.order_id = o.order_id
    GROUP BY o.order_date) AS order_quantity;