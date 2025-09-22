-- QUESTION 1
-- Retrieve employee details (first name, last name, email) along with their corresponding officeCode by joining the employees table with the offices table using officeCode as the common key.
SELECT 
    e.firstName, 
    e.lastName, 
    e.email, 
    o.officeCode
FROM 
    employees e
INNER JOIN 
    offices o 
    ON e.officeCode = o.officeCode;

-- QUESTION 2
-- Retrieve product details (productName, productVendor, and productLine) by joining the products table with the productlines table.
-- A LEFT JOIN is used to include all products, even if some do not have a matching entry in the productlines table.
SELECT 
    p.productName, 
    p.productVendor, 
    pl.productLine
FROM 
    products p
LEFT JOIN 
    productlines pl 
    ON p.productLine = pl.productLine;

-- QUESTION 3
-- Retrieve the first 10 orders with their order date, shipped date, status, and associated customer number. 
-- A RIGHT JOIN ensures that all orders are included, even if some customers are missing from the customers table.
SELECT 
    o.orderDate, 
    o.shippedDate, 
    o.status, 
    o.customerNumber
FROM 
    customers c
RIGHT JOIN 
    orders o 
    ON c.customerNumber = o.customerNumber
LIMIT 10;

