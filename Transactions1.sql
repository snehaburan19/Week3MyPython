START TRANSACTION;

INSERT INTO orders
VALUES (4,1,'2026-06-10','Completed',10000);

INSERT INTO payments
VALUES (4,4,10000,'UPI','Paid');

INSERT INTO shipments
VALUES (4,4,'Processing');

COMMIT;


START TRANSACTION;

INSERT INTO payments
VALUES (5,4,10000,'Card','Failed');

ROLLBACK;


START TRANSACTION;

SAVEPOINT step1;

INSERT INTO orders
VALUES (5,2,'2026-06-11','Pending',2000);

ROLLBACK TO step1;

COMMIT;


START TRANSACTION;

INSERT INTO orders
VALUES (6,3,'2026-06-12','Completed',3000);

COMMIT;


START TRANSACTION;

UPDATE products
SET stock = stock - 1
WHERE product_id = 1;

COMMIT;