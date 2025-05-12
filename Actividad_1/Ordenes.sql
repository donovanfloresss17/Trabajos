CREATE TABLE ORDENES (
    Id_cliente INT(16) NOT NULL,
    Id_Orden INT(16) NOT NULL,
    Estado_Destino VARCHAR(16) NOT NULL,
    Costo VARCHAR(50) NOT NULL,
    PRIMARY KEY(Id_Orden)
);


INSERT INTO 
ORDENES
VALUES 
(1001,1,'JAL','$987'),
(1001,2,'CDMX','$400'),
(1001,3,'CDMX','$545'),
(1001,4,'CDMX','$321'),
(2002,5,'MTY','$324'),
(3003,6,'JAL','$931'),
(4004,7,'JAL','$876'),
(5005,8,'CDMX','$567');


SELECT o.Id_cliente, o.Id_Orden, o.Estado_Destino, o.Costo
FROM ORDENES o
WHERE o.Estado_Destino = 'CDMX'
AND o.Id_cliente IN (
    SELECT Id_cliente
    FROM ORDENES
    WHERE Estado_Destino = 'JAL'
)
ORDER BY o.Id_cliente, o.Id_Orden;

+------------+----------+----------------+-------+
| Id_cliente | Id_Orden | Estado_Destino | Costo |
+------------+----------+----------------+-------+
|       1001 |        2 | CDMX           | $400  |
|       1001 |        3 | CDMX           | $545  |
|       1001 |        4 | CDMX           | $321  |
+------------+----------+----------------+-------+