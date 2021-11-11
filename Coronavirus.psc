Algoritmo sin_titulo
	Definir fiebre como Cadena
	Definir faltaAire como Cadena
	Definir ojosIrritados como Cadena
	Escribir "Hola! Esto es una serie de preguntas para saber si tiene Coranavirus."
	Escribir "Tienes fiebre? "
	Leer fiebre
	Si (fiebre == "Si") Entonces
		Escribir "Experimenta falta de aire?"
		Leer faltaAire
		Si (faltaAire == "Si") Entonces
			Escribir "Si ademas tiene tos, fatiga. Puede tener coronavirus."
		SiNo
			Escribir "Puede tener gripe."
		FinSi
	SiNo
		Escribir "Tiene los ojos irritados?"
		Leer ojosIrritados
		Si (ojosIrritados == "Si") Entonces
			Escribir "Si ademas tiene estornudos, goteo nasal. Puede tener alergia"
		SiNo
			Escribir "Si tiene una molestia leve en el pecho, estornudos. Puede tener un resfriado comun."
		FinSi
	FinSi
FinAlgoritmo
