## Pair Programming - Guada y Laura - funciones II


#EJERCICIO 1 OPCIÓN 1
# Vamos a crear una "Calculadora de puntos". 
# Tenéis que escribir una calculadora que reciba cadenas de caracteres como entrada. Los puntos representarán el número de la ecuación. 
# Habrá puntos en un lado, un operador, y puntos de nuevo después del oparador. Los puntos y el operador estarán separados por un espacio.
# Aquí os dejamos los operadores válidos: Suma, sustracción, multiplicación, división enteros
# Vuestro trabajo
# Tendréis que devolver un string que contenga puntos, tantos como devuelva la ecuación. Si el resultado es 0, devuelve la cadena vacía.
# Cuando se trata de una resta, el primer número siempre será mayor o igual que el segundo.




#opción 1. Falta lo de que si la solución es 0, devuelve cadena vacia... 
def calculadora(str_input):

    string = str(str_input).split()
    string = string[0], string[1], string[2]

    str1 = string[0]
    operador = string[1]
    str2 = string[2]
    
    if operador == "+":
        resul1 = str1 + str2
        print("Este es el resultado de tu cálculo:", "-->", resul1)

    elif operador == "-":
        resul_resta1 = str1.count(".")
        resul_resta2 = str2.count(".")
        resul_resta = resul_resta1 - resul_resta2
        print("Este es el resultado de tu cálculo:", "-->", resul_resta)

    elif operador == "//":
        resul_div1 = str1.count(".")
        resul_div2 = str2.count(".")
        resul_div = resul_div1 // resul_div2
        print("Este es el resultado de tu cálculo:", "-->", resul_div)

    elif operador == "*":
        resul_mult1 = str1.count(".")
        resul_mult2 = str2.count(".")
        resul_mult = resul_mult1 * resul_mult2
        print("Este es el resultado de tu cálculo:", "-->", resul_mult)

    
calculadora("... - ...")


#EJERCICIO 1 OPCIÓN 2
def calculadora(str1):

  resultado=''
  aste=''
