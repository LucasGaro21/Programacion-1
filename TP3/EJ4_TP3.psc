//4. Desarrollar un algoritmo que permita realizar las operaciones básicas de
//una calculadora (suma, resta, multiplicación, división, potencia). Debe
//permitir leer dos valores. A continuación desplegar un menú con las
//opciones mencionadas. Detectar si los números ingresados no son
//	válidos para la operación seleccionada. En caso de que no sean válidos,
//		solicitar nuevamente el ingreso de los valores.
//	Informar al usuario:
//		- La opción seleccionada.
//		- El resultado de la operación matemática
//		- Consultar si desea continuar o finalizar el ejercicio
Algoritmo Operaciones_Matematicas
	
	Definir operacion,siono Como Entero
	Definir num1,num2,sumados,multiplicados,divididos,potenciados,restados Como Real
	
	Escribir "Calculadora de operaciones basicas"
	
	Repetir
	
	Escribir "Indique la operacion que desea realizar"
	Escribir "1) Suma"
	Escribir "2) Resta"
	Escribir "3) Multiplicacion"
	Escribir "4) Division"
	Escribir "5) Potencia"
	Leer operacion
	
	Segun operacion Hacer
		1:
			Escribir "Usted ha seleccionado suma"
			Escribir "Ingrese el primer numero: "
			Leer num1
			Escribir "Ingrese el segundo numero: "
			Leer num2
			sumados=num1+num2
			Escribir "La suma de " num1 " + " num2 " = " sumados
			sumados=0
			num1=0
			num2=0
		2:
			Escribir "Usted ha seleccionado resta"
			Escribir "Ingrese el primer numero: "
			Leer num1
			Escribir "Ingrese el segundo numero: "
			Leer num2
			restados=num1-num2
			Escribir "La resta de " num1 " - " num2 " = " restados
			restados=0
			num1=0
			num2=0
		3:
			Escribir "Usted ha seleccionado multiplicacion"
			Escribir "Ingrese el primer numero: "
			Leer num1
			Escribir "Ingrese el segundo numero: "
			Leer num2
			multiplicados=num1*num2
			Escribir "La multiplicacion de " num1 " * " num2 " = " multiplicados
			multiplicados=0
			num1=0
			num2=0
		4:
			Escribir "Usted ha seleccionado division"
			Escribir "Ingrese el primer numero: "
			Leer num1
			Escribir "Ingrese el segundo numero: "
			Leer num2
			divididos=num1/num2
			Escribir "La division de " num1 " / " num2 " = " divididos
			divididos=0
			num1=0
			num2=0
		5:
			Escribir "Usted ha seleccionado potencia"
			Escribir "Ingrese el primer numero: "
			Leer num1
			Escribir "Ingrese el segundo numero: "
			Leer num2
			potenciados=num1^num2
			Escribir "La operacion potencia de " num1 " ^ " num2 " = " potenciados
			potenciados=0
			num1=0
			num2=0
		De Otro Modo:
			Escribir "Ha seleccionado una opción incorrecta "
	Fin Segun
	
	Escribir "Desea realizar otra operacion? "
	Escribir "1) Si "
	Escribir "2) No "
	Leer siono
	
Hasta Que (siono==2)
Escribir "Finalizando el programa..."
Escribir "Muchas gracias por utilizar nuestro programa"
FinAlgoritmo
