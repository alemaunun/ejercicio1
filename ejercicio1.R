#Ejercicio: crea un dataframe que contenga 20 registros con valores aleatorioscon las variables "yacimiento" , "tipo artefacto" y "cantidad de artefacto"

#Paso 1: comenc� generando una semilla de valores aleatorios
set.seed(123)

#Paso 2: A continuaci�n, creo las variables. Les otorgo valores realacionados con la arqueolog�a.
  

yacimiento <- c("Neol�tico", "Edad del Bronce", "Edad del Hierro")
tipo_artefacto <- c("Cer�mica", "Herramienta metal", "Hueso", "elemento ornamental")

#Al realizarlo de este modo voy a obtener un error al generar el dataframe
#debido a que el n�mero de valores de ambas variables no se repite hasta 20

#Para ello he encontrado la funci�n "sample" que me permite repetir el valor 
#las veces que desee, debo permitirlo mediante: replace = TRUE
#por lo tanto quedar�a de la siguiente manera:

yacimiento <- sample(c("Neol�tico", "Edad del Bronce", "Edad del Hierro"), 20, replace = TRUE)
tipo_artefacto <- sample(c("Cer�mica", "Herramienta metal", "Hueso", "elemento ornamental"), 20, replace = 20)

#La variable "numero_artefactos" que posee valores num�ricos,
#generados aleatoriamente con la funci�n "rnorm" con la semilla creada previamente

numero_artefactos <- rnorm(20)

#Paso 3: crear el dataframe al que denominar� "territorio1"

territorio1 <- data.frame(yacimiento, tipo_artefacto, numero_artefactos)

#Paso 4: imprimir dataframe

print(territorio1)

#Observaci�n: para el paso 2 he necesitado buscar funciones que me permitieran
#realizar esto al no encontrar la forma con lo visto en clase, espero que estas
#alternativas sean igualmente v�lidas. 

#Adem�s no he logrado obtener n�meros enteros en la generaci�n aleatoria con 
#la semilla, por lo que el resultado final de la tabla queda poco realista.