Algoritmo sin_titulo
	Definir codigoCliente Como Caracter
	Definir duracionLlamada Como Entero
	Definir abono Como Entero
	Definir llamadasMenor6 Como Entero
	Definir duracionMayor Como Entero
	Definir codigoClienteMayor Como Cadena
	Definir importe Como Real
	Definir importeTotal1 Como Entero
	Definir importeTotal2 Como Real
	Definir importeTotal3 Como Entero
	codigoCliente <- pedirCodigo()
	Mientras codigoCliente!='*' Hacer
		duracionLlamada <- pedirMinutos()
		abono <- conseguirAbono()
		Escribir "Su abono es nr: ", abono
		Si duracionLlamada < 6 Entonces
			llamadasMenor6 = llamadasMenor6 + 1
		Fin Si
		Si abono=1 Entonces
			importe = calcularAbono1(duracionLlamada)
			importeTotal1 = importeTotal1 + importe
		SiNo Si abono=2 Entonces
				importe = calcularAbono2(duracionLlamada)
				importeTotal2 = importeTotal2 + importe
			Sino 
				importe = calcularAbono3(duracionLlamada)
				importeTotal3 = importeTotal3 + importe
			Fin Si
		Fin Si
		Si duracionLlamada > duracionMayor Entonces
			duracionMayor = duracionLlamada
			codigoClienteMayor = codigoCliente
		Fin Si
		mostrarImporteLlamada(importe)
		codigoCliente <- pedirCodigo()
	FinMientras
	mostrarImportes1(importeTotal1)
	mostrarImportes2(importeTotal2)
	mostrarImportes3(importeTotal3)
	mostrarClienteMayor(codigoClienteMayor)
	mostrarLlamadasmenor6(llamadasMenor6)
FinAlgoritmo

Funcion abono = conseguirAbono()
	Definir abono Como Entero
	abono <- azar(3)+1
FinFuncion

Funcion duracion = pedirMinutos()
	Definir duracion Como Entero
	Escribir 'Ingrese la cantidad de minutos de su llamada: '
	Leer duracion
FinFuncion

Funcion codigo = pedirCodigo()
	Definir codigo Como Caracter
	Escribir 'Ingrese su codigo de telefonia movil: '
	Leer codigo
	Mientras (longitud(codigo)!=5) Y (codigo!='*') Hacer
		Escribir 'Ingreso un codigo menor o mayor a 5 caracteres. Ingresele de vuelta: '
		Leer codigo
	FinMientras
FinFuncion

Funcion importe = calcularAbono1(duracion)
	Definir importe Como Entero
	importe <- duracion*2
FinFuncion

Funcion importe = calcularAbono2(duracion)
	Definir importe Como Real
	Si duracion<=5 Entonces
		importe <- duracion*2
	SiNo
		importe <- duracion*1.5
	FinSi
FinFuncion

Funcion importe = calcularAbono3(duracion)
	Definir importe Como Entero
	Si duracion<=10 Entonces
		importe=duracion*1
	SiNo
		importe=10
	Fin Si
FinFuncion

Funcion mostrarImporteLlamada(importe)
	Escribir "El valor de la llamada es de: $",importe
FinFuncion

Funcion mostrarImportes1(importes)
	Escribir "El importe total del abono 1 es de: $", importes
FinFuncion

Funcion mostrarImportes2(importes)
	Escribir "El importe total del abono 2 es de: $", importes
FinFuncion

Funcion mostrarImportes3(importes)
	Escribir "El importe total del abono 3 es de: $", importes
FinFuncion

Funcion mostrarClienteMayor(codigo)
	Escribir "El codigo de cliente ue realizo la llamda mas larga es: ", codigo
FinFuncion

Funcion mostrarLlamadasmenor6(cantLlamadas)
	Escribir "La cantidad de llamadas menores a 6 minutos es: ",cantLlamadas 
FinFuncion
	