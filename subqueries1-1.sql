SELECT *
FROM products p1
WHERE price >
(
   SELECT AVG(price)
   FROM products p2
   WHERE p1.category_id = p2.category_id
);

SELECT *
FROM customers c
WHERE customer_id IN
(
   SELECT customer_id
   FROM orders
   WHERE total >
   (
      SELECT AVG(total)
      FROM orders
   )
);

SELECT supplier_id
FROM products p
GROUP BY supplier_id
HAVING AVG(price) >
(
   SELECT AVG(price)
   FROM products
);

SELECT *
FROM orders o1
WHERE total >
(
   SELECT AVG(total)
   FROM orders o2
   WHERE o1.customer_id = o2.customer_id
);

SELECT *
FROM products p
WHERE product_id IN
(
   SELECT product_id
   FROM reviews
   GROUP BY product_id
   HAVING AVG(rating) >
   (
      SELECT AVG(rating)
      FROM reviews
   )
);