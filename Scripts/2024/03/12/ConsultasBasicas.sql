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