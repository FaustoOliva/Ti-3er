Algoritmo sin_titulo
	Definir cantInsc como Entero
	Definir cantAsien como Entero
	Definir sillasFaltantes como Entero
	Escribir " Ingrese la cantidad de inscriptos: "
	Leer cantInsc
	Escribir " Ingrese la cantidad de asientos disponibles: " 
	Leer cantAsien
	Si cantInsc>cantAsien Entonces
		sillasFaltantes = cantInsc - cantAsien
	SiNo
		sillasFaltantes = 0
	FinSi
	Escribir "Faltan: ", sillasFaltantes, " sillas"
FinAlgoritmo
