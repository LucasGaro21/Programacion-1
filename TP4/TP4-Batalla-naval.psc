//Integrantes: Garofoli Lucas; López Jorge.
//Usar configuración de arreglos en 1
Algoritmo batalla_naval
	
	
	Dimension tablero_front[6,6]
	Dimension tablero_back[6,6]
	Definir misiles,barcos, barcos_fila, barcos_columna, comprobador Como Entero
	Definir apellido Como Caracter
	comprobador = 0
	misiles = 15
	barcos = 0
	todo_hundido=Falso
	//Todo en 0
	
	Escribir "******************************"
	Escribir "        BATALLA NAVAL"
	Escribir "******************************"
	Escribir " "
	Escribir "El juego consiste en destruir los 6 barcos enemigos con tus 15 misiles"
	Escribir " "
	Escribir "Ingrese su apellido: "
	Leer apellido
	Escribir " "
	Escribir "*** Mucha suerte soldado " apellido " ***"
	Escribir " "
	Escribir " "
	
	Esperar 1.5 Segundo
	
	Borrar Pantalla

	Para i<-1 Hasta 6 Hacer
		Para j<-1 Hasta 6 Hacer
			tablero_back[i,j]<-0
			tablero_front[i,j]<-"[]"
		FinPara
	FinPara
	
	
	Repetir
		i<-azar(5)+1
		j<-azar(5)+1
		barcos = barcos + 1
		Si tablero_back[i,j] == 1
			barcos = barcos - 1
		SiNo
			tablero_back[i,j]<-1
		FinSi
		
	Hasta Que barcos==6
	
	
	
	
	
	
	Repetir
		
		Escribir "FI/CO" " 1" " |" " 2" "  | " " 3" " | " " 4" " | " " 5" " | " "6" 
		Escribir "  1  " tablero_front[1,1] " | " tablero_front[1,2] " | " tablero_front[1,3] " | " tablero_front[1,4] " | " tablero_front[1,5] " | " tablero_front[1,6];
		Escribir "  2  " tablero_front[2,1] " | " tablero_front[2,2] " | " tablero_front[2,3] " | " tablero_front[2,4] " | " tablero_front[2,5] " | " tablero_front[2,6];
		Escribir "  3  " tablero_front[3,1] " | " tablero_front[3,2] " | " tablero_front[3,3] " | " tablero_front[3,4] " | " tablero_front[3,5] " | " tablero_front[3,6];
		Escribir "  4  " tablero_front[4,1] " | " tablero_front[4,2] " | " tablero_front[4,3] " | " tablero_front[4,4] " | " tablero_front[4,5] " | " tablero_front[4,6];
		Escribir "  5  " tablero_front[5,1] " | " tablero_front[5,2] " | " tablero_front[5,3] " | " tablero_front[5,4] " | " tablero_front[5,5] " | " tablero_front[5,6];
		Escribir "  6  " tablero_front[6,1] " | " tablero_front[6,2] " | " tablero_front[6,3] " | " tablero_front[6,4] " | " tablero_front[6,5] " | " tablero_front[6,6];
		
		Repetir
			Escribir " "
			Escribir "Escribir Numero de fila (Entre 1 y 6) "
			Leer fila
			Escribir "Escribir Numero de columna (Entre 1 y 6)"
			Leer columna
			
			Si fila > 6 o fila < 1
				Escribir "FILA NO CONTEMPLADA"
				comprobador = 0
			SiNo
				Si columna > 6 o columna < 1
					Escribir "COLUMNA NO CONTEMPLADA"
					comprobador = 0
				SiNo 
					comprobador = 1
				FinSi
			FinSi
			
		Hasta Que comprobador == 1
		
		i<-fila
		j<-columna
		
		//Cambia barco por barco hundido
		Si tablero_back[i,j] == 1
			tablero_back[i,j] = 2
			barcos = barcos - 1
		FinSi
		
		Borrar Pantalla
		//Dice si le pegaste o no
		Si tablero_back[i,j] == 0
			Escribir "Cayó en el agua"
			tablero_front[i,j] = " O"
		SiNo
			Escribir "Barco Hundido"
			tablero_front[i,j] = " X"
		FinSi
		
		//Comprobar ganador
		
		
		misiles = misiles - 1
		Escribir "Te quedan " misiles " misiles"
		Escribir "Quedan " barcos " barcos enemigos"
		Escribir " "
		
	Hasta Que misiles == 0 o barcos == 0
	
	Si barcos == 0
		Escribir "HA DESTRUIDO LA TOTALIDAD DE LOS BARCOS ENEMIGOS"
		Escribir "FELICITACIONES SOLDADO " apellido " !!!"
		
		
	SiNo
		Escribir "Lo siento, te has quedado sin misiles, no has podido destruir los barcos enemigos"
	FinSi
	
FinAlgoritmo
