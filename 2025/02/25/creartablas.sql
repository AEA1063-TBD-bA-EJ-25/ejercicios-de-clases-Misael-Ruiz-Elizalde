

CREATE DATABASE escuelita;

go;

use escuelita;

create TABLE Persona (
    CURP CHAR(18) NOT NULL PRIMARY KEY,
    Nombre nvarchar(50) NOT NULL,
    Direccion NVARCHAR(100)NULL,
    Nacimiento DATE NOT NULL,
)

CREATE TABLE Carrera (
    Clave CHAR(13)NOT NULL PRIMARY KEY,
    Nombre VARCHAR(60) NOT NULL,

)

CREATE TABLE Alumno (
    CURP CHAR(18) NOT NULL PRIMARY KEY FOREIGN Key REFERENCES Persona(CURP), 
    NumeroDeControl CHAR(8) NOT NULL UNIQUE,
    ClaveCarrera CHAR(13) FOREIGN Key REFERENCES Carrera (Clave)

)

select * from persona;

CREATE TABLE Docente (
    CURP        CHAR(18) NOT NULL PRIMARY KEY,
    RFC         CHAR(13) NOT NULL UNIQUE,
    Profesion   NVARCHAR(30) NULL,
    FOREIGN KEY (CURP) REFERENCES Persona(CURP)
)

CREATE TABLE Administratvo (
    CURP CHAR(18) NOT NULL 
    PRIMARY KEY FOREIGN Key REFERENCES Persona(CURP), 
)

INSERT INTO Carrera (Clave, Nombre)
    VALUES ('ITIC-2010-225', 'Ingeniería en Tecnologías de la información y comunicación')

select * from Carrera

INSERT INTO Carrera (Clave, Nombre)
    VALUES  ('ISIC-2010-224', 'Ingeniería en Sistemas Computacionales'),
            ('IMCT-2010-229', 'Ingeniería Mecatrónica')

insert into Persona (CURP, Nombre, Direccion, Nacimiento)
    VALUES ('JS20FR', 'Johane Sacrebleu', 'Por allá', '2003-04-05')

INSERT into Alumno(CURP, NumeroDeControl, ClaveCarrera)
    VALUES ('JS20FR', '20170005', 'ITIC-2010-225')

    select NumeroDeControl, Nombre, ClaveCarrera  from Persona
        join Alumno on Persona.CURP = Alumno.CURP
    select * from Alumno

    create TABLE MalaPersona (
    idPersona int not null IDENTITY Primary Key,
    CURP CHAR(18) NOT NULL,
    Nombre nvarchar(50) NOT NULL,
    Direccion NVARCHAR(100)NULL,
    Nacimiento DATE NOT NULL,
)

insert into MalaPersona (CURP, Nombre, Direccion, Nacimiento)
    VALUES ('JS20FR', 'Johane Sacrebleu', 'Por allá', '2003-04-05')

    select * from MalaPersona

    drop table MalaPersona

create table empleado(
    idEmpleado int not null PRIMARY KEY,
    nombre NVARCHAR(50)NOT NULL,
    sueldo money DEFAULT 1500
)

insert into empleado (idEmpleado, nombre, sueldo)
    values (1, 'Felipe de jesus', 2000)

select * from empleado;

insert into empleado(idEmpleado, nombre)
    Values (2, 'Chuerk')

SELECT * from empleado;

create table personita(
    idEmpledo int not null PRIMARY KEY,
    nombre NVARCHAR(50)NOT NULL,
    sueldo money DEFAULT 1500,
    telefono varchar(20) check ( telefono like '667[0-9][0-9][0-9]')
)

insert into personita values (1, 'Juana', null, '667123')

alter table empleado
    add sexo char(1) null check (sexo in ('M','H'))

insert into empleado  (idEmpleado, nombre, sexo)values (3, 'Alexis Jara Rodriguez','R')
insert into empleado  (idEmpleado, nombre, sexo)values (4, 'Matilde Sandoval','F')


    select * from empleado;
    select * from personita;

    alter table empleado
        drop CONSTRAINT CK__empleado__sexo__3F466844

    insert into empleado (idEmpleado, nombre, sexo) values (5, 'Refugio Saldivar', 'F')

    insert into empleado (idEmpleado, nombre, sexo) values (6, 'Delia Barantes', 'R')

    alter TABLE empleado
        add nacimiento date not null 