-- Artist Table

INSERT INTO artist (name)
VALUES ('DMX'),
('CHVRCHES'),
('Grimes');

SELECT * FROM artist LIMIT 5;

-- Employee Table

SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

SELECT * FROM EMPLOYEE WHERE reports_to = 2;

SELECT COUNT(employee_id)
FROM employee
WHERE city = 'Lethbridge';

-- INVOICE table

SELECT COUNT (invoice_id)
FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total)
FROM invoice;

SELECT MIN(total)
FROM invoice;

SELECT * 
FROM invoice
WHERE total > 5;

SELECT COUNT (invoice_id)
FROM invoice
WHERE total < 5;

SELECT SUM(total)
FROM invoice;

-- JOIN Queries

SELECT i.invoice_id
FROM invoice i
JOIN invoice_line il ON i.invoice_id = il.invoice_id
WHERE il.unit_price > 0.99;

SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c ON i.customer_id = c.customer_id;

SELECT c.first_name AS cust_fname, c.last_name AS cust_lname,
e.first_name AS emp_fname, e.last_name AS emp_lname
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id
ORDER BY e.last_name;

SELECT al.title, ar.name
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id
ORDER BY ar.name;