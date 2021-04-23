//1. Desarrollar un algoritmo que imprima la tabla de multiplicar de los números del uno diez.

Algoritmo Tabla_multiplicar
	Definir num,i,multi Como Entero
	
	num=0
	Repetir
		num=num+1
	
	Para i<-1 Hasta 10 Con Paso 1 Hacer
		
		multi = num * i
		
		Escribir i " * " num " = " multi
	Fin Para
Hasta Que num=10
	
FinAlgoritmo
