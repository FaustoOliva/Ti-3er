Algoritmo sin_titulo
	
	Definir CUIT, codigoNacional, PEDIR_CUIT, PEDIR_NACIONALIDAD como Cadena
	
	
	PEDIR_CUIT ="Ingrese su CUIT, recuerde que son 11 caracteres: "
	
	
	PEDIR_NACIONALIDAD ="Ingrese su codigo de nacionalidad, recuerde que son 5 caracteres: "
	
	
	Definir añosResidencia, promedioEdadNegados, promedioAprobado Como Real
	
	
	Definir edad, LONGITUD_MINIMA_11, LONGITUD_MINIMA_5, solicitudesAceptadas, solicitudesDenegadas, totalSolicitudes, edadDeLosNegados Como Entero
	
	
	LONGITUD_MINIMA_11 = 11
	
	
	LONGITUD_MINIMA_5 = 5
	
	
	solicitudesAceptadas = 0
	
	
	solicitudesDenegadas = 0
	
	
	totalSolicitudes = 0
	
	
	Definir monotributo Como Caracter
	
	
	Definir monotributoValido, edadValida, añosValido, aprobado como Logico
	
	
	CUIT =pedirCadena(PEDIR_CUIT, LONGITUD_MINIMA_11)
	
	
	Mientras CUIT != "999" Hacer
		
		totalSolicitudes = totalSolicitudes + 1
		
		
		monotributo = getCateg(CUIT)
		
		
		monotributoValido=validarMonotributo(monotributo)
		
		
		preAprobado=Afip(CUIT)
		
		
		preAprobado = Verdadero
		
		
		codigoNacional=pedirCadena(PEDIR_NACIONALIDAD, LONGITUD_MINIMA_5)
		
		
		añosResidencia=pedirReal()
		
		
		añosValido=validarNacionalidad(codigoNacional, añosResidencia)
		
		
		edad=pedirEntero()
		
		
		edadValida=validarEdad(edad)
		
		
		aprobado=validarSolicitud(monotributoValido, preAprobado, añosValido, edadValida)
		
		
		
		Si aprobado = Verdadero Entonces
			
			
			solicitudesAceptadas = solicitudesAceptadas + 1
			
			Escribir "Su solicitud fue aprobada, cumple con todo."
			
			
		SiNo
			
			edadDeLosNegados = edadDeLosNegados + edad
			
			
			solicitudesDenegadas = solicitudesDenegadas + 1
			
			
			Escribir "Su solicitud es rechazada,no cumple con un requerimiento."
			
		Fin Si
		
		CUIT=pedirCadena(PEDIR_CUIT, LONGITUD_MINIMA_11)
		
		
		
		
	Fin Mientras
	
	Si totalSolicitudes != 0 Entonces
		promedioAprobado=calcularPromedio(totalSolicitudes, solicitudesAceptadas)
		Escribir "El promedio con solicitudes aceptadas con el total es: ",promedioAprobado
		
	SiNo
		Escribir "No se ingresó ninguna solicitud."
	Fin Si
	
	Si solicitudesDenegadas != 0 Entonces
		promedioEdadNegados =calcularPromedioEdad(edadDeLosNegados,solicitudesDenegadas)
		Escribir "El promedio de las edades de los negados es: ",promedioEdadNegados
	SiNo
		Escribir "No se ingresó ninguna solicitud denegada."
	Fin Si

FinAlgoritmo




Funcion retorno = getCateg(cuit)
	
	// Esta función ya viene hecha solo para probarse, no es necesario siquiera entenderla,
	
	// no obstante, lo que hace, es convertir a número el cuit, dividirla x 4 y tomar de allí 4 nros. posibles, que
	
	//serán 4 categorías.
	
	// Si la querés probar:
	
	// El cuit: 34567890123 te da una categoría válida
	
	// El cuit: 12345678901 no te da una categoría válida
	
	Definir nro,x,acu Como Entero
	
	Definir retorno,car Como Caracter
	
	acu <- 0
	
	Para x<-0 Hasta longitud(cuit)-1 Hacer
		
		acu <- acu+ConvertirANumero(SubCadena(cuit,x,x))
		
	FinPara
	
	Segun acu MOD 4 Hacer
		
		0:
			
			car <- 'A'
			
		1:
			
			car <- 'B'
			
		2:
			
			car <- 'C'
			
		3:
			
			car <- 'D'
			
	FinSegun
	
	retorno <- car
	
