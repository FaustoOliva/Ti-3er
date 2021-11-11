Algoritmo sin_titulo
	Definir radio Como Real
	Definir tipoAlfajor Como Caracter
	Definir precioVenta Como Real
	Definir MENSAJE_PEDIR_RADIO Como Caracter
	MENSAJE_PEDIR_RADIO <- 'Ingrese el radio del alfajor: '
	Definir MENSAJE_TIPO Como Caracter
	MENSAJE_TIPO <- 'Ingrese el tipo de alfajor(SIMPLE, DOBLE O TRIPLE): '
	Definir MENSAJE_PRECIO Como Caracter
	MENSAJE_PRECIO <- 'El precio del alfajor es: $'
	radio <- pedirRadio(MENSAJE_PEDIR_RADIO)
	radio <- validarRadio(radio)
	tipoAlfajor <- pedirTipo(MENSAJE_TIPO)
	tipoAlfajor = validarTipo(tipoAlfajor)
	precioVenta <- calcularPrecio(radio,tipoAlfajor)
	Escribir MENSAJE_PRECIO,precioVenta
FinAlgoritmo

Funcion radio = pedirRadio(mensaje)
	Definir radio Como Real
	Escribir mensaje
	Leer radio
FinFuncion

Funcion tipo = pedirTipo(mensaje)
	Definir tipo Como Caracter
	Escribir mensaje
	Leer tipo
FinFuncion

Funcion radio = validarRadio(radio)
	Definir MENSAJE_ERROR Como Caracter
	MENSAJE_ERROR <- 'Ingreso un radio invalido. Ingreselo de vuelta'
	Definir RANGO_MINIMO Como Real
	Definir RANGO_MAXIMO Como Real
	RANGO_MINIMO <- 3
	RANGO_MAXIMO <- 5
	Mientras radio<RANGO_MINIMO O radio>RANGO_MAXIMO Hacer
		radio <- pedirRadio(MENSAJE_ERROR)
	FinMientras
FinFuncion

Funcion precio = calcularPrecio(radio,tipo)
	Definir precio Como Real
	Definir OPERANDO Como Real
	Definir diametro Como Real
	OPERANDO <- 5
	Definir VALOR_FIJO_S Como Real
	VALOR_FIJO_S <- 10
	Definir VALOR_FIJO_D Como Real
	VALOR_FIJO_D <- 15
	Definir VALOR_FIJO_T Como Real
	VALOR_FIJO_T <- 20
	diametro <- radio*2
	Si tipo='SIMPLE' Entonces
		precio <- VALOR_FIJO_S+diametro*OPERANDO
	SiNo
		Si tipo='DOBLE' Entonces
			precio <- VALOR_FIJO_D+diametro*OPERANDO
		SiNo
			Si tipo='TRIPLE' Entonces
				precio <- VALOR_FIJO_T+diametro*OPERANDO
			FinSi
		FinSi
	FinSi
FinFuncion

Funcion tipo = validarTipo(tipo)
	Definir MENSAJE_ERROR como Cadena
	MENSAJE_ERROR = "Ingresaste un tipo que no corresponde. Ingrese el correcto"
	Mientras ((tipo != 'SIMPLE') Y (tipo != 'DOBLE') Y (tipo != 'TRIPLE')) Hacer
		tipo = pedirTipo(MENSAJE_ERROR)
	FinMientras
FinFuncion
