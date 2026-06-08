WITH category_revenue AS
(
   SELECT p.category_id,
          SUM(oi.quantity * oi.price) revenue
   FROM products p
   JOIN order_items oi
   ON p.product_id = oi.product_id
   GROUP BY p.category_id
)
SELECT * FROM category_revenue;

WITH customer_spending AS
(
   SELECT customer_id,
          SUM(total) spending
   FROM orders
   GROUP BY customer_id
)
SELECT * FROM customer_spending;

WITH customer_spending AS
(
   SELECT customer_id,
          SUM(total) spending
   FROM orders
   GROUP BY customer_id
)
SELECT *
FROM customer_spending
ORDER BY spending DESC
LIMIT 10;

WITH product_sales AS
(
   SELECT product_id,
          SUM(quantity) qty
   FROM order_items
   GROUP BY product_id
)
SELECT *
FROM product_sales
ORDER BY qty DESC;

WITH supplier_sales AS
(
   SELECT p.supplier_id,
          SUM(oi.quantity * oi.price) revenue
   FROM products p
   JOIN order_items oi
   ON p.product_id = oi.product_id
   GROUP BY p.supplier_id
)
SELECT * FROM supplier_sales;
