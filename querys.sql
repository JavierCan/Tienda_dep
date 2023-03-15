USE tienda_dep;

--1. Mostrar el número de ventas de cada producto, ordenado de más a menos ventas.
SELECT id_producto, COUNT(id_producto) AS ventas FROM ventas GROUP BY id_producto ORDER BY ventas DESC;

--2. Obtener un informe completo de ventas, indicando el nombre del cajeroque realiz ó la venta, nombre y precios de los productos vendidos, y piso en el que se encuentra la máquina registradora donde se realizóla venta.
SELECT c.nombre, c.apellido, p.nombre, p.precio, m.piso 
FROM ventas v INNER JOIN cajeros c ON v.id_cajero = c.id_cajero 
INNER JOIN productos p ON v.id_producto = p.id_producto 
INNER JOIN maquina_registradora m ON v.id_maquina = m.id_maquina;

--3. Obtener las ventas totales realizadas en cada piso.(operaciones)
SELECT m.piso, SUM(p.precio * v.cantidad) AS ventas_totales
FROM ventas v INNER JOIN productos p ON v.id_producto = p.id_producto
INNER JOIN maquina_registradora m ON v.id_maquina = m.id_maquina
GROUP BY m.piso;

--4. Obtener el código y nombre de cada empleadojunto con el importe total de sus ventas.
SELECT c.id_cajero, c.nombre, c.apellido, SUM(p.precio * v.cantidad) AS ventas_totales
FROM ventas v INNER JOIN cajeros c ON v.id_cajero = c.id_cajero
INNER JOIN productos p ON v.id_producto = p.id_producto
GROUP BY c.id_cajero;
