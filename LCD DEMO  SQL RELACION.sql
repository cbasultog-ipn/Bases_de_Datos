ALTER TABLE empleado ADD CONSTRAINT pertenecea FOREIGN KEY (departamentoEmpleado) 
REFERENCES departamento (idDepartamento)
