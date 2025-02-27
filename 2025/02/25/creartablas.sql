

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