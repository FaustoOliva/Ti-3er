Algoritmo sin_titulo
	Definir MENSAJE_PEDIR_COLOR Como Caracter
	MENSAJE_PEDIR_COLOR <- 'Ingrese el color de su caballo. Los colores disponibles son rojo, azul y verde'
	Definir MENSAJE_PEDIR_NOMBRE Como Caracter
	MENSAJE_PEDIR_NOMBRE <- 'Ingrese el nombre del caballo por favor.'
	Definir MENSAJE_PEDIR_NUMERO como Cadena
	MENSAJE_PEDIR_NUMERO = "Ingrese el numero del caballo por favor."
	Definir color Como Caracter
	Definir nombre Como Caracter
	Definir numeroCaballo como Entero
	Definir intentosCaballo1 Como Entero
	intentosCaballo1 <- 0
	numeroCaballo = pedirNumero(MENSAJE_PEDIR_NUMERO)
	nombre <- pedirDato(MENSAJE_PEDIR_NOMBRE)
	color <- pedirDato(MENSAJE_PEDIR_COLOR)
	color <- validarColor(color)
	intentosCaballo1 <- calcularIntentos(intentosCaballo1)
	Escribir 'El caballo ", numeroCaballo," llego a la meta en: ',intentosCaballo1,' intentos'
FinAlgoritmo

Funcion dato = pedirDato(mensaje)
	Definir dato Como Caracter
	Escribir mensaje
	Leer dato
FinFuncion

Funcion color = validarColor(color)
	Definir MSJ_ERROR Como Caracter
	MSJ_ERROR <- 'Ha ingresado un color erroneo. Ingrese rojo, azul o verde.'
	Mientras (color!='verde') Y (color!='rojo') Y (color!='azul') Hacer
		color <- pedirDato[MSJ_ERROR]
	FinMientras
FinFuncion

Funcion intentos = calcularIntentos(intentos)
	Definir distanciaRecorrida Como Entero
	distanciaRecorrida <- 0
	Mientras distanciaRecorrida<1000 Hacer
		intentos <- intentos+1
		distanciaRecorrida <- distanciaRecorrida+azar(5)
	FinMientras
FinFuncion

Funcion numero = pedirNumero(mensaje)
	Definir numero como Entero
	Escribir mensaje
	Leer numero
FinFuncion
