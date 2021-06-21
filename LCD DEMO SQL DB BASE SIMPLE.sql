DROP DATABASE demojoin

CREATE DATABASE demojoin;
USE demojoin;

CREATE TABLE empleado (
	idEmpleado int primary key,
    nombreEmpleado varchar(20),
    departamentoEmpleado int 
    );

create table departamento (
	idDepartamento int primary key,
    nombreDepartamento varchar(20)
    );
    
INSERT INTO empleado VALUES (1,"Jose",10);
Insert into empleado values (2,"Mirna",20);
Insert into empleado values (3,"Myriam",30);
Insert into empleado values (4,"Pedro",30);
Insert into empleado values (5,"Antonio",40);
Insert into empleado values (6,"Adriana",null);

Insert into departamento values (10,"Ventas");
Insert into departamento values (20,"Mercadotecnia");
Insert into departamento values (30,"Almacén");
Insert into departamento values (40,"Operaciones");
Insert into departamento values (50,"Administracion");

/* Añadir una columna nueva a una tabla */
ALTER TABLE departamento
ADD edificioDepartamento int;

UPDATE departamento
SET edificioDepartamento = 123;

SELECT * FROM departamento

/* Estableciendo una relación en la tabla */
ALTER TABLE empleado ADD CONSTRAINT pertenecea FOREIGN KEY (departamentoEmpleado) 
REFERENCES departamento (idDepartamento);

/* Actualizar usando una condición */
ALTER TABLE empleado
ADD paisEmpleado varchar(20);

UPDATE empleado
SET paisEmpleado = "México"
WHERE departamentoEmpleado = 30;

SELECT * FROM empleado



/* SAFETY SWITCH */
SET SQL_SAFE_UPDATES = 0;