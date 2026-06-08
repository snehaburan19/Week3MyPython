SELECT COUNT(*) total_orders,
       SUM(total) total_sales,
       AVG(total) avg_order_value
FROM orders;

SELECT product_id,
       SUM(quantity) sold
FROM order_items
GROUP BY product_id
ORDER BY sold DESC
LIMIT 10;

SELECT customer_id,
       SUM(total) lifetime_value
FROM orders
GROUP BY customer_id;

SELECT *
FROM products
WHERE category_id =
(
   SELECT category_id
   FROM products
   WHERE product_id = 1
);

SELECT customer_id,
       COUNT(*) order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 1;

SELECT product_id,
       stock
FROM products
ORDER BY stock;

SELECT supplier_id,
       COUNT(*) total_products
FROM products
GROUP BY supplier_id;

SELECT MONTH(order_date) month_no,
       SUM(total) sales
FROM orders
GROUP BY MONTH(order_date);

SELECT order_date,
       total
FROM orders
ORDER BY order_date;

WITH sales_cte AS
(
   SELECT COUNT(*) total_orders,
          SUM(total) revenue,
          AVG(total) avg_order
   FROM orders
)
SELECT * FROM sales_cte;

--If your compiler throws errors on:

--WITH → it doesn't support CTEs.
--ROW_NUMBER() or RANK() → it doesn't support Window Functions.
--WITH RECURSIVE → it doesn't support Recursive CTEs.