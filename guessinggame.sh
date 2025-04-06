#!/bin/bash

# le solicitamos a el usuario que adivine cuantos archivos hay
adivina(){
  read -p "[+] Ingrese cuantos archivos que que se encuentran el directorio actual -->  " archi
}
# creamos una variable para contar los archivos en el directorio
cont_archi=$(ls -1 | wc -l)

# llamamos a la funcion para solicitar a el usuario
adivina

# utilizamos un bucle while para que se repita hasta que el usuario adivine cuantos archivos hay
while [[ "$archi" -ne "$cont_archi" ]]; do
    if [[ "$archi" -lt "$cont_archi" ]]; then
        echo "[!] no un poco mas alto"

    else
        echo "[!] no un poco mas abajo"

    fi
    read -p "[+] vuelva a intentarlo -->  " archi
done

echo "! Bien hecho, Adivinaste correctamente"


