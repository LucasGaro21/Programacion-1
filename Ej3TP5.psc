//Garófoli, Lucas Agustín
//Trabajo Practico N°5, Ejercicio 3
//3.	Implemente un programa con subprogramas que, leyendo el nombre de tres alumnos y la nota obtenida por cada uno en una asignatura,
//muestre por pantalla la media de las notas.

Algoritmo alumnos
	
	Dimension nombres[3]
	Dimension notas[3]
	Definir promedio como real
	
	nombres_alumnos(nombres)
	notas_alumnos(notas, nombres)
	
	promedio = calcular_promedio(notas)
	
	Escribir "El promedio de los alumnos ", nombres[0], " , ", nombres[1], " , ", nombres[2] "   es: " promedio
	
FinAlgoritmo

SubProceso  nombres_alumnos(nombres)	
	Para i = 0 hasta 2 con paso 1 hacer
		Escribir "Ingrese el nombre del alumno " 
		Leer nombres[i];		
	FinPara	
Fin SubProceso


SubProceso notas_alumnos(notas, nombres)	
	Para j = 0 Hasta 2 Con Paso 1 Hacer
		Escribir "------------------------------------------------";
		Escribir "Ingrese la nota del alumno ", nombres[i]
		Leer notas[j];
	Fin Para	
FinSubProceso




Funcion promedio = calcular_promedio(notas)	
	Definir suma_notas Como Entero;
	Definir promedio Como Real;
	sumatoria = 0;
	
	Para k = 0 hasta 2 con paso 1 Hacer
		sumatoria = sumatoria + notas[k]
	FinPara
	
	promedio = sumatoria / 3;	
FinFuncion
