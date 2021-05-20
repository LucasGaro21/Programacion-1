//1. Desarrollar un algoritmo que permita almacenar en un arreglo los cien
//	primeros números pares.
//	Luego recorrer el arreglo y mostrar los números que contiene el arreglo

Algoritmo cien_pares
	Definir pares,n Como Entero
	Dimension pares[201]
	n=1
	Para i<-2 Hasta 200 Con Paso 2 Hacer
		pares[i] <- i
		Escribir n ". " pares[i]
		n=n+1
	Fin Para
	
FinAlgoritmo
