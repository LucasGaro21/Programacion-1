//Gar�foli, Lucas Agust�n
//Trabajo Practico N�5, Ejercicio 1
//1.	Crear un subprograma que reciba como entrada un valor entero e indique si se trata de un n�mero par o impar. 
//�Qu� tipo de subprograma crees m�s apropiado, procedimiento o funci�n? Escribe tambi�n un programa principal para probar el subprograma.

Algoritmo par_impar
	
	Definir num Como Entero
		Escribir "Por favor ingrese un n�mero"
		Leer num
		
		parImpar(num)
		
	FinAlgoritmo
	
	SubProceso parImpar(num)
		Si num%2=0 Entonces
			Escribir num " Es un n�mero par"
		SiNo
			Escribir num " Es un n�mero impar"
		FinSi
		
FinSubProceso

