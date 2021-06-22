//Gar�foli, Lucas Agust�n
//Trabajo Practico N�5, Ejercicio 6
//Escribe una funci�n que reciba un n�mero como par�metro y devuelva el n�mero que se obtiene al invertir el orden de los d�gitos del n�mero original.
//Por ejemplo, si la funci�n recibe el n�mero 356 devolver� el n�mero 653.

Algoritmo invertir
	
	Repetir
		Escribir "Ingrese un n�mero mayor a 10 y menor que 9999 "
		Leer num_cambiar
		Si num_cambiar <= 10 o num_cambiar >= 9999 Entonces
			Escribir "Numero no v�lido"
		SiNo
			Escribir num_cambiar " invertido es " invertir_numero(num_cambiar)
		FinSi
	Hasta Que num_cambiar >= 11 y num_cambiar <= 9999
FinAlgoritmo


Funcion numero_invertido = invertir_numero(original)
	
	Definir numero_invertido, j, aux Como Entero
	numero_invertido = 0
	
	Dimension digitos[4]
	Para j = 0 hasta 3 con paso 1 Hacer
		digitos[j] = 0
	FinPara
	
	Si original > 10 Entonces
		Si original < 99 Entonces
			digitos[1] = trunc(original/10)
			aux = original % 10
			digitos[0] = trunc(aux/1)
			
			digitos[0] = digitos[0] * 10
			digitos[1] = digitos[1] * 1
		SiNo
			Si original < 999 Entonces
				digitos[2] = trunc(original/100)
				aux = original % 100
				digitos[1] = trunc(aux/10)
				aux = original % 10
				digitos[0] = trunc(aux/1)
				
				digitos[0] = digitos[0] * 100
				digitos[1] = digitos[1] * 10
				digitos[2] = digitos[2] * 1
			SiNo
				Si original < 9999
					digitos[3] = trunc(original/1000);
					aux = original % 1000;
					digitos[2] = trunc(aux/100);
					aux = original % 100;
					digitos[1] = trunc(aux/10);
					aux = original % 10;
					digitos[0] = trunc(aux/1);
					
					digitos[0] = digitos[0] * 1000
					digitos[1] = digitos[1] * 100
					digitos[2] = digitos[2] * 10
					digitos[3] = digitos[3] * 1
				FinSi
			FinSi
		FinSi
	FinSi
	
	Para suma = 0 hasta 3 con paso 1 Hacer
		numero_invertido = numero_invertido + digitos[suma];
	FinPara
	
	
FinFuncion



