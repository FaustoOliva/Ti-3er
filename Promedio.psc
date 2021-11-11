Algoritmo sin_titulo
	Definir Promedio como Real
	Promedio = calcularPromedio()
	mostrarPromedio(Promedio)
FinAlgoritmo

Funcion Promedio = calcularPromedio()
	Definir Promedio como Real
	Definir CantNotas como Real
	Definir Num como Real
	CantNotas = 0
	Promedio = 0
	Mientras Num!=-1 Hacer
		Num = pedirNota()
		CantNotas = CantNotas+1
		Si Num==-1 Entonces
			CantNotas = CantNotas -1
		Fin Si
		Promedio = Promedio + Num /CantNotas
	FinMientras
FinFuncion

Funcion Num = pedirNota()
	Definir MENSAJE como Cadena
	Definir Num como Real
	MENSAJE = "Ingrese sus notas correspondientes. Ingrese -1, cuando haya terminado: "
	Escribir MENSAJE
	Leer Num
FinFuncion

Funcion mostrarPromedio(Promedio)
	Definir MENSAJE como Cadena
	MENSAJE = "Su promedio de las notas es: "
	Escribir MENSAJE, Promedio
FinFuncion
