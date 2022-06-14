-- Pair Programming Modificación de tablas 1 

USE PairProgrammingLeccion12 ; 


/* Enunciado 

Seguimos trabajando con la BBDD que creamos en la sesión de *pair programming* anterior. Revisando nuestras tablas nos hemos dado cuenta 
que algunas tienen algunos errores. En algunas tablas nos faltan columnas, en otras hemos introducido columnas de más o incluso nos hemos 
equivocado a la hora de especificar el tipo de los datos.

En este ejercicio vamos a corregir los errores que hemos encontrado en nuestras tablas.

- Tabla Zapatillas: 
Se nos ha olvidado introducir la marca y la talla de las zapatillas que tenemos en nuestra BBDD. Por lo tanto, debemos incluir: 
    - `Marca`: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula. 
    - `Talla`: es un entero, no nulo.*/
    
ALTER TABLE Zapatillas
ADD COLUMN Marca  CHAR(45) NOT NULL ;

ALTER TABLE Zapatillas
ADD COLUMN Talla  INT NOT NULL ;

/*- Tabla Empleados
    - `Salario`: es un entero, no nulo. Pero puede que el salario de nuestros empleados tenga decimales, por lo que le cambiaremos el tipo a decimal.*/
    
ALTER TABLE Empleados
MODIFY Salario FLOAT NOT NULL ;    

/*- Tabla Clientes
    - `Pais`: la hemos incluido en la tabla pero nuestro negocio solo distribuye a España, por lo que es una columna que no hará falta. La eliminaremos. 
    - `Codigo Postal`: es un *string*, pero esto no tiene mucho ya que son números de longitud fija de 5 caracteres. Por lo tanto, cambiaremos el tipo a entero 
    de longitud 5.*/
    
ALTER TABLE Clientes
DROP COLUMN Pais ; 

/*- Tabla Facturas: 
    - `Total`: madre mía!!! Se nos ha olvidado incluir el total de la cada factura generada��!Creemos esa columna con un tipo de datos decimal.*/

ALTER TABLE Clientes
MODIFY Codigo_postal INT(5);

ALTER TABLE Facturas
ADD COLUMN Total FLOAT;

