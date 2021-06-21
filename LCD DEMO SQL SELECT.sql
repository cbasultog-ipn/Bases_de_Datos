/*
1. Primero establece la estructura de la consulta:
       SELECT
       FROM
2. Realiza el análisis de lo que vas a consultar.
3. Establece la fuente de datos:
		SELECT
        FROM
			tabla
4. Establece los campos que deseas de la consulta:
		SELECT campo1, campo2, campo_n,
        FROM tabla
*/

/* Consultar todo el contenido de una tabla */
SELECT * FROM empleado

/* Consultar solo los campos que deseo en una tabla */
SELECT idDepartamento, nombreDepartamento 
FROM departamento

/* Selecionar registros que cumplan una condición */
SELECT 
	nombreEmpleado 
FROM 
	empleado
WHERE 
	departamentoEmpleado = 30
    
 /* Correr primero LCD DEMO DB BASE SIMPLE */
Insert into empleado values (7,"Julia",40,"México");
Insert into empleado values (8,"Moises",40,"USA");
Insert into empleado values (9,"Mickel",30,"USA"); 
  
SELECT 
    nombreEmpleado
FROM
    empleado
WHERE
    paisEmpleado = 'USA'
        && departamentoEmpleado = 30;
