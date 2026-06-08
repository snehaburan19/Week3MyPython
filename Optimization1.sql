CREATE INDEX idx_product_name
ON products(name);

CREATE INDEX idx_customer_email
ON customers(email);

EXPLAIN
SELECT *
FROM products
WHERE name='iPhone 14';

EXPLAIN
SELECT SUM(quantity * price)
FROM order_items;

SELECT product_id,
       SUM(quantity) qty
FROM order_items
GROUP BY product_id
ORDER BY qty DESC
LIMIT 1;