SELECT COUNT(*) AS total_customers
FROM customers;

SELECT COUNT(*) AS total_products
FROM products;

SELECT AVG(price) AS average_price
FROM products;

SELECT MAX(price) AS highest_price
FROM products;

SELECT MIN(price) AS lowest_price
FROM products;

SELECT SUM(quantity * price) AS total_revenue
FROM order_items;

SELECT COUNT(*) AS total_orders
FROM orders;

SELECT SUM(stock) AS total_stock
FROM products;

SELECT AVG(total) AS average_order_value
FROM orders;

SELECT SUM(amount) AS total_payment
FROM payments
WHERE status='Paid';
