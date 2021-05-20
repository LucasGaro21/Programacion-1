//2.  Desarrollar un algoritmo que llene un arreglo con 20 números de forma
//	 aleatoria entre 0 y 100 . Luego busque en el arreglo, un número generado
//   de forma aleatoria entre 0 y 100, y finalmente muestre: a)- El número a
//	buscar, b)- El arreglo, c)- Si encontró el número, la posición donde fue
//  hallado, o d)- Si no encontró el número.

//Usar con configuración que inicie arreglos en 0

//Integrantes: Garofoli Lucas; López Jorge.

Algoritmo busqueda_arreglo
	Definir aleato, busq, encontrado, pos Como Entero
	encontrado=1
	Dimension aleato[22]

	busq=azar(100)+1                           //Busqueda del numero
	Escribir "El numero a buscar es: " busq
	Escribir " "
	
	Para i<-1 Hasta 20 Con Paso 1 Hacer
		aleato[i]=azar(100)+1                  //Llenar arreglo con 20 num aleatorios
		
		Escribir i ". " aleato[i]
	Fin Para
	
	
	Para j = 1 Hasta 20 Con Paso 1 Hacer
		Si aleato[j] == busq
			encontrado=0
			pos=j
		FinSi
	FinPara
	
	
	Si encontrado=0 Entonces
		Escribir "Se ha encontrado el numero " busq " en la posición " pos
		
	SiNo
		Escribir "No se ha encontrado el numero"
	Fin Si
	
	
	
	
	
FinAlgoritmo
