CREATE TABLE TRABAJO (
    Flujo VARCHAR(50) NOT NULL,
    Caso_1 INT(16) NOT NULL,
    Caso_2 INT(16) NOT NULL,
    Caso_3 INT(16) NOT NULL,
    PRIMARY KEY(Flujo)
);


INSERT INTO
TRABAJO
VALUES 
('Alta de usuarios',NULL,NULL,NULL),
('Baja de usuario', NULL, 1, 1),
('Nueva orden', 1, NULL, NULL),
('Elimina orden', NULL, NULL, NULL);
    
SELECT Flujo, 
       (Caso_1 + Caso_2 + Caso_3) AS Aprovado
FROM TRABAJO;

+------------------+----------+
| Flujo            | Aprovado |
+------------------+----------+
| Alta de usuarios |        0 |
| Baja de usuario  |        2 |
| Elimina orden    |        0 |
| Nueva orden      |        1 |
+------------------+----------+