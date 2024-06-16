#!/bin/bash

echo "¡Bienvenido al adivinador de números! Tiene 3 chances para adivinar un número entre el 1 y el 100, ingrese su primer intento:"
read numeroIngresado

numeroRandom=$((1 + RANDOM % 100))
intentos=0
adivinarNumero=false

while [ $intentos -lt 2 ];do

	if [ $numeroIngresado -eq $numeroRandom ]; then
		adivinarNumero=true
		intentos=2
	else
		if [ $numeroIngresado -lt $numeroRandom ]; then
			echo "El número no es igual, intentá con un número más alto que $numeroIngresado"
			read numeroIngresado
		else 
			echo "El número no es igual, intentá con un número menor a $numeroIngresado"
			read numeroIngresado
		fi
		
		intentos=$((intentos + 1))
	fi
done

if [ "$adivinarNumero" = true ]; then 
	echo "Felicitaciones, encontró el número"
else 
	echo "Lo sentimos mucho, pero el número era $numeroRandom"
fi
