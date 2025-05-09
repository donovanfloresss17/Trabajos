CREATE TABLE CARRITO2 (
	ID INT(16) NOT NULL,
    ARTICULO VARCHAR(16) NOT NULL,
	PRIMARY KEY(ID, ARTICULO)
);
CREATE TABLE CARRITO1 (
	ID INT(16) NOT NULL,
    ARTICULO VARCHAR(16) NOT NULL,
	PRIMARY KEY(ID, ARTICULO)
);

INSERT INTO 
CARRITO1 
VALUES 
(1, 'Azucar'),
(2, 'Pan'),
(3, 'Jugo'),
(4, 'Refresco'),
(5, 'Harina');


INSERT INTO 
CARRITO2 
VALUES 
(1, 'Azucar'),
(2, 'Pan'),
(3, 'Mantequilla'),
(4, 'Queso'),
(5, 'Manzana');


SELECT A.ARTICULO FROM CARRITO1 as A LEFT OUTER JOIN CARRITO2 as B ON A.ARTICULO = B.ARTICULO
 UNION ALL
 select B.ARTICULO from CARRITO1 as A right outer join CARRITO2 as B on A.ARTICULO = B.ARTICULO;

SELECT * FROM CARRITO1 LEFT OUTER JOIN CARRITO2 ON CARRITO1.ARTICULO = CARRITO2.ARTICULO
UNION 
select * from CARRITO1 right outer join CARRITO2 on CARRITO1.ARTICULO = CARRITO2.ARTICULO;

+------+----------+------+-------------+
| ID   | ARTICULO | ID   | ARTICULO    |
+------+----------+------+-------------+
|    1 | Azucar   |    1 | Azucar      |
|    2 | Pan      |    2 | Pan         |
|    3 | Jugo     | NULL | NULL        |
|    4 | Refresco | NULL | NULL        |
|    5 | Harina   | NULL | NULL        |
| NULL | NULL     |    3 | Mantequilla |
| NULL | NULL     |    4 | Queso       |
| NULL | NULL     |    5 | Manzana     |
+------+----------+------+-------------+