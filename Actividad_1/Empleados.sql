CREATE TABLE EMPLEADOS (
	id_Empleado INT(16) NOT NULL,
    id_Gerente INT(16) NULL,
    Puesto VARCHAR(16) NOT NULL,
	PRIMARY KEY(id_Empleado, Puesto)
);

INSERT INTO 
EMPLEADOS 
VALUES 
(1001,NULL,'Presidente'),
(2002,'1001','Director'),
(3003,'1001','Gerente'),
(4004,'2002','Ingeniero'),
(5005,'2002','Contador'),
(6006,'2002','Administrador');

SELECT e.Id_empleado, e.Id_gerente, e.Puesto,
CASE 
WHEN e.Id_gerente IS NULL THEN 0
WHEN e.Id_gerente = 1001 THEN 1
ELSE 2
END AS Nivel 
FROM EMPLEADOS e
ORDER BY Nivel, Id_gerente;

+-------------+------------+---------------+-------+
| Id_empleado | Id_gerente | Puesto        | Nivel |
+-------------+------------+---------------+-------+
|        1001 |       NULL | Presidente    |     0 |
|        2002 |       1001 | Director      |     1 |
|        3003 |       1001 | Gerente       |     1 |
|        4004 |       2002 | Ingeniero     |     2 |
|        5005 |       2002 | Contador      |     2 |
|        6006 |       2002 | Administrador |     2 |
+-------------+------------+---------------+-------+