//3. Desarrollar un algoritmo que permita calcular la suma de los primeros
//cien n�meros. Agregar un men� con tres opciones:
//Opci�n 1: Calcular utilizando la estructura PARA
//b. Opci�n 2: Calcular utilizando la estructura MIENTRAS
//	c. Opci�n 3: Calcular utilizando la estructura REPETIR
//	d. Detectar si el usuario ingresa una opci�n incorrecta, informar al
//	usuario si desea salir o continuar con la ejecuci�n del programa
// 	Informar al usuario:
//	- La opci�n seleccionada.
//	- La sumatoria de los n�meros.
//	- Consultar si desea continuar o finalizar el ejercicio
Algoritmo calc_numers
	Definir i,num,u,suma,elegir Como Entero
	num=1
	u=0
	Repetir
		
		Escribir "Por favor elija segun lo que quiera utilizar: "
		Escribir "1)  Calcular utilizando  PARA"
		Escribir "2)  Calcular utilizando  MIENTRAS"
		Escribir "3)  Calcular utilizando  REPETIR"
		Escribir "4)  Salir."
		Leer elegir
		
		Segun elegir Hacer
			1:
				Escribir "Ha seleccionado para utilizar PARA."	
				Para i = 1 Hasta 100 Con Paso 1 Hacer
					suma = suma + i
				Fin Para
				Escribir "La suma es: " suma
				suma = 0
			2:
				Escribir "Ha seleccionado para utilizar MIENTRAS."
				Mientras u < 100 Hacer
					u = u + 1
					suma = suma + u
				Fin Mientras
				Escribir "La suma: " suma
				suma = 0
			3:
				Escribir "Ha seleccionado para utilizar REPETIR."
				Repetir
					suma = suma + num
					num = num + 1
				Hasta Que num > 100
				Escribir "La suma es:  " suma
				suma = 0
			4:
				Escribir "Saliendo del programa."
			De Otro Modo:
				Escribir "Opcion Incorrecta, por favor ingresar de nuevo."
		Fin Segun
	Hasta Que elegir == 4
	
	Escribir "Muchas gracias por utilizar el programa"
FinAlgoritmo
