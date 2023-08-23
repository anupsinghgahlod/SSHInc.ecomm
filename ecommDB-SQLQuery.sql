

-- Show all open databases

SELECT name
FROM sys.databases
WHERE state = 0;

-- Creating database

CREATE DATABASE ecommDB;

-- Removing database

DROP DATABASE ecommDB;

-- Using database

USE ecommDB;

-- to see which database the code currently runs in

SELECT DB_NAME() AS currentdatabase;


-- creating table in the database for data extraction and cleaning query

-- creating drivers table and entering values in it

DROP TABLE IF EXISTS drivers;
CREATE TABLE drivers(driver_id VARCHAR(10), driver_name VARCHAR(20), driver_age INTEGER, total_orders_delivered INTEGER, driver_rating FLOAT, reg_date DATE); 

INSERT INTO drivers(driver_id, driver_name, driver_age, total_orders_delivered, driver_rating, reg_date) 
 VALUES ('D001', 'Frank', 40, 45, 4.7, '01-01-2021'),
        ('D002', 'Grace', 38, 67, 4.8, '01-03-2021'),
		('D003', 'Harry', 42, 34, 4.5, '01-08-2021'),
		('D004', 'Kate', 36, 76, 4.6, '01-15-2021'),
		('D005', 'Leo', 39, 48, 4.5, '02-02-2021'),
		('D006', 'Mia', 37, 45, 4.7, '02-05-2021'),
		('D007', 'Domnique', 41, 35, 4.3, '02-01-2021'),
		('D008', 'Malcolm', 29, 43, 4.2, '01-15-2021'),
		('D009', 'Richard', 39, 53, 4.2, '01-18-2021'),
		('D010', 'Suri', 32, 75, 4.7, '01-09-2021'),
		('D011', 'Jogi', 28, 56, 4.8, '01-21-2021'),
		('D012', 'Aaron', 33, 38, 4.2, '01-02-2021');

SELECT * FROM drivers;


-- creating products table and entering values in it

DROP TABLE IF EXISTS products;
CREATE TABLE products(product_id VARCHAR(10), product_name VARCHAR(20), product_price FLOAT, product_category VARCHAR(20), product_rating FLOAT);

INSERT INTO products(product_id, product_name, product_price, product_category, product_rating)
            VALUES ('P001', 'NXG Laptop', 999, 'Electronics', 4.5),
			       ('P002', 'Graphic T-shirt', 19.99, 'Clothing', 3.8),
				   ('P003', 'Da Vinci Book', 12.99, 'Books', 4.2),
				   ('P004', 'NZ Headphones', 49.99, 'Electronics', 4.1),
				   ('P005', 'DSL Jeans', 39.99, 'Clothing', 3.9),
				   ('P006', 'NVG Watch', 199.99, 'Accessories', 4.3),
				   ('P007', 'WNDR Bag', 59.99, 'Accessories', 4),
				   ('P008', 'ENGY Coffee Maker', 79.99, 'Home', 4.2),
				   ('P009', 'STHY Pillow', 24.99, 'Home', 3.9),
				   ('P010', 'Trndy Sneakers', 69.99, 'Clothing', 4.1),
				   ('P011', 'Shdow Sunglasses', 29.99, 'Accessories', 4),
				   ('P012', 'OT Jacket', 99.99, 'Clothing', 4.2),
				   ('P013', 'esy Blender', 49.99, 'Home', 4.1),
				   ('P014', 'AZ Keyboard', 19.99, 'Electronics', 3.8),
				   ('P015', 'Precise Wired Mouse', 14.99, 'Electronics', 3.9),
				   ('P016', 'GL Earrings', 19.99, 'Accessories', 4.1),
				   ('P017', 'winterdays Sweater', 49.99, 'Clothing', 4.3),
				   ('P018', 'smokeys Toaster', 24.99, 'Home', 4),
				   ('P019', 'Damru BT Speaker', 39.99, 'Electronics', 4.2),
				   ('P020', 'SZ Leather Belt', 14.99, 'Accessories', 3.9);

SELECT * FROM products;


-- creating customers table and entering values in it

DROP TABLE IF EXISTS customers;
CREATE TABLE customers(customer_id VARCHAR(10), customer_name VARCHAR(20), customer_sex CHAR(1), customer_age INTEGER);

INSERT INTO customers(customer_id, customer_name, customer_sex, customer_age)
             VALUES ('C001', 'Alice Yohan', 'F', 25),
			        ('C002', 'Bob Carlos', 'M', 32),
					('C003', 'Carol Schnyder', 'F', 28),
					('C004', 'David Guetta', 'M', 35),
					('C005', 'Eve Francis', 'F', 30),
					('C006', 'Fred Huerrera', 'M', 27),
					('C007', 'Gina Hyank', 'F', 33),
					('C008', 'Hank Whitaker', 'M', 31),
					('C009', 'Irene Schmiddt', 'F', 29),
					('C010', 'Jack Harley', 'M', 34),
					('C011', 'Kelly John', 'F', 26),
					('C012', 'Luke Ortega', 'M', 30),
					('C013', 'Nancy Perriera', 'F', 32),
					('C014', 'Omar DCousta', 'M', 28),
					('C015', 'Paula Walker', 'F', 31),
					('C016', 'Quinn Hyatt', 'M', 29),
					('C017', 'Ruby Haq', 'F', 27),
					('C018', 'Steve Richardson', 'M', 33),
					('C019', 'Tina Manchanda', 'F', 30),
					('C020', 'Umar Bhatt', 'M', 34),
					('C021', 'Vera Furniturewala', 'F', 28),
					('C022', 'Will Globeson', 'M', 31),
					('C023', 'Xena Malik', 'F', 29),
					('C024', 'Yasin Ehteshaam', 'M', 32),
					('C025', 'Zoe Lal', 'F', 30),
					('C026', 'Aaron Smith', 'M', 33),
					('C027', 'Beth Hussain', 'F', 27),
					('C028', 'Carl Jones', 'M', 34),
					('C029', 'Dana Takam', 'F', 28),
					('C030', 'Eric Pillai', 'M', 35),
					('C031', 'Fiona Rathore', 'F', 26),
					('C032', 'Greg Rao', 'M', 36),
					('C033', 'Hailey Bansal', 'F', 29),
					('C034', 'Ian Sameer', 'M', 30),
					('C035', 'Julia Rawat', 'F', 31);

