#!/bin/bash

# En este ejemplo, se espera que se ingresen tres argumentos al ejecutar el script: <número1> <operador> <número2>. 
# El script verifica si se han proporcionado exactamente tres argumentos. Si no se cumple esta condición, muestra un mensaje de uso y sale del script.
# Luego, se asignan los argumentos a las variables correspondientes ($1 para el primer argumento, $2 para el segundo argumento y $3 para el tercer argumento).

 # El comando echo "scale=2; $numero1 / $numero2" | bc realiza la división con una precisión decimal de 2 (puedes ajustar el número 2 según tus necesidades).



# Verificar el número de argumentos
if [ $# -ne 3 ]; then
    echo "Uso: $0 <número1> <operador> <número2>"
    exit 1
fi

# Obtener los argumentos
numero1=$1
operador=$2
numero2=$3

# Realizar la operación según el operador ingresado
resultado=0

if [ "$operador" == "+" ]; then
    resultado=$(($numero1 + $numero2))
elif [ "$operador" == "-" ]; then
    resultado=$(($numero1 - $numero2))
elif [ "$operador" == "x" ]; then
    resultado=$(($numero1 * $numero2))
elif [ "$operador" == "/" ]; then
    resultado=$(echo "scale=2; $numero1 / $numero2" | bc)
else
    echo "Operador inválido: $operador"
    exit 1
fi

# Mostrar el resultado
echo "El resultado de $numero1 $operador $numero2 es: $resultado"