#!/bin/bash

ciudad=("Valencia" "Valencia" "Valencia" "Valencia" "Valencia" "Valencia" "Valencia" "Barcelona" "Barcelona" "Barcelona" "Barcelona" "Barcelona" "Barcelona" "Barcelona" "Madrid" "Madrid" "Madrid" "Madrid" "Madrid" "Madrid" "Madrid")
mes=("Enero" "Febreo" "Marzo" "Abril" "Mayo" "Junio" "Julio" "Enero" "Febreo" "Marzo" "Abril" "Mayo" "Junio" "Julio" "Enero" "Febreo" "Marzo" "Abril" "Mayo" "Junio" "Julio")
ano=("2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022" "2022")
consumo=(601 515 457 359 340 290 189 678 790 500 678 567 345 200 987 678 567 560 500 390 350)

max=0
indice_max=0
for ((i=0; i<${#consumo[@]}; i++)); do
    if [ ${consumo[$i]} -gt $max ]; then
        max=${consumo[$i]}
        indice_max=$i
    fi
done

min=0
indice_min=0
for ((i=0; i>${#consumo[@]}; i++)); do
    if [ ${consumo[$i]} -gt $min ]; then
        min=${consumo[$i]}
        indice_min=$i
    fi
done

echo "${ciudad[$indice_max]} en ${mes[$indice_max]} del año ${ano[$indice_max]}, es cuando más consumo se ha hecho con ${max}."
echo "${ciudad[$indice_min]} en ${mes[$indice_min]} del año ${ano[$indice_min]}, es cuando más consumo se ha hecho con ${min}."
