#!/bin/bash

read -p "Introduce el nombre del modulo:" nombreModulo
if lsmod | grep $nombreModulo ; then
echo "no Esta Cargado"
fi

