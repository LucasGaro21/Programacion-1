//Gar�foli, Lucas Agust�n
//Trabajo Practico N�5, Ejercicio 5
//Escribe una funci�n llamada media2 que reciba dos reales y devuelva el real que representa el promedio de ambos n�meros. 
//Escribe luego un programa utilizando la funci�n anterior que lea dos reales por teclado y devuelva la media aritm�tica de ambos.

Algoritmo  Promedio_calculo
	Definir num1, num2, promedio Como Real
	
	Escribir "Ingrese un numero real"
	Leer num1
	Escribir "Ingrese otro numero real"
	Leer num2
	
	Escribir "El promedio entre esos numeros es: " media2(num1, num2)
	
FinAlgoritmo

Funcion promedio = media2(numero1, numero2)
	Definir promedio Como Real;	
	promedio = (numero1+numero2) / 2;	 
FinFuncion