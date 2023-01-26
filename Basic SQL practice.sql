
-- Select the databse
USE sql_hr;

-- Display the table
Select * from sql_hr.employees;

--  Check the description of the table
DESCRIBE employees;


-- Retrieve employee first and last names
select first_name, last_name
from employees;


-- Find employees whose salary is above 30000
SELECT first_name, last_name
FROM employees
WHERE salary > 30000;


-- Display the full name fby joining the first and last name
SELECT concat(first_name ,' ',  last_name) as full_name
FROM employees;


-- Find 5 employees whose salary is above 60,000 by displaying their full names
SELECT concat(first_name ,' ',  last_name) as full_name
FROM employees
WHERE salary > 60000
LIMIT 5;


-- Find employees with the job title Account Executive
SELECT first_name, last_name
FROM employees
WHERE job_title = 'Account Executive';


-- Find the average salary of employees
SELECT AVG(salary)
FROM employees;


-- Find the average salary of a Social Worker
SELECT AVG (salary)
FROM employees
WHERE job_title = 'Social Worker';


-- Find the number of rows in Employees table
SELECT COUNT(*) as number_of_rows
FROM employees;


-- Fin d the number of job_titles and order in descending order
SELECT job_title, COUNT(job_title) as count
FROM employees
GROUP BY job_title
ORDER BY count DESC;


-- Find full names of employees whose salary is greater than 50000 with office id 1
SELECT concat(first_name, ' ' , last_name) as fullname
FROM employees 
WHERE salary > 50000
AND office_id = 1;


-- Find employees whose first name begin with the letter 'a'
SELECT first_name
FROM employees
WHERE first_name LIKE 'a%';


-- Find employees whose lastname end with 'e'
SELECT last_name
FROM employees
WHERE last_name LIKE '%e';


-- Find the first and last name of employees whose names contain letter 'a'
SELECT first_name, last_name
FROM employees
WHERE first_name LIKE '%a%';


-- Select the inventory database
use sql_inventory;


-- Check the information in table products
SELECT * FROM sql_inventory.products;


-- Find the name and quantity in stock available
SELECT name, quantity_in_stock
FROM products;

 -- Find the name and revenue of the products
SELECT name, quantity_in_stock * unit_price AS revenue
FROM products;

-- Find the name and revenue of Foam dinner plates
SELECT name, quantity_in_stock * unit_price AS revenue
FROM products
WHERE name = 'Foam Dinner Plate';


-- Check whether the product column has null values 
SELECT name
FROM products
WHERE name IS NULL;


-- Check for non-Null values in the name column
SELECT name
FROM products
WHERE name IS NOT NULL;


-- Select the sql_inventory database
USE sql_inventory;


-- Display the information in products table
SELECT * FROM sql_inventory.products;

/* 
USE of operators such as AVG, SUM,MAX, MIN and COUNT
*/

-- Find the average quantity in stock
SELECT AVG(quantity_in_stock)
FROM products;

-- Find the sum of the quantity in stock
SELECT SUM(quantity_in_stock)
FROM products;


-- Find the minimum value of quantity in stock
SELECT MIN(quantity_in_stock)
FROM products;


-- Find the maximum value of quantity in stock
SELECT MAX(quantity_in_stock)
FROM products;


-- Find the number of Longan products in the inventory
SELECT COUNT(name)
FROM products
WHERE name = 'Longan';


 -- Find the names, average quantity in stock and price of products that are more than 30 in the inventory. List only the top 5 products.
SELECT name,AVG(quantity_in_stock), AVG(unit_price)
FROM products
WHERE quantity_in_stock> 30
GROUP by name
LIMIT 5;


-- using the invoicing database
use sql_invoicing;


-- Display information in the clients table
SELECT * FROM sql_invoicing.clients;


-- Find the name and city where the clients reside 
SELECT name,city
FROM clients;


-- Find the name and state of teh clients with client id '3'
SELECT name,state
FROM clients
WHERE client_id = 3;


-- Count the lients with the name 'Vinte'
SELECT COUNT(*) AS name
FROM clients
WHERE name = "Vinte";


-- Selecting the invoicing database
USE sql_invoicing;


-- Display all contents from invoices table
SELECT * FROM sql_invoicing.invoices;


-- Find the number and clients balance from the invoices. Only display five items
SELECT number, invoice_total-payment_total AS balance
FROM invoices
Limit 5;

-- Find the client id and customer balance 
SELECT client_id, invoice_total-payment_total as customer_balance
FROM invoices;


-- Find the due date and client debt
SELECT due_date, invoice_total - payment_total as client_debt
FROM invoices;


-- Extract the year from the due date
SELECT YEAR(due_date)
FROM invoices;

-- Find the client id and invoice date where the year is 2019
SELECT client_id, invoice_date, YEAR(invoice_date)
FROM invoices
WHERE YEAR (invoice_date)= 2019;

-- Find the client id and invoice date where the year is equal or greater than 2019
SELECT client_id, due_date, YEAR(due_date)
FROM invoices
WHERE YEAR(due_date) >= 2019;

-- Extract the week number from the due date
SELECT client_id, due_date, WEEK (due_date)
FROM invoices;


-- Display information from the payments table
SELECT * FROM sql_invoicing.payments;


-- Find the unique client id's 
SELECT  DISTINCT (client_id)
FROM payments;

-- Find the distinct payment_methods
SELECT DISTINCT(name)
FROM payment_methods;

















