
CREATE LOGIN paco
WITH PASSWORD = 'pAcp1.23'

CREATE LOGIN rosa
WITH PASSWORD = 'JAIME321.o'

create database empresagrande;

use empresagrande

create user paco
for login paco
GO

create user rosa 
for login ropsa
GO 

create role rescursoshumanos
GO

create role vendedor
GO 

create Schema ventas
GO

create schema Produccion
GO

create schema rescursoshumanos

create table ventas.venta{
    folio int not null primary KEY
    fecha date,
    clienteid int not null
}

create table ventas.detalle_venta {
    folio int not null,
    productid int not null,
    cantidad float,
    precio money
    primary key (folio, productid)

}

create table recursoshumanos.empleado( 
    empleadoid int not null primary key,
    nombre nvarchar(50) not null,
    apellidos nvarchar(50) not null,
    departamentoid int
)

create table recursoshumanos.departamentoid(
    departamentoid int not null primary key,
    nombre nvarchar(50)
    descripcion nvarchar (255)
)

grant select, insert, on ventas.venta to vendedor;
grant select, insert, on ventas.detalles_venta to vendedor;

grant select, insert, update, delete on recursoshumanos to heahdhr;

alter role vendedor add member paco
