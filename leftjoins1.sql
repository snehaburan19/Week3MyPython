SELECT c.*
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

SELECT p.*
FROM products p
LEFT JOIN order_items oi
ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;

SELECT p.*
FROM products p
LEFT JOIN reviews r
ON p.product_id = r.product_id
WHERE r.product_id IS NULL;

SELECT c.*
FROM customers c
LEFT JOIN addresses a
ON c.customer_id = a.customer_id
WHERE a.customer_id IS NULL;

SELECT o.*
FROM orders o
LEFT JOIN payments p
ON o.order_id = p.order_id
WHERE p.order_id IS NULL;