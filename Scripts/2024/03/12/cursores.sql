use northwind
GO


Declare empleados cursor scroll for 
select * from employees 

open empleados

fetch NEXT from empleados
fetch prior from empleados
fetch absolute 5 from empleados
fetch relative -2 from empleados
fetch relative 2 from empleados
select @@fetch_status

close empleados
deallocate empleados
GO

create proc reportedOrdenes
as 
Declare empleados cursor scroll for 
select * from employees 
declare @eid INT

open empleados

declare @ordenes TABLE(id int, cantidad int) 

/*
fetch next from empleados into @eid
while @@fetch_status = 0
begin
    print @eid
    fetch next from empleados into @eid
end
*/
open empleados
fetch next from empleados into @eid
while @@fetch_status = 0
begin
    select @cant = count (*) from orders where EmployeeID = @eid
    insert into ordenes (@eid, @cant)
    fetch next from empleados into @eid
end

close empleados
deallocate empleados
GO
--drop proc reportedOrdenes
exec reportedOrdenes
GO

select count (*) from orders where EmployeeID = 1

--reporte historial de alguna persona, en que clubes estuvo y que roles cumplio y si obtuvo especialidad 
--reporte de los avances que ha tenido cada clube