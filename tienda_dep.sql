CREATE DATABASE tienda_dep;
USE tienda_dep;

CREATE Table productos(
id_producto int NOT NULL,
nombre varchar(50) NOT NULL,
precio float NOT NULL,
stock int NOT NULL,
PRIMARY KEY (id_producto)
);



create table cajeros(
id_cajero int NOT NULL,
nombre varchar(50) NOT NULL,
apellido varchar(50) NOT NULL,

PRIMARY KEY (id_cajero)
);

create table maquina_registradora(
id_maquina int NOT NULL,
piso int NOT NULL,
PRIMARY KEY (id_maquina)
);


create table ventas(
id_venta int NOT NULL,
id_producto int NOT NULL,
id_cajero int NOT NULL,
id_maquina int NOT NULL,
fecha date NOT NULL,
cantidad int NOT NULL,
PRIMARY KEY (id_venta),
FOREIGN KEY (id_producto) REFERENCES productos(id_producto),
FOREIGN KEY (id_cajero) REFERENCES cajeros(id_cajero),
FOREIGN KEY (id_maquina) REFERENCES maquina_registradora(id_maquina)
);


--insert data in tables

insert into productos values(123,'pantalon', 100, 150);
INSERT INTO productos VALUES(245,'camisa', 250, 50);
INSERT INTO productos VALUES(356,'pantalon', 100, 110);
INSERT INTO productos VALUES(434,'playera', 150, 70);
INSERT INTO productos VALUES(556,'gorra', 70, 90);
INSERT INTO productos VALUES(667,'traje de baño', 200, 50);
INSERT INTO productos VALUES(710,'short', 95, 60);
INSERT INTO productos VALUES(808,'cinturon', 100, 70);
INSERT INTO productos VALUES(904,'calcetines', 50, 50);
INSERT INTO productos VALUES(1001,'zapatos', 300, 200);


INSERT INTO cajeros VALUES(1,'juan','perez');
INSERT INTO cajeros VALUES(2,'maria','gomez');
INSERT INTO cajeros VALUES(3,'pedro','martinez');
INSERT INTO cajeros VALUES(4,'jose','garcia');
INSERT INTO cajeros VALUES(5,'luis','rodriguez');


INSERT INTO maquina_registradora VALUES(101010,10);
INSERT INTO maquina_registradora VALUES(202020,5);
INSERT INTO maquina_registradora VALUES(303030,8);
INSERT INTO maquina_registradora VALUES(404040,4);
INSERT INTO maquina_registradora VALUES(505050,2);



INSERT INTO ventas VALUES(1,808,4,303030,'2022-08-26',1);
INSERT INTO ventas VALUES(2,245,2,101010,'2022-08-29',2);

INSERT INTO ventas VALUES(3,556,1,101010,'2022-08-29',7);

INSERT INTO ventas VALUES(4,1001,3,404040,'2022-09-07',2);

INSERT INTO ventas VALUES(5,667,5,505050,'2022-09-10',1);

INSERT INTO ventas VALUES(6,123,1,101010,'2022-09-10',1);

INSERT INTO ventas VALUES(7,904,2,202020,'2022-10-10',1);

INSERT INTO ventas VALUES(8,245,2,101010,'2022-10-12',1);

INSERT INTO ventas VALUES(9,710,2,303030,'2022-10-12',1);

INSERT INTO ventas VALUES(10,434,5,505050,'2022-10-12',1);

INSERT INTO ventas VALUES(11,356,3,101010,'2022-10-12',9);