-- Count how many orders were made from the USA.
select count(*)
FROM orders
-- Find the largest order total amount.
SELECT MAX(product_price) as largest_order
FROM orders
-- Find the smallest order total amount.
SELECT MIN(product_price) as largest_order
FROM orders
-- Find all orders bigger than $5.
SELECT *
FROM orders
WHERE product_price > 5.00
-- Count how many orders were smaller than $5.
select count(*)
FROM orders
where product_price < 5.00
-- Count how many orders were in CA, TX, or AZ (use IN).
SELECT COUNT(*)
FROM orders
WHERE city IN ('CA', 'TX', 'AZ')
-- Get the average total of the orders.
SELECT AVG(product_price * quantity)
from orders
-- Get the total sum of the orders.
SELECT SUM(product_price * quantity)
from orders
-- Update the invoice with an invoice_id of 5 to have a total order amount of 24.
UPDATE orders
SET invoice_id = 5
-- Delete the invoice with an invoice_id of 1.
DELETE FROM orders
WHERE invoice_id = 1;