Algoritmo sin_titulo
	Definir vectPeliculas como Cadena
	Definir cantPeliculas como Entero
	cantPeliculas = 5
	Dimension vectPeliculas[cantPeliculas]
	ingresarPeliculas(vectPeliculas, cantPeliculas)
	mostrarPeliculas(vectPeliculas, cantPeliculas)
	
	
FinAlgoritmo

Funcion ingresarPeliculas(vectPeliculas, cantPeliculas)
	Definir cadaPeli Como Entero
	Para cadaPeli<-0 Hasta cantPeliculas - 1 Hacer
		Escribir "Ingresa una pelicula: "
		Leer vectPeliculas[cadaPeli]
	FinPara
FinFuncion
Funcion mostrarPeliculas(vectPeliculas, cantPeliculas)
	Definir mostrando Como Entero
	Para mostrando<-0 Hasta cantPeliculas - 1 Hacer
		Escribir "La pelicula: ", vectPeliculas[mostrando]
	FinPara
FinFuncion
	