#s=hola*jeje string[principio:final] s[1:3]-->ola len(s[1:3])-->3     * esta en posicion x para saltarmelo en el substring x+1

  if "*" in str1:
      for i in range(len(str1[0:(str1.index('*'))])*len(str1[str1.index('*')+1:])):
          aste=aste+'.'
      print(aste)        
        #print(len(str1[0:(str1.index('*'))])*len(str1[str1.index('*')+1:])) 
  elif '+' in str1:
      for i in range(len(str1[0:(str1.index('+'))])+len(str1[str1.index('+')+1:])):
          aste=aste+'.'
      print(aste) 
      #print(len(str1[0:(str1.index('+'))])+len(str1[str1.index('+')+1:]))
  elif '-' in str1:
      if len(str1[str1.index('-')+1:]) > len(str1[0:(str1.index('-'))]):
        print ('resta')
      else: 
        for i in range(len(str1[0:(str1.index('-'))])-len(str1[str1.index('-')+1:])):
          aste=aste+'.'
      print(aste) 
      #print(len(str1[0:(str1.index('-'))])-len(str1[str1.index('-')+1:]))
  elif '//' in str1:  
      if len(str1[str1.index('//')+2:]) > len(str1[0:(str1.index('//'))]):
        print ('division')
      else:
        for i in range(len(str1[0:(str1.index('//'))])//len(str1[str1.index('//')+2:])):
          aste=aste+'.'
      print(aste)
      #print(len(str1[0:(str1.index('//'))])//len(str1[str1.index('//')+2:]))      
 

calculadora('.........//....')




#EJERCICiO 2
# Te despides de tu mejor amigo, "Nos vemos el próximo año".
# Vuestro trabajo: Dado un año, encuentra el próximo cumpleaños o el año más cercano en que verás a tu mejor amigo.
# Condiciones
# Año por supuesto siempre positivo .
# El siguiente año que le felicites a tu mejor amigo no puede tener ningún dígito repetido.
# Probad la función con los siguientes casos:

# 7712 ==> El siguiente año que felicitarás a tu amigo será el 7801. 
# Por que es el siguiente año en el que no hay ninguún dígito repetido. 


# OUTPUT
# 1001 => 1023 

# 1123 => 1203

# 2001 => 2013



#EJERCICIO 3
# Tenéis que crear un función que chequee la vida de un evaporador que contiene un gas.
# Conocemos el contenido del evaporador (contenido en ml), el porcentaje de gas que se pierde cada día 
# y el umbral en porcentaje a partir del cual el evaporador deja de ser útil. Todos los números serán estrictamente positivos.
# ⚠️ Nota: el contenido no es, de hecho, necesario en el cuerpo de la función, podéis utilizarlo o no.



def vida_util(contenido,perdida,umbral):

    dias_vida = 0
    
    contenido_minimo = contenido * umbral / 100
    print("este es el contenido minimo", contenido_minimo)
    while contenido > contenido_minimo:
        contenido_perdido = contenido*perdida/100
        contenido = contenido - contenido_perdido
        print(contenido)
        
        
        dias_vida = dias_vida +1   
        if contenido <= contenido_minimo:
            print("No hay suficiente gas así que tengo que dejar de funcionar. ")
           
    print("Estos son los días de vida que he tenido, gracias :)", dias_vida)
vida_util(10,10,10)

#OUTPUT
# 0, 10, 5 => 29

# 10, 10, 10 = > 22



#EJERCICIO 4
# Definid una función que tome como argumento un entero y devuelva True o False dependiendo de si el número es primo o no.
# un número primo es un número natural mayor que 1 que no tiene divisores positivos más que 1 y él mismo.
# Probad la función con los siguientes números: 

def ereh_un_primoh(num):
    
    if num <= 0:
        print("False")
    elif num > 1:
        # if num // num != 0:
        for i in range(2, int(num/2)+1):                                             
            if num % i == 0:
                print("False")
                break
        else:
            print("True")
    else:
        print("False")

ereh_un_primoh(5099)      


# 0 => False
# 2 => True
# 73 => True
# -1 => False
# 5099 => True



# Ejercicio 5
# Probablemente conozcais el sistema de "me gusta" de Facebook y otras páginas. La gente puede dar "me gusta" a las publicaciones del blog, 
# a las imágenes o a otros elementos. Queremos crear el texto que debe mostrarse junto a dicho elemento.
# Cread una función que toma una lista que contiene los nombres de las personas a las que les gusta un artículo. 
# Debe devolver el texto que se muestra en los ejemplos:

  

def texto_likes(*strings_input):                 
    numero_likes = len(strings_input)
    
    tupla_nombres = strings_input               
                                              
    lista_nombres = list(tupla_nombres)
    
    conteo_restante = numero_likes - 2

    if numero_likes == 0:
        print("A nadie le gusta esto")
    elif numero_likes == 1:
        print("A", lista_nombres[0],  "le gusta esto")
    elif numero_likes == 2:
        print("A" ,lista_nombres[0], "y", lista_nombres[1], "les gusta esto")
    elif numero_likes == 3:
        print("A" ,lista_nombres[0], ",", lista_nombres[1], "y", lista_nombres[2], "les gusta esto")
    elif numero_likes == 4:
        print("A", lista_nombres[0], ",", lista_nombres[1], "y", conteo_restante, "más les gusta esto")
    elif numero_likes >= 5:
        print("A", lista_nombres[0], ",", lista_nombres[1], "y",  conteo_restante, "más les gusta esto")


texto_likes("Alex", "Jacoba", "Lola", "Carmen")

# OUTPUT
# Probad los siguientes ejemplos: 

# []                              -->  "A nadie le gusta esto"
# ["Paola"]                       -->  "A Peter le gusta esto"
# ["Jacoba", "Alex"]               -->  "A Jacob y Alex les gusta esto"
# ["Maria", "Juana", "Lola"]         -->  "A Max, John y Mark les gusta esto"
# ["Alex", "Jacoba", "Lola", "Carmen"]-->  "A Alex, Jacob y 2 más les gusta esto"
# ["Alex", "Jacoba", "Lola", "Carmen", "Mariana"]-->  "A Alex, Jacoba y 3 más les gusta esto"