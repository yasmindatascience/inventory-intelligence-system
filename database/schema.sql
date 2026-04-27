CREATE TABLE suppliers (
    supplier_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    region VARCHAR(100)
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    supplier_id INT,
    price DECIMAL(10,2)
);

CREATE TABLE inventory (
    product_id INT,
    stock_quantity INT,
    min_stock INT
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    product_id INT,
    quantity INT,
    order_date DATE
);
