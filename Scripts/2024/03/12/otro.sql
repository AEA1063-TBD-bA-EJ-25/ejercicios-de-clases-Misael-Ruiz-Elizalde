use empresagrande

select * from ventas.venta;

insert into ventas.venta (folio, fecha, clienteid)
 values (1, getdate(), 1)