SELECT * FROM customers;


-- creating orders table and entering values in it

DROP TABLE IF EXISTS orders;
CREATE TABLE orders(order_date DATETIME, order_id VARCHAR(10), customer_id VARCHAR(10), no_of_items INTEGER, product_id VARCHAR(20), order_total FLOAT, driver_id VARCHAR(10), time_taken VARCHAR(10), cancellation VARCHAR(15));

INSERT INTO orders(order_date, order_id, customer_id, no_of_items, product_id, order_total, driver_id, time_taken, cancellation)
            VALUES('01-01-2021 18:05', 'OD001', 'C001', 2, 'P001', 1048.99, 'D001', '30 min', 'null'),
			      ('01-01-2021 18:05', 'OD001', 'C001', 2, 'P004', 1048.99, 'D001', '30 min', 'null'),
				  ('01-01-2021 19:00', 'OD002', 'C002', 2, 'P002', 32.98, 'D002', '15 min', 'NaN'),
				  ('01-01-2021 19:00', 'OD002', 'C002', 2, 'P003', 32.98, 'D002', '15 min', 'NaN'),
				  ('01-02-2021 18:40', 'OD003', 'C002', 1, 'P005', 39.99, 'D004', '25 min', 'NaN'),
				  ('02-01-2021 23:51', 'OD004', 'C003', 1, 'P003', 12.99, 'D003', '20 min', 'null'),
				  ('01-23-2021 15:23', 'OD005', 'C004', 2, 'P004', 89.98, 'D004', '10 min', 'null'),
				  ('01-23-2021 15:23', 'OD005', 'C004', 2, 'P005', 89.98, 'D004', '10 min', 'null'),
				  ('01-04-2021 13:23', 'OD006', 'C005', 1, 'P002',19.99,null,null,'cancel'),
				  ('01-10-2021 11:22', 'OD007', 'C006', 2, 'P006', 259.98, 'D005', '25min', 'NaN'),
				  ('01-10-2021 11:22', 'OD007', 'C006', 2, 'P007', 259.98, 'D005', '25min', 'NaN'),
				  ('01-21-2021 16:35', 'OD008', 'C007', 3, 'P008', 174.97,null,null, 'Yes'),
				  ('01-21-2021 16:35', 'OD008', 'C007', 3, 'P009', 174.97,null,null, 'Yes'),
				  ('01-21-2021 16:35', 'OD008', 'C007', 3, 'P010', 174.97,null,null, 'Yes'),
				  ('01-07-2021 21:00', 'OD009', 'C008', 2, null, null, null, null, 'yes'),
				  ('01-07-2021 21:00', 'OD009', 'C008', 2, null, null, null, null, 'yes'),
				  ('01-08-2021 21:10', 'OD010', 'C008', 1, 'P018', 24.99, 'D001', '18min', 'No'),
				  ('01-07-2021 21:03', 'OD011', 'C009', 1, 'P011', 29.99, 'D008', '10min', 'null'),
				  ('01-08-2021 21:23', 'OD014', 'C009', 1, 'P012', 99.99, 'D007', '12min', 'null'),
				  ('01-09-2021 23:54', 'OD015', 'C010', 3, 'P013', 84.97, 'D009', '20min', 'NaN'),
				  ('01-09-2021 23:54', 'OD015', 'C010', 3, 'P014', 84.97, 'D009', '20min', 'NaN'),
				  ('01-09-2021 23:54', 'OD015', 'C010', 3, 'P015', 84.97, 'D009', '20min', 'NaN'),
				  ('02-04-2021 12:23', 'OD016', 'C011', 1, 'P007', 59.99, 'D010', '32min', 'No'),
				  ('01-28-2021 13:40', 'OD017', 'C012', 2, 'P017', 74.98, 'D011', '25 min', 'No'),
				  ('01-28-2021 13:40', 'OD017', 'C012', 2, 'P018', 74.98, 'D011', '25 min', 'No'),
				  ('01-17-2021 21:30', 'OD018', 'C013', 3, 'P019', 1053.98, 'D012', '23min', 'NaN'),
				  ('01-17-2021 21:30', 'OD018', 'C013', 3, 'P020', 1053.98, 'D012', '23min', 'NaN'),
				  ('01-17-2021 21:30', 'OD018', 'C013', 3, 'P001', 1053.98, 'D012', '23min', 'NaN'),
				  ('02-09-2021 23:54', 'OD019', 'C014', 1, 'P011', 29.99, 'D010', '15min', null),
				  ('01-14-2021 22:00', 'OD020', 'C015', 2, 'P012', 149.98, 'D011', '21min', 'NaN'),
				  ('01-14-2021 22:00', 'OD020', 'C015', 2, 'P013', 149.98, 'D011', '21min', 'NaN'),
				  ('01-11-2021 18:34', 'OD021', 'C016', 3, 'P006', 244.97, 'D012', '10 min', 'NaN'),
				  ('01-11-2021 18:34', 'OD021', 'C016', 3, 'P011', 244.97, 'D012', '10 min', 'NaN'),
				  ('01-11-2021 18:34', 'OD021', 'C016', 3, 'P020', 244.97, 'D012', '10 min', 'NaN'),
				  ('02-02-2021 17:31', 'OD022', 'C017', 1, 'P015', 14.99, 'D010', '15 min', 'NaN'),
				  ('02-04-2021 14:25', 'OD023', 'C018', 2, 'P010', 109.98, 'D011', '25min', null),
				  ('02-04-2021 14:25', 'OD023', 'C018', 2, 'P005', 109.98, 'D011', '25min', null),
				  ('01-11-2021 11:03', 'OD024', 'C019', 3, 'P016', 149.97, 'D012', '35 min', 'null'),
				  ('01-11-2021 11:03', 'OD024', 'C019', 3, 'P011', 149.97, 'D012', '35 min', 'null'),
				  ('01-11-2021 11:03', 'OD024', 'C019', 3, 'P012', 149.97, 'D012', '35 min', 'null'),
				  ('01-08-2021 21:00', 'OD025', 'C020', 1, 'P019', 39.99, 'D010', '15min', 'NaN'),
				  ('01-10-2021 11:22', 'OD026', 'C021', 2, 'P020', 44.98, 'D011', '34min', 'No'),
				  ('01-10-2021 11:22', 'OD026', 'C021', 2, 'P011', 44.98, 'D011', '34min', 'No'),
				  ('02-01-2021 23:51', 'OD027', 'C022', 3, 'P004', 179.97, 'D012', '18min', 'null'),
				  ('02-01-2021 23:51', 'OD027', 'C022', 3, 'P007', 179.97, 'D012', '18min', 'null'),
				  ('02-01-2021 23:51', 'OD027', 'C022', 3, 'P010', 179.97, 'D012', '18min', 'null'),
				  ('02-05-2021 13:23', 'OD034', 'C029', 1, 'P011', 29.99, 'D010', '15min', null),
				  ('02-08-2021 18:26', 'OD035', 'C030', 2, 'P008', 129.98, 'D011', '25min', 'null'),
				  ('02-08-2021 18:26', 'OD035', 'C030', 2, 'P013', 129.98, 'D011', '25min', 'null'),
				  ('02-06-2021 08:54', 'OD036', 'C031', 6, 'P001', 1183.95, 'D012', '43 min', null),
				  ('02-06-2021 08:54', 'OD036', 'C031', 6, 'P004', 1183.95, 'D012', '43 min', null),
				  ('02-06-2021 08:54', 'OD036', 'C031', 6, 'P019', 1183.95, 'D012', '43 min', null),
				  ('02-06-2021 08:54', 'OD036', 'C031', 6, 'P014', 1183.95, 'D012', '43 min', null),
				  ('02-06-2021 08:54', 'OD036', 'C031', 6, 'P015', 1183.95, 'D012', '43 min', null),
				  ('02-06-2021 08:54', 'OD036', 'C031', 6, 'P007', 1183.95, 'D012', '43 min', null),
				  ('01-25-2021 18:00', 'OD037', 'C002', 1, 'P002', 19.99, 'D010', '15 min', 'NaN'),
				  ('01-27-2021 10:00', 'OD038', 'C011', 1, 'P005', 39.99, 'D012', '20 min', 'NaN'),
				  ('01-29-2021 19:20', 'OD039', 'C017', 1, 'P012', 99.99, 'D008', '23 min', 'NaN'),
				  ('01-30-2021 14:13', 'OD040', 'C009', 1, 'P017', 49.99, 'D009', '25min', null),
				  ('02-02-2021 12:33', 'OD041', 'C011', 1, 'P001', 999, 'D012', '48min', null),
				  ('02-04-2021 15:23', 'OD042', 'C013', 1, 'P016', 19.99, 'D007', '35min', null),
				  ('02-05-2021 17:31', 'OD043', 'C017', 1, 'P015', 14.99, 'D011', '25 min', 'NaN'),
				  ('02-06-2021 15:25', 'OD044', 'C027', 1, 'P015', 14.99, 'D010', '15 min', 'NaN'),
				  ('02-06-2021 17:31', 'OD045', 'C017', 1, 'P009', 24.99, 'D005', '21 min', 'NaN'),
				  ('02-07-2021 12:23', 'OD046', 'C019', 1, 'P003', 12.99, 'D008', '20min', 'No'),
				  ('02-07-2021 12:33', 'OD047', 'C033', 1, 'P003', 12.99, 'D002', '21min', 'No'),
				  ('02-07-2021 13:54', 'OD048', 'C008', 1, 'P005', 39.99, 'D003', '26min', 'NaN'),
				  ('02-08-2021 11:54', 'OD049', 'C008', 1, 'P005', 39.99, 'D008', '22min', 'NaN');

