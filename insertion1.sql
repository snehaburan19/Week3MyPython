INSERT INTO customers VALUES
(1,'Asha','asha@gmail.com','Hyderabad','2025-05-01'),
(2,'Ravi','ravi@gmail.com','Chennai','2025-06-10'),
(3,'Neha','neha@gmail.com','Bangalore','2025-06-15');
INSERT INTO categories VALUES
(1,'Electronics',NULL),
(2,'Fashion',NULL),
(3,'Mobiles',1);
INSERT INTO suppliers VALUES
(1,'Samsung'),
(2,'Apple'),
(3,'Nike');
INSERT INTO products VALUES
(1,'iPhone 14',80000,15,3,2,4.8),
(2,'Samsung S23',70000,8,3,1,4.6),
(3,'Nike Shoes',5000,50,2,3,4.3);
INSERT INTO orders VALUES
(1,1,'2026-06-01','Completed',85000),
(2,2,'2026-06-05','Pending',70000),
(3,3,'2026-06-07','Completed',5000);
INSERT INTO order_items VALUES
(1,1,1,1,80000),
(2,2,2,1,70000),
(3,3,3,1,5000);
INSERT INTO payments VALUES
(1,1,85000,'UPI','Paid'),
(2,2,70000,'Card','Pending'),
(3,3,5000,'Cash','Paid');
INSERT INTO shipments VALUES
(1,1,'Delivered'),
(2,2,'Processing'),
(3,3,'Delivered');
INSERT INTO reviews VALUES
(1,1,1,5),
(2,2,2,4),
(3,3,3,4);
INSERT INTO addresses VALUES
(1,1,'Hyderabad Main Road'),
(2,2,'Chennai Central'),
(3,3,'Bangalore MG Road');
INSERT INTO cart VALUES
(1,1,2),
(2,2,1);
INSERT INTO wishlist VALUES
(1,1,3),
(2,3,1);