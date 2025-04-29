


--OPERADORES DE CONJUNTOS
select * from employees
--directorio telefonico de toda la gente que conoce la empresa proovedores/clientes/empleados
select LastName+ ','+ FirstName as ContactName,
    HomePhone,
    'Northwind' as CompanyName,
    'E' as Tipo
    from Employees 
union
select ContactName, Phone, CompanyName,
'C' as Tipo
 from Customers
union
select ContactName, Phone, CompanyName,
's' as Tipo
 from Suppliers

select * from customers
select * from Suppliers
select * from 

--compras en junio del 97 y agosto 97
select customerid from Orders
    where year (OrderDate) = 1997 and MONTH(OrderDate) = 7
INTERSECT
select customerid from Orders
    where year (OrderDate) = 1997 and MONTH(OrderDate) = 8

 --quienes me compraron en julio pero no en agosto
select customerid from Orders
    where year (OrderDate) = 1997 and MONTH(OrderDate) = 7
EXCEPT
select customerid from Orders
    where year (OrderDate) = 1997 and MONTH(OrderDate) = 8
---compraron en agosto pero no en junio
select customerid from Orders
    where year (OrderDate) = 1997 and MONTH(OrderDate) = 8
EXCEPT
select customerid from Orders
    where year (OrderDate) = 1997 and MONTH(OrderDate) = 7
