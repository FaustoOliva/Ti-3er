Algoritmo sin_titulo
	
	Definir CANT_CARTON, CANT_BOLILLAS, i, num, contador1, contador2, contadorBolillas como Entero
	
	Definir nombre1, nombre2 como Cadena
	
	contador1 = 0
	
	contador2 = 0
	
	contadorBolillas = 0
	i = 0
	CANT_BOLILLAS = 100
	
	CANT_CARTON = 15
	
	Definir vectJugador1, vectJugador2, vectBolillero como Entero
	
	Definir validado Como Logico
	
	validado = verdadero 
	
	Dimension vectJugador1[CANT_CARTON]
	
	Dimension vectBolillero[CANT_BOLILLAS]
	
	Dimension vectJugador2[CANT_CARTON]
	
	nombre1 = ingresarNombre() 
	
	nombre2 = ingresarNombre() 
	
	
	Para i<-0 Hasta CANT_CARTON-1 Con Paso 1 Hacer
		
		Repetir
			
			vectJugador1[i] = 0
			
			num = ingresarNum()
			
			si(i == 0) 
				
				vectJugador1[i] = num 
				
			SiNo
				validado = numValidado(num, i+1, vectJugador1)
				
			FinSi
			
		Hasta Que validado
		
		vectJugador1[i] = num
		
		
		Repetir
			
			vectJugador2[i] = 0
			
			num = ingresarNum()
			
			si(i == 0) 
				vectJugador2[i] = num 
			SiNo
				validado = numValidado(num, i+1, vectJugador2)
			FinSi
			
		Hasta Que validado
		
		vectJugador2[i] = num
		
		Escribir "Vector1: ", vectJugador1[i]
		Escribir "Vector2: ", vectJugador2[i]
		
	Fin Para
	
	mostrarCarton(vectJugador1, CANT_CARTON) 
	
	mostrarCarton(vectJugador2, CANT_CARTON) 	
	
	Mientras ((contador1!=CANT_CARTON) y (contador2!=CANT_CARTON)) Hacer
		
		Repetir
			Si contadorBolillas = 0 Entonces
				vectBolillero[contadorBolillas] = 0
			SiNo
				num = generarNumero()
			Fin Si
			validado = numValidado(num, contadorBolillas, vectBolillero)
		Hasta Que validado 
		
		vectBolillero[contadorBolillas] = num
		
		contadorBolillas = contadorBolillas + 1
		
		Escribir "El numero que salio del bolillero: ", vectBolillero[contadorBolillas-1] 
		
		contador1 = validarCarton(vectJugador1, vectBolillero, CANT_CARTON, contadorBolillas, contador1)
		contador2 = validarCarton(vectJugador2, vectBolillero, CANT_CARTON, contadorBolillas, contador2)
		
	Fin Mientras
	Si contador1 = CANT_CARTON Entonces
		Escribir "El ganador es: ", nombre1
	SiNo
		Escribir "El ganador es: ", nombre2
	Fin Si
	
FinAlgoritmo


Funcion nombre = ingresarNombre() 
	
	
	
	
	
	Definir nombre Como Cadena
	
	
	
	
	
	Escribir "Ingrese el nombre del participante: " 
	
	
	
	
	
	Leer nombre
	
	
	
	
	
FinFuncion





Funcion num = ingresarNum() 
	
	
	
	Definir num Como Entero
	
	Escribir "Ingresa el numero para poner en su carton: "
	Leer num
	
	Mientras ((num < 0) o (num >=99)) Hacer
		
		Escribir "Error al ingresar el numero. Tiene que ser mayor a 0 y menor 99: "
		Leer num
	Fin Mientras
	
	
	
	
	
FinFuncion 







Funcion validado = numValidado(num, tope, vectCarton)
	
	Definir validado Como Logico
	
	Definir i Como Entero
	
	i = 0
	
	validado = Verdadero
	
	Mientras validado y i < tope Hacer
		
		Si num == vectCarton[i] Entonces
			
			validado = falso
			
		SiNo
			
			i = i+ 1
			
		Fin Si
		
	Fin Mientras
	
	
FinFuncion   



Funcion mostrarCarton(vect, tope) 
	
	Definir i Como Entero
	
	Escribir "Su tablero es: " 
	
	
	
	Para i<-0 Hasta tope-1 Con Paso 1 Hacer
		
		Escribir vect[i]
	Fin Para
	
	
FinFuncion


Funcion random = generarNumero() 
	
	Definir random Como Entero
	
	
	random =(azar(98)+1)
	
FinFuncion

Funcion contador = validarCarton(vectJugador, vectBolillero, tope, bolillas, contador) 
	Definir i Como Entero
	
	Para i<-0 Hasta tope-1 Con Paso 1 Hacer
		Si (vectJugador[i] = vectBolillero[bolillas-1]) Entonces
		    contador = contador + 1
		Fin Si
	Fin Para
FinFuncion
