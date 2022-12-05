CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY NOT NULL,
    person_id INT NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    product_price FLOAT NOT NULL,
    quantity INT NOT NULL
);

INSERT INTO orders(person_id, product_name, product_price, quantity)
VALUES
(1, 'chips', 1.25, 10),
(1, 'soda', 2.25, 3), 
(2, 'french fries', 2.10 , 2), 
(3, 'burger', 3.00 , 1), 
(3, 'shake', 3.20, 1);

SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(quantity*product_price) FROM orders;

SELECT SUM(quantity*product_price) FROM orders WHERE person_id = 1;