FinFuncion

Funcion retorno = Afip(cuit)
	
	// Esta función ya viene hecha solo para probarse, no es necesario siquiera entenderla,
	
	// no obstante, lo que hace, es convertir a número el cuit, dividirla x 2 y tomar de allí 2 nros. posibles, que
	
	//se convertirán en aprobado o no aprobado
	
	// Si lo querés probar:
	
	// El cuit: 34567890123 te da que la afip lo pre aprueba
	
	// El cuit: 45678901234 te da que la afip no lo pre aprueba
	
	Definir retorno,resp Como Logico
	
	Definir x,acu Como Entero
	
	acu <- 0
	
	Para x<-0 Hasta longitud(cuit)-1 Hacer
		
		acu <- acu+ConvertirANumero(SubCadena(cuit,x,x))
		
	FinPara
	
	Si acu MOD 2=0 Entonces
		
		resp <- verdadero
		
	SiNo
		
		resp <- falso
		
	FinSi
	
	retorno <- resp
	
FinFuncion





Funcion cadena=pedirCadena(mensaje, longitudMinima)
	
	
	Definir cadena como Cadena
	
	Escribir mensaje
	
	
	Leer cadena
	
	
	
	
	
	Mientras Longitud(cadena)!= longitudMinima y (cadena !="999") Hacer
		
		
		Escribir "Error! El dato ingresado no es compatible con lo pedido. Recuerde que CUIT 11 caracteres y Nacionalidad 5."
		
		
		leer cadena
		
	Fin Mientras
	
FinFuncion




Funcion entero=pedirEntero()
	
	
	Definir entero Como Entero
	
	
	escribir "Ingrese su edad: "
	
	
	leer entero 
	
	
FinFuncion





Funcion real =pedirReal()
	
	
	definir real Como Real
	
	
	escribir "Ingrese cuantos años de residencia tiene: "
	
	
	leer real
	
FinFuncion





funcion logico=validarMonotributo(monotributo)
	
	
	definir logico Como Logico
	
	
	
	
	
	Si (monotributo = 'A') o (monotributo = 'B') Entonces
		
		
		logico = Verdadero
		
	SiNo
		
		logico = Falso
		
	Fin Si
	
FinFuncion





funcion logico=validarEdad(edad)
	
	
	definir logico Como Logico
	
	
	Si edad > 18 y edad < 65 Entonces
		
		logico= Verdadero
		
	SiNo
		
		logico = Falso
		
	Fin Si
	
FinFuncion





funcion logico=validarNacionalidad(codigoNacional, añosResidencia)
	
	
	Definir logico Como Logico
	
	
	Si codigoNacional = "ARGEN" o añosResidencia > 2 Entonces
		
		
		logico = Verdadero
		
	SiNo
		
		logico = Falso
		
	Fin Si
	
FinFuncion




funcion logico=validarSolicitud(monotributoValido, preAprobado, añosValido, edadValida)
	
	
	definir logico Como Logico
	
	
	Si (monotributoValido = Verdadero) y (preAprobado = Verdadero) y (edadValida = Verdadero) y (añosValido = Verdadero) Entonces
		
		
		logico = Verdadero
		
	SiNo
		
		logico = Falso
		
	Fin Si
	
FinFuncion




Funcion promedio=calcularPromedio(totalSolicitudes, solicitudesAceptadas)
	
	
	definir promedio como real
	
	
	promedio = (solicitudesAceptadas * 100) / totalSolicitudes
	
	
FinFuncion





Funcion promedio=calcularPromedioEdad(sumaEdad, solicitudesDenegadas)
	
	
	Definir promedio Como Real	
	
	
	promedio = sumaEdad/solicitudesDenegadas 


FinFuncion

	