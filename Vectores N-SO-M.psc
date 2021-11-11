Algoritmo sin_titulo
	Definir TOPE, memoria, memoriaMayor como entero
	TOPE = 5
	memoriaMayor = 0
	Definir FIN_DE_DATOS Como Entero
	FIN_DE_DATOS = 7
	Definir vectNombres, sistOp, nombre como Cadena
	Definir posicion Como Real
	posicion = -1
	Dimension vectNombres[TOPE]
	Definir vectSistemaOp como Cadena
	Dimension vectSistemaOp[TOPE]
	Definir vectMemoria como entero
	Dimension vectMemoria[TOPE]
	vectNombres[0] = "Gabriel"
	vectNombres[1] = "Ivan"
	vectNombres[2] = "Nery"
	vectNombres[3] = "Lisandro"
	vectNombres[4] = "Eugenio"
	Repetir
		posicion = ingresarNombreValido(TOPE, vectNombres)
	Hasta Que posicion != -1
	Mientras posicion != FIN_DE_DATOS  Hacer
		
		sistOp = pedirSistOp(vectSistemaOp, posicion)
		memoria = pedirMemoria(vectMemoria, posicion)
		Si memoria > memoriaMayor Entonces
			memoriaMayor = memoria
		Fin Si
		mostrarConfiguracion(vectNombres, vectSistemaOp, vectMemoria, posicion)
		Repetir
			posicion = ingresarNombreValido(TOPE, vectNombres)
		Hasta Que posicion != -1
	Fin Mientras
	mostrarMayorMemoria(memoriaMayor)
FinAlgoritmo

Funcion posicion=ingresarNombreValido(TOPE, vectNombres)
	Definir nombre como Cadena 
	Definir posicion, i Como Real
	i = 0
	posicion = -1
	Escribir "Ingrese su nombre: "
	Leer nombre
	si(nombre == "FIN")
		posicion = 7
		
	SiNo
		
		Mientras (i < TOPE && posicion == -1) Hacer
			si(vectNombres[i] == nombre)
				posicion = i
			SiNo
				i = i +1
			FinSi
		Fin Mientras
	FinSi
FinFuncion

Funcion sistOp = pedirSistOp(vectSistemaOp, i)
	Definir sistOp como Cadena
	escribir "Ingrese su sistema operativo por favor: "
	leer sistOp
	vectSistemaOp[i] = sistOp
FinFuncion

Funcion memoria = pedirMemoria(vectMemoria, i)
	Definir memoria Como Entero
	Escribir "Ingrese la memoria que tiene en su computador por favor: "
	leer memoria
	vectMemoria[i] = memoria
FinFuncion

Funcion  mostrarConfiguracion(vectNombres, vectSistemaOp, vectMemoria, i)
	Escribir "La configuracion de: ", vectNombres[i] " tiene de sistema operativo: ", vectSistemaOp[i] " y memoria: ", vectMemoria[i] 
FinFuncion

Funcion  mostrarMayorMemoria(memoria)
	Escribir "La memoria mayor de las configuraciones es: ", memoria
FinFuncion
	