SELECT * FROM orders;


-- creating premium_subscription table and entering values in it

DROP TABLE IF EXISTS premium_subscription;
CREATE TABLE premium_subscription (customer_id VARCHAR(10), subscrip_date DATETIME);

INSERT INTO premium_subscription(customer_id, subscrip_date)
			VALUES ('C002', '01-09-2021 16:39'),
			       ('C008', '01-10-2021 13:42'),
				   ('C009', '01-10-2021 11:23'),
				   ('C011', '02-01-2021 13:28');

SELECT * FROM premium_subscription;


-- Show all rows of every table in the output

SELECT * FROM drivers;
SELECT * FROM products;
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM premium_subscription;


-- 1. What is total amount spent by each customer on ecomm buying?
 
SELECT a.customer_id, SUM(b.product_price) total_expenditure
	  FROM orders a INNER JOIN products b
	  ON a.product_id = b.product_id
     GROUP BY a.customer_id;

-- OR table along with name

SELECT c.customer_id, d.customer_name, c.total_expenditure, d.customer_sex, d.customer_age
	   FROM (SELECT a.customer_id, SUM(b.product_price) total_expenditure
	               FROM orders a INNER JOIN products b
				   ON a.product_id = b.product_id
                  GROUP BY a.customer_id) c INNER JOIN customers d
	                                        ON c.customer_id = d.customer_id;


