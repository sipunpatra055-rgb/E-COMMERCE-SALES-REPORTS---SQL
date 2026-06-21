CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    signup_date DATE,
    country VARCHAR(50)
);
CREATE TABLE products (
product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    product_id INT,
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES 
(1, 'John', 'Doe', '2025-01-15', 'USA'),
(2, 'Jane', 'Smith', '2025-02-20', 'UK'),
(3, 'Ali', 'Khan', '2025-03-05', 'UAE'),
(4, 'Marie', 'Dubois', '2025-04-12', 'France'),
(5, 'Sam', 'Wilson', '2025-05-18', 'USA');



INSERT INTO customers VALUES 
(1, 'John', 'Doe', '2025-01-15', 'USA'),
(2, 'Jane', 'Smith', '2025-02-20', 'UK'),
(3, 'Ali', 'Khan', '2025-03-05', 'UAE'),
(4, 'Marie', 'Dubois', '2025-04-12', 'France'),
(5, 'Sam', 'Wilson', '2025-05-18', 'USA');

INSERT INTO products VALUES 
(101, 'Wireless Mouse', 'Electronics', 25.00),
(102, 'Leather Journal', 'Stationery', 15.00),
(103, 'Bluetooth Speaker', 'Electronics', 60.00),
(104, 'Running Shoes', 'Apparel', 80.00),
(105, 'Coffee Mug', 'Stationery', 12.00);

INSERT INTO orders VALUES 
(1001, 1, '2025-06-01', 101, 2),
(1002, 2, '2025-06-02', 103, 1),
(1003, 1, '2025-06-03', 102, 1),
(1004, 3, '2025-06-04', 105, 5),
(1005, 4, '2025-06-05', 104, 1),
(1006, 2, '2025-06-06', 101, 1),
(1007, 5, '2025-06-07', 102, 3),
(1008, 1, '2025-06-08', 104, 1);

Find all customers from the USA ?

select *from CUSTOMERS
where country='USA'

What is the total number of orders placed ?
SELECT COUNT(order_id) AS TOTAL_ORDERS
FROM orders;

What is the most expensive product ?

select product_name,price 
from products 
order by price desc

List all orders along with the customer's first name and product name ? 

SELECT o.order_id, c.first_name, p.product_name
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;

Find customers who have placed more than 2 orders ?

SELECT customer_id, COUNT(order_id) AS order_count
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 2;



