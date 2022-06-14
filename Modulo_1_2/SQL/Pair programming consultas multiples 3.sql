-- Pair Programming consultas MÚLTIPLES 3.

USE northwind ;

-- Ejercicio 1
/* Nuestros jefes nos han pedido que creemos una query uqe nos devuelva 
todos los clientes y proveedores que tenemos en la BBDD. Mostrad la 
ciudad a la que pertenecen, el nombre de la empresa y el nombre del 
contacto, además de la relación �Proveedpr o Cliente). Pero importante! 
No debe haber duplicados en nuestra respuesta*/
SELECT city, company_name, contact_name, contact_title 
FROM customers
UNION
SELECT city, company_name, contact_name, contact_title
FROM suppliers ;
/*Nos falta la relacion proveedor-cliente*/
-- en SELECT 'customers', 'suppliers' 

-- Ejercicio 2
/*Extraer todos los pedidos gestinados por "Nancy Davolio"
En este caso, nuestro jefe quiere saber cuantos pedidos ha gestionado 
"Nancy Davolio", una de nuestras empleadas. Nos pide todos los detalles 
tramitados por ella.*/
SELECT *
FROM orders
WHERE employee_id IN (	SELECT employee_id
			FROM employees
                        WHERE last_name = 'Davolio') ;


-- Ejercicio 3
/*Extraed todas las empresas que no han comprado en el año 1997
En este caso, nuestro jefe quiere saber cuantas empresas no han 
comprado en el año 1997.
����� Pista ����� Para extraer el año de una fecha, podemos usar el estamento 
year . Más documentación sobre este método .*/

SELECT *
FROM customers
WHERE customer_id NOT IN (	SELECT customer_id 
				FROM orders
                      		WHERE YEAR(order_date) = '1997') ;

-- Ejercicio 4
/*Extraed toda la información de los pedidos donde tengamos "Konbu"
Estamos muy interesados en saber como ha sido la evolución de la venta 
de Konbu a lo largo del tiempo. Nuestro jefe nos pide que nos muestre 
todos los pedidos que contengan "Konbu".
����� Pista ����� En esta query tendremos que combinar conocimientos 
adquiridos en las lecciones anteriores como por ejemplo el inner join.*/

SELECT orders.order_date, orders.order_id, orderdetails.quantity
FROM orderdetails
INNER JOIN products
ON products.product_id = orderdetails.product_id
INNER JOIN orders
ON orders.order_id = orderdetails.order_id
WHERE products.product_name = 'Konbu' ;


