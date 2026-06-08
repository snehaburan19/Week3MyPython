SELECT category_id, COUNT(*) AS product_count
FROM products
GROUP BY category_id;

SELECT p.category_id,
       SUM(oi.quantity * oi.price) AS sales
FROM products p
JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY p.category_id;

SELECT p.supplier_id,
       SUM(oi.quantity * oi.price) AS revenue
FROM products p
JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY p.supplier_id;

SELECT city,
       COUNT(*) AS customer_count
FROM customers
GROUP BY city;

SELECT status,
       COUNT(*) AS order_count
FROM orders
GROUP BY status;

SELECT product_id,
       AVG(rating) AS avg_rating
FROM reviews
GROUP BY product_id;

SELECT supplier_id,
       COUNT(*) AS total_products
FROM products
GROUP BY supplier_id;

SELECT status,
       COUNT(*) AS shipment_count
FROM shipments
GROUP BY status;

SELECT method,
       SUM(amount) AS total_amount
FROM payments
GROUP BY method;

SELECT MONTH(order_date) AS month_no,
       SUM(total) AS sales
FROM orders
GROUP BY MONTH(order_date);