-- 2. How many distinct number of times each customers visited ecomm ?

SELECT customer_id, COUNT(DISTINCT order_date) days_visited
	  FROM orders
	  GROUP BY customer_id;



-- 3. What was the first product purchased by each customer? (**increasing no. of entries will help) maybe wrong

SELECT order_date, customer_id, product_id
      FROM (SELECT *, RANK() OVER(PARTITION BY customer_id
				                      ORDER BY order_date) first_purchase FROM orders) a
      WHERE first_purchase=1;



-- 4. What is the most purchased item in the catalog and how many times was it purchased by all customers?

-- selecting product id count from orders, grouping it by product id, and order it in descending order
SELECT product_id, COUNT(product_id) cnt
      FROM orders
	  GROUP BY product_id
	  ORDER BY COUNT(product_id) DESC;

-- selecting top 1 product as mentioned in the question
SELECT TOP 1 product_id, COUNT(product_id) cnt
       FROM orders
	   GROUP BY product_id
	   ORDER BY COUNT(product_id) DESC;

-- removing the total no. of count for the product which is purchased most
SELECT TOP 1 product_id
       FROM orders
	   GROUP BY product_id
	   ORDER BY COUNT(product_id) DESC;

--now adding customer id, no. of times it was bought by all customers
SELECT customer_id, product_id, COUNT(product_id) cnt
      FROM orders
	  WHERE product_id = (SELECT TOP 1 product_id
							     FROM orders
								 GROUP BY product_id
								 ORDER BY COUNT(product_id) DESC)
      GROUP BY customer_id, product_id;

-- getting product name
SELECT a.*, b.product_name
      FROM (SELECT customer_id, product_id, COUNT(product_id) cnt
	               FROM orders
				   WHERE product_id = (SELECT TOP 1 product_id
				                              FROM orders
											  GROUP BY product_id
											  ORDER BY COUNT(product_id) DESC)
      GROUP BY customer_id, product_id) a INNER JOIN products b
	                                      ON a.product_id = b.product_id;



-- 5. Which item was the most popular for each customer? (**increasing no. of entries will help)

-- generating count of each product that customer ordered
SELECT customer_id, product_id, COUNT(product_id) cnt
      FROM orders
	  GROUP BY customer_id, product_id;

-- giving a rank for each product descending with highest rank first
SELECT *, RANK() OVER ( PARTITION BY customer_id ORDER BY cnt DESC ) rnk
      FROM (SELECT customer_id, product_id, COUNT(product_id) cnt
	              FROM orders
				  GROUP BY customer_id, product_id)a;

--now, keeping only the highest rank throughout for all customers, as it will be considered most popular  (**increasing no. of entries will help)
SELECT * FROM (SELECT *, RANK() OVER(PARTITION BY customer_id ORDER BY cnt DESC) rnk
	              FROM (SELECT customer_id, product_id, COUNT(product_id) cnt
				              FROM orders
							  GROUP BY customer_id, product_id)a)b
         WHERE rnk = 1;

-- 6. Which item was purchased first by the customer after they took premium membership?

-- using inner join because information is required only for premium subscribers
SELECT a.customer_id, a.order_date, a.product_id, b.subscrip_date
      FROM orders a INNER JOIN premium_subscription b
	                ON a.customer_id = b.customer_id;

-- using inner join with date condition to show dates only greater (after subscribed) date
SELECT a.customer_id, a.order_date, a.product_id, b.subscrip_date
      FROM orders a INNER JOIN premium_subscription b
	                ON a.customer_id = b.customer_id
				   AND order_date >= subscrip_date;

-- item which was purchased first - giving rank to all
SELECT *, RANK() OVER(PARTITION BY customer_id ORDER BY order_date) rnk
      FROM (SELECT a.customer_id, a.order_date, a.product_id, b.subscrip_date
	              FROM orders a INNER JOIN premium_subscription b
				                ON a.customer_id = b.customer_id
							   AND order_date >= subscrip_date) c;

