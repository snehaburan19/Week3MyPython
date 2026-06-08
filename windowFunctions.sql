SELECT product_id,
       SUM(quantity * price) AS revenue,
       RANK() OVER(ORDER BY SUM(quantity * price) DESC) AS rank_no
FROM order_items
GROUP BY product_id;

SELECT customer_id,
       SUM(total) AS spending,
       RANK() OVER(ORDER BY SUM(total) DESC) AS rank_no
FROM orders
GROUP BY customer_id;

SELECT p.supplier_id,
       SUM(oi.quantity * oi.price) AS sales,
       RANK() OVER(ORDER BY SUM(oi.quantity * oi.price) DESC) AS rank_no
FROM products p
JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY p.supplier_id;

SELECT *
FROM (
    SELECT p.product_id,
           p.category_id,
           p.price,
           ROW_NUMBER() OVER(PARTITION BY category_id ORDER BY price DESC) rn
    FROM products p
) x
WHERE rn <= 3;

SELECT *
FROM (
    SELECT c.city,
           c.customer_id,
           ROW_NUMBER() OVER(PARTITION BY city ORDER BY customer_id) rn
    FROM customers c
) t
WHERE rn <= 5;

SELECT order_date,
       total,
       SUM(total) OVER(ORDER BY order_date) running_total
FROM orders;

SELECT MONTH(order_date) month_no,
       SUM(total) monthly_sales,
       SUM(SUM(total)) OVER(ORDER BY MONTH(order_date)) cumulative_sales
FROM orders
GROUP BY MONTH(order_date);

SELECT *
FROM (
   SELECT *,
          ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY total DESC) rn
   FROM orders
) x
WHERE rn = 1;

SELECT *
FROM (
   SELECT *,
          ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_date DESC) rn
   FROM orders
) x
WHERE rn = 1;

SELECT *
FROM (
   SELECT *,
          ROW_NUMBER() OVER(PARTITION BY category_id ORDER BY rating DESC) rn
   FROM products
) x
WHERE rn = 1;
