Algoritmo Triangulo
	Definir ladoa Como Entero
	Definir ladob Como Entero
	Definir ladoc Como Entero
	Definir tipoTriangulo Como Caracter
	ladoa <- pedirLado('Ingrese el lado A del triangulo')
	ladob <- pedirLado('Ingrese el lado B del triangulo')
	ladoc <- pedirLado('Ingrese el lado C del triangulo')
	Definir validez Como Logico
	validez <- validoFigura(ladoa,ladob,ladoc)
	Si (validez==verdadero) Entonces
		tipoTriangulo <- obtenerTipo(ladoa,ladob,ladoc)
		mostrarTipo(tipoTriangulo)
	SiNo
		Escribir "Los lados no son validos"
	FinSi
FinAlgoritmo

Funcion medida = pedirLado(mensaje)
	Definir medida Como Entero
	Escribir mensaje
	Leer medida
FinFuncion

Funcion valido = validoFigura(ladoa,ladob,ladoc)
	Definir valido Como Logico
	Si ((ladoa>ladob+ladoc) O (ladob>ladoa+ladoc) O (ladoc>ladoa+ladob)) Entonces
		valido <- falso
	SiNo
		valido <- verdadero
	FinSi
FinFuncion

Funcion tipo = obtenerTipo(ladoa,ladob,ladoc)
	Definir tipo Como Caracter
	Si ((ladoa=ladob) Y (ladob=ladoc)) Entonces
		tipo <- 'Equilatero'
	SiNo
		Si ((ladoa=ladoc) O (ladoa=ladob) O (ladob=ladoc)) Entonces
			tipo <- 'Isosceles'
		SiNo
			tipo <- 'Escaleno'
		FinSi
	FinSi
FinFuncion

Funcion mostrarTipo(tipo)
	Escribir 'El tipo del triangulo es: ',tipo
FinFuncion
