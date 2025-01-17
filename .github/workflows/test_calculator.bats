#!/usr/bin/env bats

# test_calculator.bats
# Este archivo contiene pruebas unitarias para el script calculator.sh.

# Cargamos el script que queremos probar
load 'test_helper'

# Prueba para la suma
@test "Suma de 2 y 3" {
    result="$(bash calculator.sh 2 3 add)"
    [ "$result" = "Suma: 5" ]
}

# Prueba para la resta
@test "Resta de 5 y 3" {
    result="$(bash calculator.sh 5 3 subtract)"
    [ "$result" = "Resta: 2" ]
}

# Prueba para la multiplicación
@test "Multiplicación de 4 y 5" {
    result="$(bash calculator.sh 4 5 multiply)"
    [ "$result" = "Multiplicación: 20" ]
}

# Prueba para la división
@test "División de 10 y 2" {
    result="$(bash calculator.sh 10 2 divide)"
    [ "$result" = "División: 5" ]
}

# Prueba para la división por cero
@test "División por cero" {
    result="$(bash calculator.sh 10 0 divide)"
    [ "$result" = "Error: División por cero" ]
}
