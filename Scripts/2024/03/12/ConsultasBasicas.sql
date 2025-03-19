use northwind

select * from Employees;
select * from Products;
select * from Suppliers;
select * from orders;
select * from[Order Details]


select employeeid, lastname, FirstName
    from Employees 

select productname, UnitPrice
    from Products

select productname, UnitPrice
    from Products
    where ProductID = 4

select productname, unitprice, CategoryID
    from Products
    where UnitPrice = 30

select productname, unitprice, CategoryID
    from Products
    where UnitPrice >= 30

select productname, unitprice, CategoryID
    from Products
    where UnitPrice Between 30 AND 40

    
select productname, unitprice, CategoryID
    from Products
    where productid in ( 8 )

select productid, productname, unitprice, CategoryID
    from Products
    where productname like '%c%'


select productid, productname, unitprice, CategoryID
    from Products
    where productname like '%s'


select productid, productname, unitprice, CategoryID
    from Products
    where productname like '____a%'


select productid, productname, unitprice, CategoryID
    from Products
    where productname like '[a-c]%'

 select productid, productname, unitprice, CategoryID
    from Products
    where productname like '[a,c]%'

select * from Employees
    where Region is NULL

select productid, productname, unitprice, CategoryID
    from Products
    where productname like 'a%'
        -- Get a list of tables and views in the current database
        SELECT table_catalog [database], table_schema [schema], table_name name, table_type type
        FROM INFORMATION_SCHEMA.TABLES
        and 
            unitprice = 30

select * from products, Categories
ELECT DATEDIFF(year, BirthDate, getdate()) FROM Employees

-- 19-03-25
SELECT * FROM Products, Categories
SELECT * FROM Products
    JOIN Categories on Products.categoryid = Categories.categoryid

SELECT productid, productname, unitprice, categoryname from Products
    join Categories on Products.categoryid = Categories.categoryid

SELECT orderId, CompanyName FROM Orders
    JOIN Customers ON Customers.CustomerID = orders.CustomerID

SELECT orderId, lastname FROM Orders
    JOIN Employees ON Employees.EmployeeID = orders.EmployeeID

SELECT orderID from orders
    join Customers on Customers.customerID = orders.customerID

SELECT orderId, lastname from orders
    JOIN Employees ON Employees.EmployeeID = orders.EmployeeID
    JOIN Customers ON Customers.customerID = orders.customerID

SELECT orderId, lastname, CompanyName, OrderDate, RequiredDate, Shippeddate, DATEDIFF(DAY, orderdate, ShippedDate) from orders
    JOIN Employees ON Employees.EmployeeID = orders.EmployeeID
    JOIN Customers ON Customers.customerID = orders.customerID
    WHERE OrderID = 10252

SELECT orderId, lastname, CompanyName, OrderDate, RequiredDate, Shippeddate, DATEDIFF(DAY, orderdate, ShippedDate) from orders
    JOIN Employees ON Employees.EmployeeID = orders.EmployeeID
    JOIN Customers ON Customers.customerID = orders.customerID

SELECT orderId, lastname, CompanyName, OrderDate, RequiredDate, Shippeddate, DATEDIFF(DAY, orderdate, ShippedDate) from orders
    JOIN Employees ON Employees.EmployeeID = orders.EmployeeID
    JOIN Customers ON Customers.customerID = orders.customerID
    WHERE DATEDIFF(DAY, orderdate, ShippedDate) > 0