-- keeping only first item which was purchased by customer after premium_subscription
SELECT * FROM (SELECT *, RANK() OVER(PARTITION BY customer_id ORDER BY order_date) rnk
                     FROM (SELECT a.customer_id, a.order_date, a.product_id, b.subscrip_date
					             FROM orders a INNER JOIN premium_subscription b
								               ON a.customer_id = b.customer_id
											  AND order_date >= subscrip_date) c) d
	     WHERE rnk = 1;


-- 7. Which item was purchased just before the customer became a member?

-- it will be same as above, only we will give (<=) for order and subscrip date, and also ranking in descending order
SELECT * FROM (SELECT *, RANK() OVER(PARTITION BY customer_id ORDER BY order_date DESC) rnk
                     FROM (SELECT a.customer_id, a.order_date, a.product_id, b.subscrip_date
					             FROM orders a INNER JOIN premium_subscription b
								               ON a.customer_id = b.customer_id
											  AND order_date <= subscrip_date) c) d
		 WHERE rnk = 1;


-- 8. What is the total orders and amount spent for each member before they became a member?

-- taking up from above, then just selecting customer_id, count for total orders and sum of total orders,
-- and grouping for total to show in customer_id
SELECT customer_id, COUNT(order_date) total_orders, SUM(order_total) total_spendings
      FROM (SELECT a.customer_id, a.order_date, a.product_id, a.order_total, b.subscrip_date
	              FROM orders a INNER JOIN premium_subscription b
				                ON a.customer_id = b.customer_id
							   AND order_date <= subscrip_date) c
	  GROUP BY customer_id;


-- 9. If buying each product generates points. For eg- 5$ = 2 premium points and each product has different purchasing points 
-- for eg- for P002, 5$=1 premium point, for P005, 10$=5 premium points, and for P017, 5$=1 premium point --else taken 10--
--Calculate points collected by each customers and for which product most points have been given till now.

-- first aligning customer_ids with order date, product_id and prices
SELECT a.customer_id, a.order_date, a.product_id, b.product_price
      FROM orders a INNER JOIN products b
	                ON a.product_id = b.product_id;

-- selecting each customer coinciding with product_ids and amount of that product
SELECT c.customer_id, c.product_id, SUM(product_price) amt
      FROM (SELECT a.customer_id, a.order_date, a.product_id, b.product_price
	              FROM orders a INNER JOIN products b
				                ON a.product_id = b.product_id) c
      GROUP BY customer_id, product_id;

-- selecting points as per condition for each row from above mentioned query
SELECT d.*, CASE WHEN product_id='P002' THEN 5
                 WHEN product_id='P005' THEN 2
				 WHEN product_id='P017' THEN 5
			     ELSE 10
			     END AS premium_points
	   FROM (SELECT c.customer_id, c.product_id, SUM(product_price) amt
				   FROM (SELECT a.customer_id, a.order_date, a.product_id, b.product_price
							   FROM orders a INNER JOIN products b
										     ON a.product_id = b.product_id) c
                   GROUP BY customer_id, product_id) d;

-- getting total no. of points from each product
SELECT e.*, amt/premium_points total_points
      FROM (SELECT d.*, CASE WHEN product_id='P002' THEN 5
                             WHEN product_id='P005' THEN 2
				             WHEN product_id='P017' THEN 5
			                 ELSE 10
			                 END AS premium_points
	               FROM (SELECT c.customer_id, c.product_id, SUM(product_price) amt
				               FROM (SELECT a.customer_id, a.order_date, a.product_id, b.product_price
							               FROM orders a INNER JOIN products b
										                 ON a.product_id = b.product_id) c
                               GROUP BY customer_id, product_id) d) e;

-- getting total no. of points earned by each customer (customer_total_premium_points)
SELECT customer_id, SUM(total_points) ctpp
      FROM (SELECT e.*, amt/premium_points total_points
                  FROM (SELECT d.*, CASE WHEN product_id='P002' THEN 5
                                         WHEN product_id='P005' THEN 2
				                         WHEN product_id='P017' THEN 5
			                             ELSE 10
			                             END AS premium_points
	                           FROM (SELECT c.customer_id, c.product_id, SUM(product_price) amt
				                           FROM (SELECT a.customer_id, a.order_date, a.product_id, b.product_price
							                           FROM orders a INNER JOIN products b
										                             ON a.product_id = b.product_id) c
                                           GROUP BY customer_id, product_id) d) e) f
       GROUP BY customer_id;

-- total money earned via premium points
SELECT customer_id, SUM(total_points)*2.5 total_money_earned
      FROM (SELECT e.*, amt/premium_points total_points
                  FROM (SELECT d.*, CASE WHEN product_id='P002' THEN 5
                                         WHEN product_id='P005' THEN 2
				                         WHEN product_id='P017' THEN 5
			                             ELSE 10
			                             END AS premium_points
	                           FROM (SELECT c.customer_id, c.product_id, SUM(product_price) amt
				                           FROM (SELECT a.customer_id, a.order_date, a.product_id, b.product_price
							                           FROM orders a INNER JOIN products b
										                             ON a.product_id = b.product_id) c
                                           GROUP BY customer_id, product_id) d) e) f
       GROUP BY customer_id;

