SELECT product_id
FROM order_items
GROUP BY product_id
ORDER BY SUM(quantity) DESC
LIMIT 1;

SELECT product_id
FROM order_items
GROUP BY product_id
ORDER BY SUM(quantity) DESC
LIMIT 1 OFFSET 1;

SELECT product_id
FROM order_items
GROUP BY product_id
ORDER BY SUM(quantity) DESC
LIMIT 1 OFFSET 2;

SELECT customer_id
FROM orders
ORDER BY total DESC
LIMIT 1;

SELECT customer_id
FROM orders
WHERE total >
(
   SELECT AVG(total)
   FROM orders
);

SELECT *
FROM products
WHERE price >
(
   SELECT AVG(price)
   FROM products
);

SELECT supplier_id
FROM products
GROUP BY supplier_id
ORDER BY COUNT(*) DESC
LIMIT 1;

SELECT p.category_id
FROM products p
JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY p.category_id
ORDER BY SUM(oi.quantity * oi.price) DESC
LIMIT 1;

SELECT customer_id
FROM orders;

SELECT *
FROM products
WHERE product_id NOT IN
(
   SELECT product_id
   FROM order_items
);