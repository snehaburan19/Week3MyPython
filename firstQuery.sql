CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    created_at DATE
);
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    name VARCHAR(100),
    parent_id INT
);
CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY,
    name VARCHAR(100)
);
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    price DECIMAL(10,2),
    stock INT,
    category_id INT,
    supplier_id INT,
    rating DECIMAL(3,2)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(50),
    total DECIMAL(10,2)
);
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2)
);
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    amount DECIMAL(10,2),
    method VARCHAR(50),
    status VARCHAR(50)
);
CREATE TABLE shipments (
    shipment_id INT PRIMARY KEY,
    order_id INT,
    status VARCHAR(50)
);
CREATE TABLE reviews (
    review_id INT PRIMARY KEY,
    product_id INT,
    customer_id INT,
    rating INT
);
CREATE TABLE addresses (
    address_id INT PRIMARY KEY,
    customer_id INT,
    address TEXT
);
CREATE TABLE cart (
    cart_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT
);
CREATE TABLE wishlist (
    wishlist_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT
);
