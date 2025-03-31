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

 select sum(UnitPrice * Quantity - (Discount * UnitPrice * Quantity)) as total from [Order Details]
 
  select sum(UnitPrice * Quantity - (Discount * UnitPrice * Quantity)) as total from [Order Details]
    where ProductID = 1
 
 Select * from [Order Details]
    Select * from Categories

select count(*) from orders 


Select sum([Order Details].UnitPrice * Quantity - (Discount * [Order Details].UnitPrice * Quantity)) as total from [Order Details]
    Join Products on products.ProductID = [Order Details].ProductID
    Where CategoryID = 1

Select sum(od.UnitPrice * Quantity - (Discount * od.UnitPrice * Quantity)) as total from [Order Details] od
    Join Products p on p.ProductID = od.ProductID
    Where CategoryID = 1

Select sum(od.UnitPrice * Quantity - (Discount * od.UnitPrice * Quantity)) as total from [Order Details] od
    Join Products p on p.ProductID = od.ProductID
    Join Categories c on c.CategoryID = p.CategoryID
    Where CategoryName like '%Beverages%'

Select sum(od.UnitPrice * Quantity - (Discount * od.UnitPrice * Quantity)) as total from [Order Details] od
    Join Products p on p.ProductID = od.ProductID
    Join Categories c on c.CategoryID = p.CategoryID
    Join Orders o on o.OrderID = o.OrderID
    Where CategoryName like '%Beverages%' and year (OrderDate) = 1997 
    

Select * from [Order Details] od 
-- sum(od.UnitPrice * Quantity - (Discount * od.UnitPrice * Quantity)) as total from [Order Details] od
    Join Products p on p.ProductID = od.ProductID
    Join Categories c on c.CategoryID = p.CategoryID
    Join Orders o on o.OrderID = o.OrderID
    Where CategoryName like '%Beverages%' and year (OrderDate) = 1997 

Select sum(od.UnitPrice * Quantity - (Discount * od.UnitPrice * Quantity)) as total from [Order Details] od
    Join Products p on p.ProductID = od.ProductID
    Join Categories c on c.CategoryID = p.CategoryID
    Join Orders o on o.OrderID = o.OrderID
    Where 1=1
     --and CategoryName like '%Beverages%' 
     and year (OrderDate) = 1997 
    

select * from orders


--TAREA  
--CONSULTA NUEVA 
--SABER CUANTO VENDI EN EL 97

--IMPORTE DE VENTA DEL AÑO 97

Select c.CategoryName, sum(od.UnitPrice * Quantity - (Discount * od.UnitPrice * Quantity)) as importe from [Order Details] od
    Join orders o on o.OrderID = od.OrderID
    Join Products p on p.ProductID = p.ProductID
    join Categories c on p.CategoryID = c.CategoryID 
    Where year (OrderDate) = 1997 
    GROUP by c.CategoryName
    order by c.CategoryName asc

-- por meses
Select datename(month, o.OrderDate), c.CategoryName, sum(od.UnitPrice * Quantity - (Discount * od.UnitPrice * Quantity)) as importe from [Order Details] od
    Join orders o on o.OrderID = od.OrderID
    Join Products p on p.ProductID = p.ProductID
    join Categories c on p.CategoryID = c.CategoryID 
    Where year (OrderDate) = 1997 
    GROUP by datepart(month,o.OrderDate), datename(month, o.OrderDate), c.CategoryName
    order by datepart(month, o.OrderDate), c.CategoryName asc

--por categoria y despues por mes

Select  c.CategoryName, datename(month, o.OrderDate), sum(od.UnitPrice * Quantity - (Discount * od.UnitPrice * Quantity)) as importe from [Order Details] od
    Join orders o on o.OrderID = od.OrderID
    Join Products p on p.ProductID = p.ProductID
    join Categories c on p.CategoryID = c.CategoryID 
    Where year (o.OrderDate) = 1997 
    GROUP by c.CategoryName, datepart(month,o.OrderDate), datename(month, o.OrderDate) 
    order by c.CategoryName, datepart(month, o.OrderDate) asc


--cuanto nos compró el cliente por cada una de las categorias con nombre de la compañia y con id del cliente
Select s.CompanyName, u.CustomerID, c.CategoryName, datename(month, o.OrderDate), sum(od.UnitPrice * Quantity - (Discount * od.UnitPrice * Quantity)) as importe from [Order Details] od
    Join orders o on o.OrderID = od.OrderID
    Join Products p on p.ProductID = p.ProductID
    join Categories c on p.CategoryID = c.CategoryID 
    join Customers u on u.CustomerID = u.CustomerID
    join Customers s on s.CompanyName = s.CompanyName
    Where year (o.OrderDate) = 1997 
    GROUP by s.CompanyName, u.CustomerID, c.CategoryName, datepart(month,o.OrderDate), datename(month, o.OrderDate) 
    order by c.CategoryName, datepart(month, o.OrderDate) asc

--Ordenes menores a 500 dólares
Select o.orders, sum(od.UnitPrice * Quantity - (Discount * od.UnitPrice * Quantity)) as importe from [Order Details] od
    Join orders o on o.OrderID = od.OrderID
    Join Products p on p.ProductID = p.ProductID
    join Categories c on p.CategoryID = c.CategoryID 
    Where year (OrderDate) = 1997 
    GROUP by c.CategoryName
    order by c.CategoryName asc


Select orderid,
        sum(od.UnitPrice * Quantity - (Discount * od.UnitPrice * Quantity)) as importe from [Order Details] od
        group BY orderid
          having  sum(od.UnitPrice * Quantity - (Discount * od.UnitPrice * Quantity)) < 500
        order by importe
      

-- CLASE DEL 31 DE MARZO
-- Producto on el precio mayor en dos consultas
Select max(Unitprice) from Products
select productname from Products
    where UnitPrice = 263.50

    --mejoria}
    declare @maximo money
select @maximo = max(Unitprice) from Products
select productname from Products
    where UnitPrice = @maximo

    --mejoria con subconsulta
select productname, UnitPrice from Products
    where UnitPrice = (select max(UnitPrice) from Products)

    select companyname
    from Customers
    where customerid in (select customerid from orders where orderdate > '1/1/95')

--con el join
    select companyname
    from Customers
    join orders on orders.customerID = customers.customerID
     where orderdate > '1/1/1995'


--usando northeind 
select companyname, contactname
from customers c 
    where exists 
        (Select * from orders o where c.CustomerID = o.CustomerID 
        and OrderDate > '1/1/199')