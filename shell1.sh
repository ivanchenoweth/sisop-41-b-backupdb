#!/bin/bash

echo "Ejemplo: Contar hasta un número ingresado por el usuario y verificar si es par o impar";

# En este ejemplo, se le pide al usuario que ingrese un número. 
# Luego, se utiliza un ciclo while para contar desde 1 hasta el número ingresado. 
# Dentro del ciclo, se utiliza una estructura if para verificar si el contador actual es par o impar. 
# Si el contador es divisible por 2 ($((contador % 2)) -eq 0), 
#      se muestra un mensaje indicando que es par; de lo contrario, se muestra un mensaje indicando que es impar.


echo "Ingrese un número:"
read numero

contador=1

while [ $contador -le $numero ]
do
    if [ $((contador % 2)) -eq 0 ]; then
        echo "$contador es par"
    else
        echo "$contador es impar"
    fi

    contador=$((contador + 1))
done