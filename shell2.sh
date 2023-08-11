#!/bin/bash

# En este ejemplo, se utiliza el comando date para obtener la fecha y hora actual en el formato deseado (%Y-%m-%d para la fecha y %H-%M-%S para la hora). 
# Luego, se crea un directorio con el nombre "archivos_" seguido de la fecha actual.
# Después, se utiliza un ciclo while para generar cinco archivos. 
# Cada archivo se nombra utilizando el contador, la fecha y la hora actual, y se guarda en el directorio creado anteriormente. 
# El contenido del archivo es simplemente una línea que indica el número del archivo.

# Al finalizar, se muestra un mensaje indicando en qué directorio se han generado los archivos.

# Obtener la fecha y hora actual
fecha=$(date +"%Y-%m-%d")
hora=$(date +"%H-%M-%S")

# Crear un directorio para guardar los archivos
directorio="archivos_$fecha"
mkdir $directorio

# Generar archivos con fecha y hora actual
contador=1
while [ $contador -le 5 ]
do
    nombre_archivo="archivo$contador-$fecha-$hora.txt"
    echo "Contenido del archivo $contador" > "$directorio/$nombre_archivo"
    contador=$((contador + 1))
done

echo "Se han generado los archivos en el directorio: $directorio"