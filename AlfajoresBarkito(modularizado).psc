Algoritmo sin_titulo
	Definir radio Como Real
	Definir diametro Como Real
	Definir tipoAlfajor Como Caracter
	Definir estaEnRango Como Logico
	Definir precioVenta Como Real
	Definir VALOR_FIJO_S Como Real
	VALOR_FIJO_S <- 10
	Definir VALOR_FIJO_D Como Real
	VALOR_FIJO_D <- 15
	Definir VALOR_FIJO_T Como Real
	VALOR_FIJO_T <- 20
	Definir MULTIPLICACION Como Real
	MULTIPLICACION <- 5
	Definir MENSAJE_PEDIR_RADIO Como Caracter
	MENSAJE_PEDIR_RADIO <- 'Ingrese el radio del alfajor: '
	Definir MENSAJE_TIPO Como Caracter
	MENSAJE_TIPO <- 'Ingrese el tipo de alfajor(SIMPLE, DOBLE O TRIPLE): '
	Definir MENSAJE_DESECHADO Como Caracter
	MENSAJE_DESECHADO <- 'La medida del radio no es aceptada. ALFAJOR DESECHADO.'
	Definir MENSAJE_TIPO_ERROR Como Caracter
	MENSAJE_TIPO_ERROR <- 'ERROR DE TIPO DE ALFAJOR.'
	Definir MENSAJE_PRECIO Como Caracter
	MENSAJE_PRECIO <- 'El precio del alfajor es: $'
	radio <- pedirRadio(MENSAJE_PEDIR_RADIO)
	estaEnRango <- validarRadio(radio)
	Si estaEnRango Entonces
		tipoAlfajor <- pedirTipo(MENSAJE_TIPO)
		Si tipoAlfajor='SIMPLE' O tipoAlfajor='DOBLE' O tipoAlfajor='TRIPLE' Entonces
			precioVenta <- calcularPrecio(radio,tipoAlfajor)
			Escribir MENSAJE_PRECIO,precioVenta
		SiNo
			Escribir MENSAJE_TIPO_ERROR
		FinSi
	SiNo
		Escribir MENSAJE_DESECHADO
	FinSi
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

Funcion validez = validarRadio(radio)
	Definir validez Como Logico
	Definir RANGO_MINIMO Como Real
	Definir RANGO_MAIMO Como Real
	RANGO_MINIMO <- 3
	RANGO_MAXIMO <- 5
	Si radio>=RANGO_MINIMO Y radio<=RANGO_MAXIMO Entonces
		validez <- verdadero
	SiNo
		validez <- falso
	FinSi
FinFuncion

Funcion precio = calcularPrecio(radio,tipo)
	Definir precio Como Real
	Definir OPERANDO Como Real
	Definir diametro como Real
	OPERANDO <- 5
	Definir VALOR_FIJO_S Como Real
	VALOR_FIJO_S <- 10
	Definir VALOR_FIJO_D Como Real
	VALOR_FIJO_D <- 15
	Definir VALOR_FIJO_T Como Real
	VALOR_FIJO_T <- 20
	diametro = radio*2
	Si tipo = "SIMPLE" Entonces
		precio = VALOR_FIJO_S + diametro * OPERANDO
	SiNo
		Si tipo = "DOBLE" Entonces
			precio = VALOR_FIJO_D + diametro*OPERANDO
		SiNo
			Si tipo = "TRIPLE" Entonces
				precio = VALOR_FIJO_T + diametro*OPERANDO
			FinSi
		FinSi
	FinSi
FinFuncion
