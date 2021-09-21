-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    person_id INT,
    product_name VARCHAR(20),
    product_price numeric,
    quantity INT
);
-- Add 5 orders to the orders table. -- Make orders for at least two different people. -- person_id should be different for different people.

INSERT INTO orders(person_id, product_name, product_price, quantity)
VALUES 
    (1, 'cheerios', 12.99, 2),
    (2, 'fruit loops', 12.99, 2),
    (3, 'honeycombs', 12.99, 2),
    (6, 'life', 12.99, 2),
    (2, 'cheerios', 12.99, 2);

-- Select all the records from the orders table.
select *
FROM orders
-- Calculate the total number of products ordered.
select quantity * product_price
FROM orders
-- Calculate the total order price.
select quantity * product_price
FROM orders
-- Calculate the total order price by a single person_id.
select quantity * product_price
FROM orders
WHERE person_id = 2