1. SELECT * FROM customers;

2. SELECT * FROM products WHERE price > 5000;

3. SELECT * FROM products WHERE stock < 10;

4. SELECT * FROM suppliers;

5. SELECT * FROM orders WHERE status = 'Completed';

6. SELECT * FROM orders
   WHERE MONTH(order_date) = MONTH(CURDATE())
   AND YEAR(order_date) = YEAR(CURDATE());

7. SELECT * FROM customers
   WHERE created_at >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);

8. SELECT * FROM products ORDER BY price DESC;

9. SELECT * FROM products ORDER BY price DESC LIMIT 10;

10. SELECT * FROM shipments WHERE status = 'Active';