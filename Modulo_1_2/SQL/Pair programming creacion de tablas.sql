-- Pair Programming Creación de tablas

USE PairProgrammingLeccion12 ; 


CREATE SCHEMA PairProgrammingLeccion12 ;

CREATE TABLE Empleados 
(idEmpleado INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
 Nombre CHAR (45) NOT NULL, 
 Tienda CHAR (45) NOT NULL, 
 Salario FLOAT);
 
CREATE TABLE  Clientes
 (idClientes INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
 Nombre CHAR(45) NOT NULL, 
 Numero_telefono INT(9) NOT NULL, 
 Email CHAR(45) NOT NULL, 
 Direccion CHAR(45) NOT NULL,
 Ciudad CHAR(45), 
 Provincia CHAR(45) NOT NULL,
 Pais CHAR(45) NOT NULL,
 Codigo_postal INT(5) NOT NULL);

CREATE TABLE Zapatillas 
(idZapatillas INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
 Modelo CHAR(45) NOT NULL, 
 Talla INT NOT NULL,
 Color CHAR(45) NOT NULL);

CREATE TABLE Facturas 
(idFactura INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
 idEmpleado INT NOT NULL, 
 idClientes INT NOT NULL,
 idZapatillas INT NOT NULL, 
 fecha DATE NOT NULL,
 Total FLOAT NOT NULL,
 FOREIGN KEY (idEmpleado) REFERENCES empleados (idEmpleado), 
 FOREIGN KEY (idClientes) REFERENCES clientes (idClientes), 
 FOREIGN KEY (idZapatillas) REFERENCES zapatillas (idZapatillas));


/*En esta sesión crearemos una nueva BBDD desde 0 :músculo::tono_de_piel-4:! Supongamos que tenemos una tienda de zapatillas y que durante mucho tiempo hemos ido 
recopilando mucha información sobre nuestros empleados, las zapatillas que tenemos, los clientes y todas las facturas que hemos emitido. Nuestra información 
puede que este un poco desordenado y empieza a ser un poco complicado gestionar toda esa información, por lo que hemos decidido crearnos una BBDD en SQL. 
Para ello crearemos 4 tablas en la BBDD: - Empleados - Clientes - Facturas - Zapatillas
La tabla Facturas tiene una relación con la tabla Empleados y la tabla Clientes y la tabla Zapatillas. Estas tres últimas no tienen ninguna relación entre ellas.
Carácteristicas de nuestras tablas
Tabla Zapatillas: tiene 4 columnas: id, modelo, color, talla con las siguientes características:
idZapatillas: es una clave primaria de tipo int, autoincremental y no nula.
Modelo: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
Talla: es un integer, no nula.
Color: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
Tabla Clientes: tiene 9 columnas idcliente, nombre, numero_telefono, email, direccion, ciudad, provincia, pais, codigo_postal con las siguientes características:
idEmpleado: es una clave primaria de tipo int, autoincremental y no nula.
Nombre: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
Numero_telefono: es integer de longitud máxima de 9 caracteres, no nula.
Email: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
Direccion: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
Ciudad: es una cadena de caracteres de longitud máxima de 45 caracteres, puede ser nula.
Provincia: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
Pais: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
Codigo_postal: es integer de longitud máxima 5, no nula.
Tabla Empleados: tiene 5 columnas idEmpleado, nombre, tienda, salario, fecha_incorporacion con las siguientes características:
idEmpleado: es una clave primaria de tipo int, autoincremental y no nula.
Nombre: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
Tienda: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
salario: es decimal, puede ser nula.
fecha_incorporacion: es una columna de tipo date, no nula.
Tabla Facturas: tiene 5 columnas idFactura, idEmpleado, idCliente, fecha, total con las siguientes características:
idFactura: es una clave primaria de tipo int, autoincremental y no nula.
idEmpleado: es una clave foránea de tipo int, no nula.
idCliente: es una clave foránea de tipo int, no nula.
idZapatilla: es una clave foránea de tipo int, no nula
Fecha: es una columna de tipo date, no nula.
Total: es decimal, no nula.
:chincheta: NOTA En esta última tabla tendremos que incluir todos los CONSTRAINTnecesarios para establecer los relaciones entre las tablas, donde tendremos que especificar:
Foreign Key*/
