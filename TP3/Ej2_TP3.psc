//2. Desarrollar un algoritmo que 
//permita saber cu�l es el n�mero mayor y
//menor, sobre un total de 10 n�meros inicializados de forma aleatoria(Rand).
//El algoritmo deber� informar al usuario, los n�meros con los que se
//realiz� el c�lculo, el mayor y el menor obtenido.

Algoritmo mayor_menor_aleatorio
	
	Definir i,aleat,may,men Como Entero
	may=0
	men=100
	
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		aleat<-azar(100)
		Escribir i "� numero es: " aleat
		Si (aleat>may)
			may=aleat
		FinSi
		Si (aleat<men)
			men=aleat
		FinSi
		
	Fin Para
	Escribir "El mayor de los nros es: " may " y el menor es: " men
FinAlgoritmo
