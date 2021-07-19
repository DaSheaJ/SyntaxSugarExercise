-- find all products --
SELECT * FROM PRODUCTS;
 
-- find all products that cost $1400
SELECT * FROM PRODUCTS WHERE PRICE = 1400;
 
-- find all products that cost $11.99 or $13.99
SELECT * FROM PRODUCTS WHERE PRICE = 11.99 OR 13.99;
 
-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM PRODUCTS WHERE NOT PRICE = 11.99;
 
-- find  all products and sort them by price from greatest to least
SELECT * FROM PRODUCTS ORDER BY PRICE DESC;
 
-- find all employees who don't have a middle initial
SELECT * FROM EMPLOYEES WHERE MIDDLESINITIAL IS NULL; 
 
-- find distinct product prices
SELECT DISTINCT PRICE FROM PRODUCTS;
 
-- find all employees whose first name starts with the letter ‘j’
SELECT * EMPLOYEES WHERE FIRSTNAME LIKE 'J%'; 
 
-- find all Macbooks --
SELECT * FROM PRODUCTS WHERE NAME LIKE '%MACBOOK%';
 
-- find all products that are on sale
SELECT * FROM PRODUCTS WHERE ONSALE IS TRUE;
 
-- find the average price of all products --
SELECT AVG(PRICE) AS AVERAGE_PRICE FROM PRODUCTS;
 
-- find all Geek Squad employees who don't have a middle initial --
SELECT * FROM EMPLOYEES WHERE TITLE = 'GEEK SQUAD' AND MIDDLEINITIAL IS NULL;
-- find all products from the products table whose stock level is in the range of 500 to 1200. Order by Price from least to greatest. **Try this with the between keyword** 
ORDER BY PRICE DESC;

-- joins: select all the computers from the products table: using the products table and the categories table, return the product name and the category name
INNER JOIN CATEGORIES AS C ON P.CATEGORYID = C.CATEGORYID; 
-- joins: find all product names, product prices, and products ratings that have a rating of 5
SELECT * FROM PRODUCTS;
SELECT * FROM REVIEWS;
SELECT P.NAME, P.PRICE, R.RATING FROM PRODUCTS AS P
INNER JOIN REVIEWS AS R ON P.PRODUCTID = R.PRODUCTID
WHERE R.RATING = 5;
 
-- joins: find the employee with the most total quantity sold.  use the sum() function and group by
SELECT * FROM EMPLOYEES;
SELECT * FROM SALES;
SELECT SUM(S.QUALITY) AS TOTAL_SOLD, E.EMPLOYEEID, CONCAT(E.FIRSTNAME, ' ', E.LASTNAME) AS FULLNAME FROM SALES AS S
INNER JOIN EMPLOYEES AS E ON S.EMPLOYEEID = E.EMPLOYEEID
GROUP BY E.employeeID

-- joins: find the name of the department, and the name of the category for Appliances and Games
SELECT * FROM CATEGORIES;
SELECT * FROM DEPARTMENTS;

SELECT C.NAME, D.NAME FROM DEPARTMENTS AS D
INNER JOIN CATEGORIES AS C ON D.DEPARTMENSTID = C.DEPARTMENTID
WHERE C.CATEGORID = 2 OR C.CATEGORYID = 8;

-- joins: find the product name, total # sold, and total price sold, for Eagles: Hotel California --You may need to use SUM()
SELECT * FROM SALES;

SELECT P.NAME, SUM(S.QUANTITY) AS TOTAL_NUMBER_SOLD, SUM(S.QUANTITY * S.PRICEPERUNIT) AS TOTAL_PRICE_SOLD FROM PRODUCTS as P
INNER JOIN SALES AS S ON P.PRODUCTID = S.PRODUCTID
WHERE P.NAME LIKE '%Eagles: Hotel California%'

-- joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!)
SELECT * FROM PRODUCTS;
SELECT * FROM REVIEWS;

SELECT P.NAME, R.REVIEWER, R.RATING, R. COMMENT FROM PRODUCTS AS P 
INNER JOIN REVIEWS AS R ON P.PRODUCTS = R.RODUCTID
WHERE P.NAME LIKE '%VISIO%';
ORDER BY RATING
LIMIT 1;

-------------------------------------------- Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */
SELECT * FROM SALES;
SELECT CONCAT(E.FIRSTNAME, '', E.LASTNAME) AS FULLNAME, P.NAME, SUM(S.QUANTITY) FROM EMPLOYEES AS E
INNER JOIN SALES AS S ON E.EMPLOYEEID = S.EMPLOYEEID
INNER JOIN PRODUCTS AS P ON S.PRODUCTSID = P.PRODUCTID
GROUP BY E.EMPLOYEEID, P.NAME;
ORDER BY FULLNAME;


