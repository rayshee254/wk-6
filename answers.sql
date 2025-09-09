
-- 1.INNER JOIN
  
USE salesdb;
SELECT e.firstName, e.lastName, e.email, o.officeCode
FROM employees e INNER JOIN offices o
ON e.officeCode = o.officeCode;

-- 2.LEFT JOIN

SELECT p.productName, p.productVendor, pl.productLine 
FROM products p     -- Left table
LEFT JOIN productlines pl
ON p.productLine = pl.productLine

-- 3.RIGHT JOIN

SELECT o.orderDate, o.shippedDate, o.status, c.customerNumber 
FROM customers c     -- Right table
RIGHT JOIN orders o
ON c.customerNumber= o.customerNumber
LIMIT 10;
