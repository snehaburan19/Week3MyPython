SELECT c.name, o.*
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

SELECT o.order_id, p.name, oi.quantity, oi.price
FROM orders o
INNER JOIN order_items oi
ON o.order_id = oi.order_id
INNER JOIN products p
ON oi.product_id = p.product_id;

SELECT p.name AS product_name,
       c.name AS category_name
FROM products p
INNER JOIN categories c
ON p.category_id = c.category_id;

SELECT p.name AS product_name,
       s.name AS supplier_name
FROM products p
INNER JOIN suppliers s
ON p.supplier_id = s.supplier_id;

SELECT c.name,
       r.rating
FROM reviews r
INNER JOIN customers c
ON r.customer_id = c.customer_id;

SELECT c.name,
       p.amount,
       p.method,
       p.status
FROM payments p
INNER JOIN orders o
ON p.order_id = o.order_id
INNER JOIN customers c
ON o.customer_id = c.customer_id;

SELECT s.shipment_id,
       s.status,
       o.order_id,
       o.total
FROM shipments s
INNER JOIN orders o
ON s.order_id = o.order_id;

SELECT c.customer_id,
       p.name
FROM cart c
INNER JOIN products p
ON c.product_id = p.product_id;

SELECT w.customer_id,
       p.name
FROM wishlist w
INNER JOIN products p
ON w.product_id = p.product_id;

SELECT c.name,
       a.address
FROM customers c
INNER JOIN addresses a
ON c.customer_id = a.customer_id;