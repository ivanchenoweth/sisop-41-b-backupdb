#!/bin/bash

# Ejemplo que utiliza argumentos y la utilidad tar para comprimir archivos de un directorio específico
# Para descomprimir el archivo archivos_2023-08-11.tar.gz, puedes utilizar el siguiente comando:
# tar -xzf archivos_2023-08-11.tar.gz


# Verificar el número de argumentos
if [ $# -ne 1 ]; then
    echo "Uso: $0 <directorio>"
    exit 1
fi

# Obtener el directorio de entrada
directorio=$1

# Verificar si el directorio existe
if [ ! -d "$directorio" ]; then
    echo "El directorio '$directorio' no existe."
    exit 1
fi

# Obtener el nombre base del directorio
nombre_base=$(basename "$directorio")

# Crear el archivo comprimido
archivo_comprimido="$nombre_base.tar.gz"
tar -czf "$archivo_comprimido" "$directorio"

echo "Se ha creado el archivo comprimido: $archivo_comprimido"