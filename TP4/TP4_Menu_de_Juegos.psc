//Integrantes: Garofoli Lucas; López Jorge.
//Usar configuración de arreglos en 1
Algoritmo Menu_Juegos
	Definir juego Como Entero
	Escribir "Bienvenido a nuestro menu de juegos"
	Escribir " "
	Escribir "Ingrese el numero para elegir el juego: "
	Escribir "1. Batalla Naval"
	Escribir "2. Ta-Te-Ti"
	Escribir "3. Salir"
	Leer juego
	
	Borrar Pantalla
	
	Segun juego Hacer
		1:
			
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
			

		2:
			Definir nombre Como Caracter;
			Dimension tablero_back[3,3]   //Tablero que va a guardar la data útil
			Dimension tablero_front[3,3]  //Tablero que va a mostar al jugador las X y O
			Definir casilla, turno_humano Como Entero
			turno_humano=0 //Va a comprobar si es turno de la máquina o del humano, si al divir por 2 da 0, humano, si da resto, le toca al pc
			
			//Booleanos para comprobaciones de las repetitivas
			Terminado<-Falso
			Ganador<-Falso
			
			//Seteo los turnos, que son 3, pero los seteo en 4 para que muestre el turno que se está jugando y no uno ya jugado
			
			Definir turnos_jugador, turnos_pc Como Entero
			turnos_jugador = 4
			turnos_pc = 4
			
			//Seteamos el backend en 0 y el frontend en [] que es un nulo
			Para i<-1 Hasta 3 Hacer
				Para j<-1 Hasta 3 Hacer
					tablero_back[i,j]<-0
					tablero_front[i,j]<-"[]"
				FinPara
			FinPara
			
			Escribir "Bienvenido a TA-TE-TI"
			Escribir " "
			Escribir "REGLAS: "
			Escribir "3 jugadas por participante"
			Escribir "Casillas del 1 al 9, de arriba hacie abajo de izquierda a derecha"
			Escribir "Gana el 3 en raya, horizontal, diagonal y vertical"
			Escribir "La máquina no es muy inteligente tampoco, tu puedes"
			Escribir " "
			Escribir " "
			
			Escribir "Ingrese su nombre";
			Leer nombre;
			
			//Limpiamos 
			Borrar Pantalla
			
			//Empieza el tateti
			
			Mientras Terminado == Falso hacer
				
				Escribir "    " tablero_front[1,1] " | " tablero_front[1,2] " | " tablero_front[1,3];
				Escribir "    " tablero_front[2,1] " | " tablero_front[2,2] " | " tablero_front[2,3];
				Escribir "    " tablero_front[3,1] " | " tablero_front[3,2] " | " tablero_front[3,3];
				
				Si Ganador == Falso  y turnos_pc <> 1 Entonces //Comprueba que no hay ganador
					
					//Selecciona la información útil, si vale X o O y muestra quién juega y cuántos turnos le queda al jugador
					Si turno_humano %2 == 0 Entonces //------------JUEGA HUMANO-----------//
						ficha<-" X"; 
						marca<- 1; 
						ganar<-1
						turnos_jugador = turnos_jugador - 1;
						
						Escribir "Turno de " nombre ". Juega con las X"
						Escribir "Le quedan " turnos_jugador " turnos"
						
					Sino                             //-----------JUEGA MÁQUINA----------//  
						ficha = " O"; 
						marca = 2; 
						ganar = 8; 
						turnos_pc = turnos_pc - 1;
						
						Escribir "Turno de la Máquina. Juega con los O"
						Escribir "Le quedan " turnos_pc " turnos"
					FinSi
					
					//-------------------------------------------------------------------------------------------------------
					
					//Hace jugar al humano, comprueba si su casilla es correcta y en caso de que no le toque al humano, hace jugar a la máquina
					
					Si turno_humano %2 == 0 Entonces
						Escribir "Ingrese la Casilla del 1 al 9"
						Repetir
							Leer casilla
							
							Si casilla<1 o casilla>9 Entonces            //Comprueba que el número este dentro de las casillas
								Escribir "Casilla no contemplada, ingrese otro número: "
								casilla<-10;
							Sino
								
								i<-trunc((casilla-1)/3)+1
								j<-((casilla-1) % 3)+1
								
								Si tablero_back[i,j]<>0 Entonces //Comprueba que las casillas no estén ya ocupadas
									casilla<-10
									Escribir "Casilla ya utilizada, ingrese otro número: "
								FinSi
							FinSi
						Hasta Que casilla<> 10
					SiNo
						Repetir
							casilla = azar(9)+1
							i<-trunc((casilla-1)/3)+1
							j<-((casilla-1) % 3)+1
							
							Si tablero_back[i,j]<>0 Entonces //Comprueba que el azar no haya elegido un casilla ya elegido
								casilla<-10
							FinSi
							
						Hasta Que casilla<>10
						
						Escribir " "
						Escribir "La máquina elige " casilla; 
					Fin Si
					
					Borrar Pantalla
					
					//Guardamos la información, tanto del back como del front
					
					tablero_back[i,j] = marca
					tablero_front[i,j] = ficha
					//Comprobamos si hay ganador
					//Esta parte fue engorrosa y la armamos con varios códigos de internet, viéndola funcionar la entendimos
					
					ganador_humano = 1; ganador_pc = 1
					
					Para i = 1 Hasta 3 Con Paso 1 Hacer
						
						comp_i = 1; comp_j= 1
						
						ganador_humano = ganador_humano *tablero_back[i,i]
						ganador_pc= ganador_pc *tablero_back[i,4-i]
						
						Para j = 1 Hasta 3 Con Paso 1 Hacer
							
							comp_i = comp_i*tablero_back[i,j]
							comp_j = comp_j*tablero_back[j,i]
							
						FinPara
						
						Si comp_i==ganar o comp_j==ganar Entonces
							Ganador<-Verdadero
						FinSi
					FinPara
					
					
					Si ganador_humano== ganar o ganador_pc== ganar Entonces //Se encontró ganador
						
						Ganador<-Verdadero
						
					Sino
						
						turno_humano = turno_humano + 1                 //Esto intercala entre el turno del humano y la máquina
						
					FinSi
					
				Sino
					
					Si Ganador == Verdadero Entonces //Si hay ganador o no hay mas turnos, se dice quién gano o si hay empate
						
						Escribir "El ganador es: "
						Si ganar == 8 Entonces
							
							Escribir " ----MÁQUINA---- "
							
						Sino
							
							Escribir " ----" nombre " ----"
							
						FinSi
						
					Sino
						
						Escribir "----HAY EMPATE----"
						
					FinSi
					
					Terminado = Verdadero          // Terminado es verdadero, se cierra el Mientras
					
				FinSi
		
	FinMientras

		De Otro Modo:
		Escribir "Muchas Gracias por utilizar nuestro menu de juegos"
	Fin Segun
FinAlgoritmo
