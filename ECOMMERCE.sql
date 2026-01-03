CREATE DATABASE ecommerce; 
USE ecommerce; 
 
-- Create Products Table 
CREATE TABLE products ( 
    product_id INT PRIMARY KEY, 
    product_name VARCHAR(255), 
    category VARCHAR(50), 
    price DECIMAL(10, 2) 
); 
 
-- Create Orders Table 
CREATE TABLE orders ( 
    order_id INT PRIMARY KEY, 
    product_id INT, 
    quantity INT, 
    total_price DECIMAL(10, 2), 
    FOREIGN KEY (product_id) REFERENCES products(product_id) 
); 
-- Insert Sample Data into Products Table 
INSERT INTO products (product_id, product_name, category, price) 
VALUES 
    (1, 'Laptop', 'Electronics', 1200.00), 
    (2, 'T-Shirt', 'Apparel', 25.00), 
    (3, 'Bookshelf', 'Furniture', 350.00), 
    (4, 'Sneakers', 'Footwear', 80.00); 
 
-- Insert Sample Data into Orders Table 
INSERT INTO orders (order_id, product_id, quantity, total_price) 
VALUES 
    (101, 1, 2, 2400.00), 
    (102, 2, 5, 125.00), 
    (103, 4, 3, 240.00), 
    (104, 3, 1, 350.00); 
    
    
-- Retrieve all products from the `products` table. 
select * from products;
select product_name from products;

-- Find the total number of orders. 
select * from orders;
select count(order_ID) from orders;

-- List the products with a price greater than $50.00. 
select * from products;
select product_name from products
where price > 50;

-- Retrieve the order ID, product name, and total price for each order. 
select * from products;
select * from orders;
select * from orders
join products
on orders.product_id = products.product_id;
select order_id, product_name, total_price from orders
join products
on orders.product_id = products.product_id;



-- Calculate the total revenue generated from the orders.
select * from orders;
select sum(total_price) from orders; 
-- Get the average price of products in the `products` table. 
select * from products;
select avg(price) from products;
-- Find the highest total price among the orders. 
-- List the products along with their categories. 
-- Find the product(s) with the highest price. 
-- Retrieve the order ID and quantity for orders where the total price is greater than $200.00. 