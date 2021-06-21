SELECT * FROM departamento;
SELECT * FROM empleado;

/* INNER JOIN */
SELECT *
FROM empleado E
JOIN departamento D
on E.departamentoEmpleado = D.idDepartamento;

/* LEFT JOIN */
SELECT *
FROM empleado E
LEFT JOIN  departamento D
on E.departamentoEmpleado = D.idDepartamento;

/* RIGHT JOIN */
SELECT *
FROM empleado E
RIGHT JOIN  departamento D
on E.departamentoEmpleado = D.idDepartamento;

/* ¿Cómo harías un FULL JOIN en MySQL? */

/* CASOS ESPECIALES #1: EMPLEADOS QUE NO TIENEN UN DEPARTAMENTO ASIGNADO*/
SELECT
	E.nombreEmpleado as 'Nombre del empleado',
    D.nombreDepartamento as 'Departamento'
FROM empleado E
LEFT JOIN  departamento D
ON E.departamentoEmpleado = D.idDepartamento
WHERE D.idDepartamento is NULL;
