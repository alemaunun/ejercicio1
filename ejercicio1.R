#Ejercicio: crea un dataframe que contenga 20 registros con valores aleatorioscon las variables "yacimiento" , "tipo artefacto" y "cantidad de artefacto"

#Paso 1: comencé generando una semilla de valores aleatorios
set.seed(123)

#Paso 2: A continuación, creo las variables. Les otorgo valores realacionados con la arqueología.
  

yacimiento <- c("Neolítico", "Edad del Bronce", "Edad del Hierro")
tipo_artefacto <- c("Cerámica", "Herramienta metal", "Hueso", "elemento ornamental")

#Al realizarlo de este modo voy a obtener un error al generar el dataframe
#debido a que el número de valores de ambas variables no se repite hasta 20

#Para ello he encontrado la función "sample" que me permite repetir el valor 
#las veces que desee, debo permitirlo mediante: replace = TRUE
#por lo tanto quedaría de la siguiente manera:

yacimiento <- sample(c("Neolítico", "Edad del Bronce", "Edad del Hierro"), 20, replace = TRUE)
tipo_artefacto <- sample(c("Cerámica", "Herramienta metal", "Hueso", "elemento ornamental"), 20, replace = 20)

#La variable "numero_artefactos" que posee valores numéricos,
#generados aleatoriamente con la función "rnorm" con la semilla creada previamente

numero_artefactos <- rnorm(20)

#Paso 3: crear el dataframe al que denominaré "territorio1"

territorio1 <- data.frame(yacimiento, tipo_artefacto, numero_artefactos)

#Paso 4: imprimir dataframe

print(territorio1)

#Observación: para el paso 2 he necesitado buscar funciones que me permitieran
#realizar esto al no encontrar la forma con lo visto en clase, espero que estas
#alternativas sean igualmente válidas. 

#Además no he logrado obtener números enteros en la generación aleatoria con 
#la semilla, por lo que el resultado final de la tabla queda poco realista.