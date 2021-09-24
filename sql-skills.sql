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

-- extra credit


--artist

SELECT * FROM artist ORDER BY name desc limit 10;

SELECT * FROM artist WHERE name LIKE 'Black%';

SELECT * FROM artist WHERE name LIKE '%Black%';

--employee

SELECT max(birth_date) FROM employee;

SELECT min(birth_date) FROM employee;


--invoice

SELECT COUNT (invoice_id)
FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total)
FROM invoice;

--more join queries

SELECT pt.track_id
FROM playlist_track pt
JOIN playlist p ON pt.playlist_id = p.playlist_id
where p.name = 'Music';

SELECT t.name
FROM track t
JOIN playlist_track p ON t.track_id = p.track_id
WHERE p.playlist_id = 5;

SELECT t.name, pl.name
FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist pl ON pl.playlist_id = pt.playlist_id;

SELECT t.name, al.title
FROM track t
JOIN genre g ON t.genre_id = g.genre_id
JOIN album al ON t.album_id = al.album_id
WHERE g.name = 'Alternative' or g.name = 'Punk';

