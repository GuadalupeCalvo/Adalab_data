## Pair programming pair 2, Guada, Laura - Ficheros I

# En estos ejercicios tendréis que crear dos funciones que:
# ---------------------------------- PRIMERA FUNCIÓN -----------------------
# Nos muestre en que carpeta estamos trabajando.
# Cree una carpeta que se llame "aprendiendo-ficheros". ⚠️ Tened en cuenta que si la carpeta ya existe no la podemos crear, nos devolverá un error. 
# Incluye en la función un programa que evite que nos de error si la carpeta ya existe.
# Cree otra carpeta que se llame "datos" dentro de la carpeta "aprendiendo-ficheros". En esta carpeta "datos" guardaremos el fichero "saludo.txt" 
# que os habéis descargado.
# Cambiad el directorio de trabajo a la carpeta "datos". Antes de seguir chequead que estáis trabajando en la carpeta "datos"..
# Cambiad el nombre de la carpeta creada en el punto 2 a "primera-toma-contacto"

#Pistas 
# La función tendrá que recibir 3 parámetros:
# El nombre del nombre de la primera carpeta
# El nombre de la carpeta segunda carpeta
# El nombre con el que queramos cambiar el nombre de la primera carpeta creada
# Para saber si las carpetas ya existen tendréis que usar lstdir(recordad que nos devuelve una lista de ficheros y carpetas).
# Para poder controlar los errores tendremos que usar un if loop, que si el fichero existe, nos devuelva un mensaje de que el fichero ya existe. En caso de que no exista, los deberéis crear y que la función nos muestre un mensaje de que se ha creado.
# Tendréis que ir cambiando de directorio para poder crear las carpetas y cambiar sus nombres.


def donde_trabajamos(aprendiendo_ficheros, datos, arg_3):
    import os
    import shutil
    
        
    print(os.getcwd())
    os.chdir("/mnt/c/Users/a/Desktop/Adalab/DA-promo-A-module-1-pairprog2-pair-2-GL/Python/")                                  


    
                                                                                                        #creando carpeta aprendiendo ficheros.
                                                                                                        #Si existe ya da error, si no, la crea. 
    try:
        os.mkdir(aprendiendo_ficheros)                                                                                
    except OSError:
        print("La creación del directorio falló porque ya existe 'aprendiendo-ficheros'")
    else:
        print("Se ha creado el directorio: 'aprendiendo-ficheros'")
    
    os.chdir(aprendiendo_ficheros)
    os.getcwd()                                                                                                               
   

    
    try:                                                                                                   #creo carpeta datos. Error si existe. 
        os.mkdir(datos)
    except OSError:
        print("La creación del directorio falló porque ya existe 'datos'")
    else:
        print("Se ha creado el directorio: 'datos'")



    os.chdir(datos)                                                                                         #cambiamos el directorio a datos para comprobar 
                                                                                                            #que está bien creada la carpeta
    print("Estamos en esta carpeta: ", os.getcwd())
  
    os.chdir('/mnt/c/Users/a/Desktop/Adalab/DA-promo-A-module-1-pairprog2-pair-2-GL/Python/aprendiendo_ficheros')
    

    primera_toma_contacto = "/mnt/c/Users/a/Desktop/Adalab/DA-promo-A-module-1-pairprog2-pair-2-GL/Python/primera_toma_contacto"
    
    arg_3 = os.rename(aprendiendo_ficheros, primera_toma_contacto)                                          #intentamos cambiar de nombre con rename y con shutil.move
        

    # arg_3 = shutil.move(aprendiendo_ficheros, primera_toma_contacto)
    print(os.listdir())
    
donde_trabajamos('aprendiendo_ficheros', 'datos', 'arg_3') 

   




######Función 2  ################### IF

# Antes de empezar, recordad descargaros el fichero saludo.txt y guardarlo en el repo en el que estáis trabajando, dentro de una carpeta que se llame "datos".
# Lea el fichero que se llame "saludo.txt y muestre su contenido completo.
# Muestra la línea 4 del fichero

# 💡 Pistas para resolver este ejercicio 💡
# Antes de empezar, tendréis que saber cuál es vuestro directorio de trabajo.
# Tened en cuenta en que carpeta estáis. Si vuestro directorio de trabajo no es "datos" tendréis que cambiarlo o poner la ruta relativa a la carpeta "datos".
# Usar if... else para evitar que se nos pare el código.
# Para cambiar el fichero podréis usar el comando input para preguntar el usuario donde está el fichero y que se pueda usar la ruta relativa o absoluta.
# Happy coding! 💪


def leer_saludo(nombre_archivo):

    import os
    print(os.getcwd())
    
    ubicacion_archivo = "/mnt/c/Users/a/Desktop/Adalab/DA-promo-A-module-1-pairprog2-pair-2-GL/Python/datos"
    print("Escribe la ruta donde está el archivo: ")
    ubicacion_input = str(input())
    os.chdir(ubicacion_input)

    print("Hemos cambiado el archivo aquí: ", ubicacion_input)
    print("comprando que estamos donde deberíamos", os.getcwd)                              
    carpeta_input = os.listdir(ubicacion_input)
    print(carpeta_input)
   
    if nombre_archivo in ubicacion_archivo:
        pass
    else:
        os.chdir(ubicacion_archivo)

    with open('saludo.txt','r') as f:
        print("Este es el contenido del archivo completo: -----> ", f.read())

    with open('saludo.txt','r') as f:
        print("\n")
        print("Esta es la línea 4 del archivo: -----> ", f.readlines(4))
    
    

leer_saludo('as')
