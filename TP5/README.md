# Trabajo Práctico N°5

## Buscador de Numero Random

<p>Este programa de terminal está construido utilizando bash scripting</p>
<p>En primer lugar, la aplicación pone en pantalla un mensaje para explicar de qué se trata la aplicación y luego pide ingresar un número al usuario</p>
<p>En segunda instancia, se genera un número de manera aleatoria creando la variable numeroRandom. El resultado de la misma será comparado con el número ingresado para saber si el usuario puede adivinarlo</p>
<p>Por otro lado, el programa brinda dos pistas extras para que el usuario tenga mas posibilidades de adivinar</p>
<p>Finalmente, hay una variable booleana adivinarNumero que está inicializada con el valor false y cambia a true en caso de que se adivine el número. De esta manera, se puede comprobar si el usuario logró ganar o no el juego</p>

## Aplicación de Clima

<p>Este programa permite consultar un servicio de API para obtener datos climatológicos de una determinada ciudad</p>
<p>Al igual que el ejemplo anterior, también está construido con Bash y utiliza otras herramientas como curl y jq para manejar los datos obtenidos</p>
<p>En primer lugar, el programa le pide al usuario que ingrese una ciudad para consultar su información. Este dato tiene una primera verificación para evitar el ingreso de valores en blanco</p>
<p>En segunda instancia, también hay dos variables importante: apiKey, la cual almacena la información del servicio que consultamos y, la variable baseUrl, la cual almacena la estructura básica que utilizaremos para nuestras consultas</p>
<p>Por otro lado, la variable response utiliza curl para hacer consultas y almacenar el resultado de las mismas. Esta información sufre dos procesos posteriores:</p>
<p>Comprobación de error: la variable errorResponse nos permite saber si hay algún tipo de error en el pedido de información. Esto es útil para evitar que el usuario ingrese una ciudad que no existe</p>
<p>Consultas de datos específicos: una vez comprobado que la ciudad existe, filtramos la información utilizando jq y almacenamos esa información en variables específicas que luego mostramos por pantalla</p>

## Posibles mejoras y nuevas funcionalidades

<p>La aplicación de clima podría incluir en desarrollos posteriores nuevas características como por ejemplo: interfaz gráfica más amigable para el usuario común, la posibilidad de crear alertas meteorológicas a partir de los datos obtenidos, brindar consejos cotidianos según el clima, entre otras opciones</p>
<p>Espero que les haya gustado mi propuesta para el trabajo práctico y quedo a disposición para recibir sugerencias, cambios y ajustes que mejoren la funcionalidad del código. Gracias</p>
