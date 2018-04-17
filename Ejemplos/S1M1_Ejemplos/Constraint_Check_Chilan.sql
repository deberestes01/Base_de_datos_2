
CREATE TABLE EMPLEADOS (
    ID int NOT NULL,
    Nombre varchar(255) NOT NULL,
    Apellidos varchar(255),
    Edad int CHECK (Edad >= 18 and  Edad <=25),
    Ciudad varchar(255) CHECK (Ciudad = 'Quito')
);

UPDATE EMPLEADOS 
SET Ciudad = 'Quito'

alter table empleados
add constraint chk_ciudad 
check (Ciudad = 'Quito')

ALTER TABLE EMPLEADOS
DROP CONSTRAINT chk_ciudad


CREATE TABLE EMPLEADOS (
    ID int NOT NULL,
    Nombre varchar(255) NOT NULL,
    Apellido varchar(255),
    Edad int,
    Ciudad varchar(255),

    CONSTRAINT CHK_EMPLEADOS CHECK (Edad >= 18 AND Ciudad='Guayaquil')
);

--Crea un constraint a la tabla con los campos asignados, en nustro ejemplo edad >= 18 and ciudad='Guayaquil'
ALTER TABLE EMPLEADOS
ADD CONSTRAINT CHK_PersonAge CHECK (edad >= 18 AND ciudad = 'Guayaquil'); --true or False

--insert into Persons values(1,'STEVEN', 'SALAZAR',21,'M','GUAYAQUIL') --validadcion check por true

--Altera la tabla agregando una columna nueva aplicando conbinacion de constraint (Not null, default, check)
ALTER TABLE EMPLEADOS
ADD CONSTRAINT DfCiudad default ('QUITO') FOR CIUDAD,
CONSTRAINT CHK_CIUDAD 
CHECK (Ciudad = 'QUITO')

--drop table EMPLEADOS
--select * from EMPLEADOS