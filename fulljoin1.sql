SELECT p.name, r.rating
FROM products p
LEFT JOIN reviews r
ON p.product_id = r.product_id;

SELECT c.name, o.order_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

SELECT s.name, p.name
FROM suppliers s
LEFT JOIN products p
ON s.supplier_id = p.supplier_id;

SELECT c.name, p.name
FROM categories c
LEFT JOIN products p
ON c.category_id = p.category_id;

SELECT o.order_id, s.status
FROM orders o
LEFT JOIN shipments s
ON o.order_id = s.order_id;