-- checking points earned product wise
SELECT product_id, SUM(total_points) total_points_earned
      FROM (SELECT e.*, amt/premium_points total_points
                  FROM (SELECT d.*, CASE WHEN product_id='P002' THEN 5
                                         WHEN product_id='P005' THEN 2
				                         WHEN product_id='P017' THEN 5
			                             ELSE 10
			                             END AS premium_points
	                           FROM (SELECT c.customer_id, c.product_id, SUM(product_price) amt
				                           FROM (SELECT a.customer_id, a.order_date, a.product_id, b.product_price
							                           FROM orders a INNER JOIN products b
										                             ON a.product_id = b.product_id) c
                                           GROUP BY customer_id, product_id) d) e) f
       GROUP BY  product_id;

-- ranking as per points, descending with highest being with most points
SELECT *, RANK() OVER(ORDER BY total_points_earned DESC) rnk
      FROM (SELECT product_id, SUM(total_points) total_points_earned
                  FROM (SELECT e.*, amt/premium_points total_points
                              FROM (SELECT d.*, CASE WHEN product_id='P002' THEN 5
                                                     WHEN product_id='P005' THEN 2
				                                     WHEN product_id='P017' THEN 5
			                                         ELSE 10
			                                         END AS premium_points
	                                       FROM (SELECT c.customer_id, c.product_id, SUM(product_price) amt
				                                       FROM (SELECT a.customer_id, a.order_date, a.product_id, b.product_price
							                                       FROM orders a INNER JOIN products b
										                                         ON a.product_id = b.product_id) c
                                                       GROUP BY customer_id, product_id) d) e) f
       GROUP BY  product_id)f;

-- now selecting the product with highest no. of points till now
SELECT * FROM (SELECT *, RANK() OVER(ORDER BY total_points_earned DESC) rnk
                     FROM (SELECT product_id, SUM(total_points) total_points_earned
                                 FROM (SELECT e.*, amt/premium_points total_points
                                             FROM (SELECT d.*, CASE WHEN product_id='P002' THEN 5
                                                                    WHEN product_id='P005' THEN 2
				                                                    WHEN product_id='P017' THEN 5
			                                                        ELSE 10
			                                                        END AS premium_points
	                                                      FROM (SELECT c.customer_id, c.product_id, SUM(product_price) amt
				                                                      FROM (SELECT a.customer_id, a.order_date, a.product_id, b.product_price
							                                                      FROM orders a INNER JOIN products b
										                                                        ON a.product_id = b.product_id) c
                                                          GROUP BY customer_id, product_id) d) e) f
       GROUP BY  product_id)f) g
	   WHERE rnk=1;


-- 10. In the first year when customer joins the premium subscription program (including the join date)
-- irrespective of what the customers had purchased, they earn 5 premium points for every 10$ spent. Who earned more? (**wrong)
-- And what was their points earning in their first year. (1 premium point = 2$)

--(**addition as per customer_id required)

-- items purchased by premium subscribers in a year
SELECT a.customer_id, a.order_date, a.product_id, b.subscrip_date
      FROM orders a INNER JOIN premium_subscription b
	                ON a.customer_id = b.customer_id
				  AND order_date >= subscrip_date
				  AND order_date <= DATEADD(YEAR, 1, subscrip_date);

-- prices of those products
SELECT c.*, d.product_price
      FROM (SELECT a.customer_id, a.order_date, a.product_id, b.subscrip_date
                  FROM orders a INNER JOIN premium_subscription b
	                            ON a.customer_id = b.customer_id
					           AND order_date >= subscrip_date
					           AND order_date <= DATEADD(YEAR, 1, subscrip_date)) c INNER JOIN products d
					                                                                 ON c.product_id = d.product_id;

-- total points earned by each of the customers in 1 year of joining premium subscription
-- (from given, if 1 premium points = 2$, then 0.5 premium points = 1$)
SELECT c.*, d.product_price*0.5 premium_points_earned
      FROM (SELECT a.customer_id, a.order_date, a.product_id, b.subscrip_date
                  FROM orders a INNER JOIN premium_subscription b
	                            ON a.customer_id = b.customer_id
					           AND order_date >= subscrip_date
					           AND order_date <= DATEADD(YEAR, 1, subscrip_date)) c INNER JOIN products d
					                                                                 ON c.product_id = d.product_id;




--trial
SELECT *, SUM(premium_points_earned) tpp_earned FROM
(SELECT c.*, d.product_price*0.5 premium_points_earned FROM
(SELECT a.customer_id, a.order_date, a.product_id, b.subscrip_date FROM orders a
INNER JOIN premium_subscription b ON a.customer_id = b.customer_id
AND order_date >= subscrip_date AND order_date <= DATEADD(YEAR, 1, subscrip_date)) c
INNER JOIN products d ON c.product_id = d.product_id) e GROUP BY customer_id;




-- 11. Rank all the orders of the customers.

SELECT *, RANK() OVER(PARTITION BY customer_id ORDER BY order_date) rnk
       FROM orders;


-- 12. Rank all the orders for each member, whenever they are a premium subscriber. And for every non-premium subscriber order, mark as NA.

--taking up from the 6th question
SELECT a.customer_id, a.order_date, a.product_id, b.subscrip_date
      FROM orders a INNER JOIN premium_subscription b
	                ON a.customer_id = b.customer_id
                   AND order_date >= subscrip_date;

--using left join as we need non-premium subscribers as well
SELECT a.customer_id, a.order_date, a.product_id, b.subscrip_date
      FROM orders a LEFT JOIN premium_subscription b
	                ON a.customer_id = b.customer_id
                   AND order_date >= subscrip_date;

