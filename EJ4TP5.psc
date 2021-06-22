//Garófoli, Lucas Agustín
//Trabajo Practico N°5, Ejercicio 4
//Crear un procedimiento que intercambie los valores de dos variables. 
//Realizar un programa que llame a este procedimiento para que intercambie dos valores leídos desde el teclado
//y los muestre por pantalla.


Algoritmo  Intercambionum
	
	Escribir "Ingrese un número "
	Leer primer_variable;
	
	Escribir "Ingrese un número distinto "
	Leer segunda_variable;
	
	Escribir "La Primer variable vale: " primer_variable;
	Escribir "La Segunda variable vale: " segunda_variable
	
	Esperar 3 Segundo
	
	Borrar Pantalla
	
	Escribir "Cambiando valores..."
	Esperar 1.5 segundo
	
	Borrar Pantalla
	
	intercambio_variables(primer_variable, segunda_variable)
	
	Escribir "Ahora la primer variable vale: " primer_variable
	Escribir "Ahora la segunda variable vale: " segunda_variable
	
FinAlgoritmo

SubProceso intercambio_variables(primer_variable Por Referencia, segunda_variable Por Referencia)
	Definir aux Como Entero;
	
	aux = primer_variable
	primer_variable = segunda_variable
	segunda_variable = aux
FinSubProceso

