-- Pair Programming consultas CTE. ##SOLO FALTA 5. LIMPIO.
USE northwind ;

/*Ejercicio 1. Extraer en una CTE todos los nombres de las compañias y los id de los clientes.
Para empezar nos han mandado hacer una CTE muy sencilla el id del cliente y el nombre de la compañia de la tabla Customers.*/

WITH sencilla(customer_id, company_name) AS 
( 
	SELECT customer_id, company_name
 	FROM customers
)
SELECT customer_id, company_name
FROM sencilla ;

/*2. Selecciona solo los de que vengan de "Germany" Ampliemos un poco la query anterior. 
En este caso, queremos un resultado similar al anterior, pero solo queremos los que pertezcan a "Germany".*/

WITH sencilla(customer_id, company_name) 
AS 
(
	SELECT customer_id, company_name
    	FROM customers
    	WHERE country = 'Germany'
)
SELECT customer_id, company_name
FROM sencilla ;


/*3.
Extraed el id de las facturas y su fecha de cada cliente.
En este caso queremos extraer todas las facturas que se han emitido a un cliente, su fecha y la compañia a la que pertenece.
:chincheta: NOTA En este caso tendremos columnas con elementos repetidos(CustomerID, y Company Name).*/

WITH facturas(order_id, customer_id, order_date, company_name) AS
(
	SELECT orders.order_id, orders.customer_id,orders. order_date, customers.company_name
    	FROM orders
    	LEFT JOIN customers
	ON orders.customer_id = customers.customer_id 
)
SELECT order_id, customer_id, order_date, company_name
FROM facturas ;

/*4.
Contad el número de facturas por cliente. 
Mejoremos  query anterior. En este caso queremos saber el número de facturas emitidas por cada cliente.*/

WITH facturas(order_id, customer_id, order_date, company_name) AS
(
	SELECT orders.order_id, orders.customer_id,orders. order_date, customers.company_name
    	FROM orders
    	LEFT JOIN customers
	ON orders.customer_id = customers.customer_id 
)
SELECT COUNT(order_id), customer_id, order_date, company_name
FROM facturas 
GROUP BY customer_id ;
 
/*5. REVISA ###############################
Cuál la cantidad media pedida de todos los productos ProductID.
Necesitaréis extraet la suma de las cantidades por cada producto y calcular la media de todo*/


WITH suma_productos AS 
(
	SELECT product_id, SUM(quantity)
	FROM orderdetails
	GROUP BY product_id
)
SELECT AVG(s.quantity), product_id, SUM(quantity)
FROM orderdetails AS s
GROUP BY product_id;
