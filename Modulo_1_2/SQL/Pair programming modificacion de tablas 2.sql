USE pairprogrammingleccion12 ; 
-- Pair Porgramming Modificación de tablas 2

/*Genial!!! Ya tenemos nuestra BBDD creada y con los errores solucionados. Ahora es el momento de manipularla un poco. Vamos a meter datos, actulizar datos que 
hayamos metido o incluso eliminarlos!!!
Actividades
1.
Lo primero que vamos a hacer es insertar datos en nuestra BBDD con los siguientes datos:
Tabla zapatillas:
idZapatillas, Modelo, Color
1, XQYUN, Negro
2, UOPMN, Rosas
3, OPNYT, Verdes*/
INSERT INTO zapatillas (Modelo, Marca, Color, Talla) VALUES ('XQYUN', 'Nike', 'Negro', 42) ;
INSERT INTO zapatillas (Modelo, Marca, Color, Talla) VALUES ('UOPMN', 'Nike', 'Rosas', 39) ;
INSERT INTO zapatillas (Modelo, Marca, Color, Talla) VALUES ('OPNYT', 'Adidas', 'Verdes', 35);
/*Tabla empleados
idEmpleado, Nombre, Tienda, salario. Fecha_incorporacion
1, Laura, Alcobendas, 25.987, 03/09/2010
2, Maria, Sevilla, 11/04/2001
3, Ester, Oviedo, 30.165,98, 29/11/2000*/
INSERT INTO empleados (Nombre, Tienda, Salario, fecha_incorporacion ) VALUES ('Laura', 'Alcobendas', 25987, '2010/09/03') ;
INSERT INTO empleados (Nombre, Tienda, Salario, fecha_incorporacion ) VALUES ('Maria', 'Sevilla', 0, '2001-04-11') ;
INSERT INTO empleados (Nombre, Tienda, Salario, fecha_incorporacion ) VALUES ('Ester', 'Oviedo', 3165.98, '2000-11-29');
ALTER TABLE facturas 
ADD COLUMN Numero_Factura INT NOT NULL ;

/*Tabla clientes
idCliente, Nombre, Numero_telf, Email, Direccion, Ciudad, Provincia, Codigo_Postal
1, Monica, 1234567289, monica@email.com, Calle Felicidad, Móstoles, Madrid, 28176
2, Lorena, 289345678, lorena@email.com, Calle Alegria, Barcelona, Barcelona, 12346
3, Carmen, 298463759, carmen@email.com, Calle del Color, Vigo, Pontevedra, 23456*/
INSERT INTO clientes (Nombre, Numero_telefono, Email, Direccion, Ciudad, Provincia, Codigo_postal) 
VALUES ('Monica', 1234567289,'monica@email.com', 'Calle Felicidad', 'Mostoles', 'Madrid', 28176),
('Lorena', 289345678, 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona', 12346),
('Carmen', 298463759, 'carmen@email.com', 'Calle del Color', 'Vigo', 'Pontevedra', 23456) ;

/*Tabla facturas
idFactura, Numero_Factura, Fecha, idZapatillas, idEmpleado, idCliente, Total
1, 123, 11/12/2001, 1, 2, 1, 54,98
2, 1234, 23/05/2005, 1, 1, 3, 89,91
3, 12345, 18/09/2015, 2, 3, 3, 76.23*/
INSERT INTO facturas (Numero_Factura, fecha, idZapatillas, idEmpleado, idClientes, Total) 
VALUES (123 , 20011211, 1, 2, 1, 54.98), 
(1234, 20050523, 1, 1, 3, 89.91), 
(12345, 20150918, 2, 3, 3, 76.23) ;

/*De nuevo nos hemos dado cuenta que hay algunos errores en la insercción de datos. En este ejercicios los actualizaremos para que nuestra BBDD este perfectita.Tabla zapatillas:
En nuestra tienda no vendemos zapatillas Rosas... ¿Cómo es posible que tengamos zapatillas de color rosa? :cara_pensativa: En realidad esas zapatillas son amarillas.*/
UPDATE zapatillas
SET Color = 'Amarillos'
WHERE Color = 'Rosas' ;

/*Tabla empleados:
Laura se ha cambiado de ciudad y ya no vive en Alcobendas, se fue cerquita del mar, ahora vive en A Coruña.*/
UPDATE empleados
SET Tienda = 'A coruña'
WHERE Tienda = 'Alcobendas' ;

/*Tabla clientes:
El Numero de telefono de Monica esta mal!!! Metimos un digito de más. En realidad su número es: 123456728*/
UPDATE clientes
SET Numero_telefono = 123456728
WHERE Numero_telefono = 1234567289 ;

/*Tabla facturas:
El total de la factura de la zapatilla cuyo id es 2 es incorrecto. En realidad es: 89,91.*/
UPDATE facturas
SET Total = 89.91
WHERE idFactura = 2
