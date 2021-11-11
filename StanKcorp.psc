Algoritmo sin_titulo
	Definir preciounitario Como Real
	preciounitario <- 500
	Definir cantidad Como Entero
	Definir formpago Como Caracter
	Definir pagoTotal Como Real
	Definir efect1 Como Real
	efect1 <- 0.9
	Definir efect2 Como Real
	efect2 <- 0.95
	Definir tarjeta Como Real
	tarjeta <- 0.85
	Escribir 'Ingrese cantidad del producto que quiera: '
	Leer cantidad
	Escribir 'Ingrese el modo de pago. Efectivo E o Tarjeta T'
	Leer formpago
	pagoTotal <- preciounitario*cantidad
	Si ((cantidad>5) Y (formpago=='E')) Entonces
		pagoTotal <- pagoTotal*efect1
	SiNo
		Si  NO ((cantidad<=5) Y (formpago=='E')) Entonces
			pagoTotal <- pagoTotal*efect2
		SiNo
			Si  NO ((preciounitario>=1000) Y (formpago=='T')) Entonces
				pagoTotal <- pagoTotal*tarjeta
			FinSi
		FinSi
	FinSi
	Escribir 'El precio total a pagar es: $',pagoTotal
FinAlgoritmo
