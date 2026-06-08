SELECT category_id,
       COUNT(*) AS total_products
FROM products
GROUP BY category_id
HAVING COUNT(*) > 20;

SELECT supplier_id,
       COUNT(*) AS total_products
FROM products
GROUP BY supplier_id
HAVING COUNT(*) > 10;

SELECT customer_id,
       COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 5;

SELECT product_id,
       AVG(rating) AS avg_rating
FROM reviews
GROUP BY product_id
HAVING AVG(rating) > 4;

SELECT city,
       COUNT(*) AS total_customers
FROM customers
GROUP BY city
HAVING COUNT(*) > 50;