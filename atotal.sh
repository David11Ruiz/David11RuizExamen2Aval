#!/bin/bash

ciudad=("Valencia" "Valencia" "Valencia" "Valencia" "Valencia" "Valencia" "Valencia" "Barcelona" "Barcelona" "Barcelona" "Barcelona" "Barcelona" "Barcelona" "Barcelona" "Madrid" "Madrid" "Madrid" "Madrid" "Madrid" "Madrid" "Madrid")
mes=("Enero" "Febreo" "Marzo" "Abril" "Mayo" "Junio" "Julio" "Enero" "Febreo" "Marzo" "Abril" "Mayo" "Junio" "Julio" "Enero" "Febreo" "Marzo" "Abril" "Mayo" "Junio" "Julio")
ano=("2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022")
consumo=(601 515 457 359 340 290 189 678 790 500 678 567 345 200 987 678 567 560 500 390 350)

declare -A consumototal

for ((i=0; i<${#ciudad[@]}; i++)); do
    ciudades=${ciudad[$i]}
    puntos_equipo=${consumototal[$ciudades]}
    (( consumototal [$ciudades] += ${consumo[$i]} ))
done

read -p "Dime una ciudad: " ciudad

echo "La ciudad que me has dicho tiene un total de $consumototal"