#!/bin/bash

echo "Bienvenido a la aplicación del clima! Ingrese una ciudad para saber el clima"
read ciudadIngresada


while [ -z "$ciudadIngresada" ]; do
	echo "No ingresaste ninguna ciudad, intentalo de nuevo"
	read ciudadIngresada
done

ciudadFormateada=$(echo "$ciudadIngresada" | tr ' ' '%20')
apiKey="cddc8600e1464739a9501058241606"
baseUrl="http://api.weatherapi.com/v1/current.json"
response=$(curl -s "$baseUrl?key=$apiKey&q=$ciudadFormateada")
errorResponse=$(echo "$response" | jq -r '.error.code')

if [ "$errorResponse" = "null" ]; then 
		horaLocal=$(echo $response | jq -r '.location.localtime')
		temperatura=$(echo $response | jq -r '.current.temp_c')
		humedad=$(echo $response | jq -r '.current.humidity')
		viento=$(echo $response | jq -r '.current.wind_kph')
		direccionViento=$(echo $response | jq -r '.current.wind_dir')
		presionAtmosferica=$(echo $response | jq -r '.current.pressure_mb')
		uv=$(echo $response | jq -r '.current.uv')

		echo "La hora en $ciudadIngresada es $horaLocal"
		echo "Temperatura: $temperatura°"
		echo "Humedad: $humedad%"
		echo "Velocidad del viento: $viento(Km/h) soplando desde el $direccionViento"
		echo "Presión atmosférica: $presionAtmosferica(hPa)"
		echo "Indice UV: $uv"
		echo "Muchas gracias por su consulta, que tenga un buen día :)"
	elif [ $errorResponse -eq 1006 ]; then 
		echo "La ciudad ingresada no existe, lo sentimos mucho"
	else
		echo "Hemos tenido un error imprevisto, intentalo más tarde"
fi

