//Integrantes: Garofoli Lucas; López Jorge.
//Usar configuración de arreglos en 1
Algoritmo  TTa_Te_Ti_vsPC
    
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
    
FinAlgoritmo

