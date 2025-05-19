use empresagrande

select * from ventas.venta;

insert into ventas.venta (folio, fecha, clienteid)
 values (1, getdate(), 1)

 /* que es un procedimiento almacenado?
 es un grupo de instrucciones del lenguaje transact-sql.
 acepta parametros de entrada
 regresa valores por medio de la instruccion return
 puede modificar las tablas de la bd
 regresa multiples valores a los usuarios por medio de los parametros de salida
*/

CREATE procedure dbo.mathutor 
    @m1 SMALLINT,
    @m2 SMALLINT,
    @result SMALLINT output
AS 
    SET @result = @m1 * @m2
go
Declare @answer SMALLINT
execute mathutor 5,6, @answer output
Select 'The result is: ', @answer

DECLARE @f SMALLINT
set @f=8
execute mathutor 5,6, @answer output
Select 'The result is: ', @answer

UPDATE authors set au_id = '172321176'
WHERE au_id = '172321176'
if @@Error = 0,