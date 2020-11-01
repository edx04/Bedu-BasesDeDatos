USE tienda;
SHOW TABLES;

#Reto 1

DESCRIBE empleado;
DESCRIBE puesto;
DESCRIBE articulo;
DESCRIBE venta;


#Reto 2

#¿Cuál es el nombre de los empleados con el puesto 4?
SELECT nombre FROM empleado WHERE id_puesto = 4;
#¿Qué puestos tienen un salario mayor a $10,000?
SELECT * FROM puesto WHERE salario > 10000;
#¿Qué articulos tienen un precio mayor a $1,000 y un iva mayor a 100?
SELECT * FROM articulo WHERE precio > 1000 AND iva > 100;
#¿Qué ventas incluyen los artículo 135 o 963 y fueron hechas por los empleados 835 o 369?
SELECT * FROM venta WHERE (id_articulo = 135 OR id_articulo = 963) AND (id_empleado = 835 OR id_empleado = 369);
SELECT * FROM venta WHERE id_articulo IN(135,963) AND id_empleado IN(835,369);


#Reto 3

#Usando la base de datos tienda, escribe una consulta que permita obtener el top 5 de puestos por salarios.
SELECT * FROM puesto ORDER BY salario DESC LIMIT 5
