Algoritmo Triangulo
	Definir ladoa Como Entero
	Definir ladob Como Entero
	Definir ladoc Como Entero
	Definir ladoa2 Como Entero
	Definir ladob2 Como Entero
	Definir ladoc2 Como Entero
	Definir tipoTriangulo Como Caracter
	Definir tipoTriangulo2 Como Caracter
	ladoa <- pedirLado('Ingrese el lado A de la percha')
	ladob <- pedirLado('Ingrese el lado B de la percha')
	ladoc <- pedirLado('Ingrese el lado C de la percha')
	ladoa2 <- pedirLado('Ingrese el lado A de la segunda percha')
	ladob2 <- pedirLado('Ingrese el lado B de la segunda percha')
	ladoc2 <- pedirLado('Ingrese el lado C de la segunda percha')
	Definir validez Como Logico
	Definir validez2 Como Logico
	validez <- validoFigura(ladoa,ladob,ladoc)
	validez2 <- validoFigura(ladoa2,ladob2,ladoc2)
	Definir igualdad como Cadena
	Si (validez==verdadero) Entonces
		tipoTriangulo <- obtenerTipo(ladoa,ladob,ladoc)
		mostrarTipo(tipoTriangulo)
	SiNo
		Escribir 'Los lados no son validos'
	FinSi
	Si (validez2==verdadero) Entonces
		tipoTriangulo2 <- obtenerTipo(ladoa2,ladob2,ladoc2)
		igualdad = igualdadFiguras(tipoTriangulo, tipoTriangulo2)
		mostrarIgualdad(igualdad)
	SiNo
		Escribir 'Los lados de la segunda percha no son validos'
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
	Escribir 'El tipo de la primera percha es: ',tipo
FinFuncion

Funcion igualdad = igualdadFiguras(tipo1, tipo2)
	Definir igualdad como Cadena
	Si (tipo1 == tipo2) Entonces
		igualdad = "El tipo de la segunda percha es la misma que la primera"
	FinSi
FinFuncion

Funcion mostrarIgualdad(igual)
	Escribir igual
FinFuncion
