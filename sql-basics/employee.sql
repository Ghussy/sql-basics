
-- List all employee first and last names only that live in Calgary.
SELECT first_name, last_name 
FROM employee
WHERE city = 'Calgary'
-- Find the birthdate for the youngest employee.
select MIN(birth_date) as youngest
FROM employee

-- Find the birthdate for the oldest employee.
SELECT MAX(birth_date) as oldest
FROM employee
-- Find everyone that reports to Nancy Edwards (use the ReportsTo column). * You will need to query the employee table to find the id for Nancy Edwards
Select *
from employee
where reports_to = 2
-- Count how many people live in Lethbridge.
SELECT COUNT(city) 
from employee
where city = 'Lethbridge'

