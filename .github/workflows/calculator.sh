#!/bin/bash

# calculator.sh
# Este script realiza operaciones matemáticas simples.

# Función para sumar dos números
function add() {
    echo "Suma: $(($1 + $2))"
}

# Función para restar dos números
function subtract() {
    echo "Resta: $(($1 - $2))"
}

# Función para multiplicar dos números
function multiply() {
    echo "Multiplicación: $(($1 * $2))"
}

# Función para dividir dos números
function divide() {
    if [ $2 -ne 0 ]; then
        echo "División: $(($1 / $2))"
    else
        echo "Error: División por cero"
    fi
}

# Comprobamos si se proporcionan suficientes argumentos
if [ $# -lt 3 ]; then
    echo "Uso: $0 num1 num2 operación"
    echo "Operaciones disponibles: add, subtract, multiply, divide"
    exit 1
fi

# Obtenemos los números de entrada y la operación
num1=$1
num2=$2
operation=$3

# Llamamos a la función correspondiente según la operación elegida
case $operation in
    add)
        add $num1 $num2
        ;;
    subtract)
        subtract $num1 $num2
        ;;
    multiply)
        multiply $num1 $num2
        ;;
    divide)
        divide $num1 $num2
        ;;
    *)
        echo "Operación no válida. Usa: add, subtract, multiply, divide"
        exit 1
        ;;
esac