-- Ranking (to segregate in future) based on subscription date
SELECT c.*, CASE WHEN subscrip_date is null THEN 0
				 ELSE RANK() OVER(PARTITION BY customer_id ORDER BY order_date DESC)
				 END AS rnk
	   FROM (SELECT a.customer_id, a.order_date, a.product_id, b.subscrip_date
	               FROM orders a LEFT JOIN premium_subscription b
				                 ON a.customer_id = b.customer_id
                                AND order_date >= subscrip_date)c;

-- Ranking and marking NA to 0 rank (changing data type with cast)
SELECT e.*, CASE WHEN rnk=0 THEN 'NA'
				 ELSE rnk
				 END AS rnkk
				 FROM(SELECT c.*,CAST ((CASE WHEN subscrip_date is null THEN 0
				                             ELSE RANK() OVER(PARTITION BY customer_id ORDER BY order_date DESC)
											 END) AS VARCHAR)
							AS rnk
							   FROM (SELECT a.customer_id, a.order_date, a.product_id, b.subscrip_date
							               FROM orders a LEFT JOIN premium_subscription b
										                 ON a.customer_id = b.customer_id
                                      AND order_date >= subscrip_date)c)e;


-- -------------------------
-- -------------------------
-- Data exploration and Cleaning (Faaso's)

-- 13. How many items were purchased in total?

SELECT COUNT(product_id) total_items_purchased FROM orders;


-- 14. How many unique customer orders were made?

SELECT COUNT(DISTINCT customer_id) unique_orders FROM orders;


-- 15. How many successful orders were delivered by each driver?   #data cleaning --- wrong probably

-- Fetching driver and no. of orders from orders list
SELECT driver_id, COUNT(DISTINCT order_id) order_delivered
      FROM orders GROUP BY driver_id;

-- Now, removing cancelled orders from these
SELECT driver_id, COUNT(DISTINCT order_id) order_delivered
      FROM orders WHERE cancellation NOT IN ('cancel', 'Yes')
      GROUP BY driver_id;


-- 16. How many distinct items ordered were delivered?   #data cleaning

-- making separate column for orders cancelled and not cancelled (with clean uniform entries)
SELECT *, CASE WHEN cancellation IN ('cancel', 'yes') THEN 'c'
               ELSE 'nc'
			   END AS cancel_details
	   FROM orders;

-- now fetching orders which were successfully delivered
SELECT * FROM (SELECT *, CASE WHEN cancellation IN ('cancel', 'yes') THEN 'c'
                              ELSE 'nc'
							  END AS cancel_details
	                  FROM orders) a
       WHERE cancel_details = 'nc';

-- crosschecking
SELECT * FROM orders
       WHERE order_id IN (SELECT order_id
	                            FROM (SELECT *, CASE WHEN cancellation IN ('cancel', 'yes') THEN 'c'
								                     ELSE 'nc'
													 END AS cancel_details
											 FROM orders) a
       WHERE cancel_details = 'nc');

-- now getting distinct items ordered which were delivered
SELECT product_id, COUNT(product_id) total_products_ordered
      FROM orders WHERE order_id IN (SELECT order_id FROM (SELECT *, CASE WHEN cancellation IN ('cancel', 'yes') THEN 'c'
	                                                                      ELSE 'nc'
																		  END AS cancel_details
																  FROM orders) a
                                            WHERE cancel_details = 'nc')
      GROUP BY product_id;


-- 17. How many distinct items were ordered by each customer? (paraphrase question again specifically maybe)

-- selecting all customer ids, which products they ordered and how many times they ordered (paraphrase)
SELECT customer_id, product_id, COUNT(product_id)
      FROM orders
      GROUP BY customer_id, Product_id;

-- getting above execution with product names
SELECT	a.*, b.product_name
      FROM (SELECT customer_id, product_id, COUNT(product_id) cnt
                  FROM orders
                  GROUP BY customer_id, product_id) a INNER JOIN products b
				                                      ON a.product_id = b.product_id;


-- 18. What was the maximum number of items delivered in a single order?

-- selecting orders which were not cancelled
SELECT order_id FROM (SELECT *, CASE WHEN cancellation IN ('cancel', 'yes') THEN 'c'
                                     ELSE 'nc'
									 END AS cancel_details
							 FROM orders) a
                             WHERE cancel_details = 'nc';

-- selecting with all entries, orders which were not cancelled
SELECT * FROM orders
       WHERE order_id IN (SELECT order_id
	                            FROM (SELECT *, CASE WHEN cancellation IN ('cancel', 'yes') THEN 'c'
								                     ELSE 'nc'
													 END AS cancel_details
											 FROM orders) a
                                 WHERE cancel_details = 'nc');

-- selecting all rows of items per order which were delivered in a single order
SELECT order_id, COUNT(product_id) products_in_order
      FROM (SELECT * FROM orders
	                 WHERE order_id IN (SELECT order_id
					                          FROM (SELECT *, CASE WHEN cancellation IN ('cancel', 'yes') THEN 'c'
											                       ELSE 'nc'
																   END AS cancel_details
														   FROM orders) a
                                              WHERE cancel_details = 'nc') ) b
       GROUP BY order_id;

-- selecting and sorting the order quantity as per rank
SELECT *, RANK() OVER(ORDER BY products_in_order DESC) rnk
       FROM (SELECT order_id, COUNT(product_id) products_in_order
	               FROM (SELECT * FROM orders
				               WHERE order_id IN (SELECT order_id
							                            FROM (SELECT *, CASE WHEN cancellation IN ('cancel', 'yes') THEN 'c'
														                     ELSE 'nc'
																			 END AS cancel_details
																	 FROM orders) a
                                                        WHERE cancel_details = 'nc') ) b
       GROUP BY order_id) c;

-- now selecting order with highest order quantity
SELECT * FROM (SELECT *, RANK() OVER(ORDER BY products_in_order DESC) rnk
                     FROM (SELECT order_id, COUNT(product_id) products_in_order
					             FROM (SELECT * FROM orders
								                WHERE order_id IN (SELECT order_id
												                         FROM (SELECT *, CASE WHEN cancellation IN ('cancel', 'yes') THEN 'c'
																		                      ELSE 'nc'
																							  END AS cancel_details
																					  FROM orders) a
                                                                          WHERE cancel_details = 'nc') ) b
                                  GROUP BY order_id) c ) d
           WHERE rnk = 1;



-- ---
-- --- making an orders table with clean and sorted values (for cancellation in orders)

WITH temp_orders (order_date, order_id, customer_id, no_of_items, product_id, order_total, driver_id, time_taken, new_cancellation)
                AS (SELECT order_date, order_id, customer_id, no_of_items, product_id, order_total, driver_id, time_taken,
                           CASE WHEN cancellation IN ('cancel', 'yes') THEN 0
						   ELSE 1
						   END AS new_cancellation
                          FROM orders)

     SELECT * FROM temp_orders;

-- ---

-- 19. What was the total number of items ordered for each hour of the day? (only concerned with hour part, not date part)

-- selecting specifically hour value from the date in the orders
SELECT *, DATEPART(HOUR, order_date) hr
      FROM orders;

-- also including an hour after column (to later help create hour bucket/bin)
SELECT *, DATEPART(HOUR, order_date) hr, DATEPART(HOUR, order_date)+1 hr1
      FROM orders;

-- changing value type to VARCHAR to later include (-) in the bin
SELECT *, CAST(DATEPART(HOUR, order_date) AS VARCHAR) hr, CAST(DATEPART(HOUR, order_date)+1 AS VARCHAR) hr1
      FROM orders;

-- Consolidate (concat) in Hours bin
SELECT *, CONCAT(CAST(DATEPART(HOUR, order_date) AS VARCHAR),
                                                         '-',
                 CAST(DATEPART(HOUR, order_date)+1 AS VARCHAR)) AS hours_bin
	   FROM orders;

-- GROUPING by hours bin with no. of items ordered in that hour
SELECT hours_bin, COUNT(hours_bin) no_of_orders
      FROM (SELECT *, CONCAT(CAST(DATEPART(HOUR, order_date) AS VARCHAR),
	                                                                 '-',
				             CAST(DATEPART(HOUR, order_date)+1 AS VARCHAR)) AS hours_bin
				   FROM orders) a
      GROUP BY hours_bin;


-- 20. What was the number of orders for each day of the week?

-- Checking for all orders which day of the week, they were ordered
SELECT *, DATENAME(DW, order_date) day_of_week FROM orders;

-- Selecting day of week with distinct orders together for that day
SELECT day_of_week, COUNT(order_id) total_orders_for_the_day
      FROM (SELECT *, DATENAME(DW, order_date) day_of_week
	              FROM orders) a
      GROUP BY day_of_week;


-- Reviews and experiences

-- 21. What was the difference between the longest and shortest delviery times for all orders? #data cleaning along with exploration

-- checking just the duration of all orders
SELECT time_taken FROM orders WHERE time_taken IS NOT NULL;

-- selecting character index of 'm' (i.e. from where it starts)
SELECT time_taken, CHARINDEX('m', time_taken) FROM orders WHERE time_taken IS NOT NULL;

-- Grabbing all characters before 'm'
SELECT time_taken, CASE WHEN time_taken LIKE '%min%' THEN LEFT(time_taken,CHARINDEX('m', time_taken)-1)
                        ELSE time_taken
                        END AS duration_in_mins
       FROM orders
	   WHERE time_taken IS NOT NULL;

-- changing the data type to Integer
SELECT CAST(CASE WHEN time_taken LIKE '%min%' THEN LEFT(time_taken,CHARINDEX('m', time_taken)-1)
                 ELSE time_taken
                 END AS INTEGER) AS duration_in_mins
       FROM orders
	   WHERE time_taken IS NOT NULL;

-- selecting max and min value in the duration
SELECT MAX(duration_in_mins) max_time_taken, MIN(duration_in_mins) min_time_taken
      FROM (SELECT CAST(CASE WHEN time_taken LIKE '%min%' THEN LEFT(time_taken,CHARINDEX('m', time_taken)-1)
                             ELSE time_taken
                             END AS INTEGER) AS duration_in_mins
                   FROM orders
				   WHERE time_taken IS NOT NULL)a;

-- Selecting the difference as asked in the question
SELECT MAX(duration_in_mins) - MIN(duration_in_mins) max_min_time_diff
      FROM (SELECT CAST(CASE WHEN time_taken LIKE '%min%' THEN LEFT(time_taken,CHARINDEX('m', time_taken)-1)
                             ELSE time_taken
                             END AS INTEGER) AS duration_in_mins
                   FROM orders
				   WHERE time_taken IS NOT NULL)a;


-- 