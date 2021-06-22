//Garófoli, Lucas Agustín
//Trabajo Practico N°5, Ejercicio 1
//1.	Crear un subprograma que reciba como entrada un valor entero e indique si se trata de un número par o impar. 
//¿Qué tipo de subprograma crees más apropiado, procedimiento o función? Escribe también un programa principal para probar el subprograma.

Algoritmo par_impar
	
	Definir num Como Entero
		Escribir "Por favor ingrese un número"
		Leer num
		
		parImpar(num)
		
	FinAlgoritmo
	
	SubProceso parImpar(num)
		Si num%2=0 Entonces
			Escribir num " Es un número par"
		SiNo
			Escribir num " Es un número impar"
		FinSi
		
FinSubProceso

