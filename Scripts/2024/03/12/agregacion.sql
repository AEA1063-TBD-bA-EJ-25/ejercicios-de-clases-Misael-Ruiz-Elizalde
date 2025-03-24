use Northwind

select * from products;

select count(*) from products;

select max(unitprice) from products;
select min(unitprice) from products;
select avg(unitprice) from products;
select sum(unitprice) from products;

select categoryid, avg(unitprice) from products
    GROUP by CategoryID
    order by avg(UnitPrice)

select categoryid, avg(unitprice) as PrecioPromedio from Products
    GROUP by CategoryID
    order by PrecioPromedio DESC

select categoryid, avg(ProductName) as PrecioPromedio from Products
    GROUP by CategoryID
    order by PrecioPromedio DESC

select categoryID, count(*) as cantidad from products
    GROUP BY CategoryID
    order by cantidad
    
select unitprice * 1.10  as nuevoprecio from Products


select count(*) from products
    where Discontinued = 1

select * from [Order Details];

select count(*) from [Order Details]
    where OrderID = 10250

select sum(unitprice * Quantity) as total from [Order Details]
    where OrderID = 10250

select unitprice, Quantity, discount, UnitPrice * Quantity, Discount * UnitPrice * Quantity, UnitPrice * Quantity - (Discount * UnitPrice * Quantity) from [Order Details]
    where OrderID = 10250

    select sum(UnitPrice * Quantity - (Discount * UnitPrice * Quantity)) as total from [Order Details]
    where OrderID = 10250

