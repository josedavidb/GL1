#!/bin/bash

read -p "Ingresa la Sala a la que quieres hacer ping: " sala
if [ "$sala" == "A" ]
then
 echo "Seleccionaste la sala A"
 echo "Sala A" >> log.txt
 echo "Haciendo ping"
 for i in {2..22}
  do
   ping -c 1 159.90.9.$i &>/dev/null
   if [ $? -eq 0 ]
   then
    echo " `date`  La maquina $i SI tiene internet"
    echo " `date`  La maquina $i SI tiene internet" >> log.txt
   else
    echo " `date`  La maquina $i NO tiene internet"
    echo " `date` La maquina $i NO tiene internet" >> log.txt
   fi
  done
elif [ "$sala" == "F" ]
then 
 echo "Seleccionaste la sala F"
 echo "Sala F" >> log.txt
 for i in {22..40}
  do
   ping -c 1 159.90.9.$i &>/dev/null
   if [ $? -eq 0 ]
    then
      echo " `date`  La maquina $i SI tiene internet"
      echo " `date`  La maquina $i SI tiene internet" >> log.txt
    else
     echo " `date`  La maquina $i NO tiene internet"
     echo " `date` La maquina $i NO tiene internet" >> log.txt
   fi
  done
elif [ "$sala" == "E" ]
then
 echo "Seleccionaste la sala E"
 echo "Sala E" >> log.txt
 for i in {39..60}
  do
   ping -c 1 159.90.9.$i &> /dev/null
   if [ $? -eq 0 ]
    then
    echo " `date`  La maquina $i SI tiene internet"
    echo " `date`  La maquina $i SI tiene internet" >> log.txt
    else
     echo " `date` La maquina $i NO tiene internet"
     echo " `date`  La maquina $i NO tiene internet" >> log.txt
   fi
  done
else	
 echo "No seleccionaste ninguna sala existente. Se va a cerrar el proceso"
fi
