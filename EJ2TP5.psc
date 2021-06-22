//Garófoli, Lucas Agustín
//Trabajo Practico N°5, Ejercicio 2
//2.	Escribe un procedimiento que escriba en pantalla los n primeros números primos. El procedimiento recibe n como parámetro.

Algoritmo Numeros_Primos
	Definir cant_a_mostrar Como Entero
	
	Escribir "Ingrese cantidad de numeros primos a mostrar:"
    Leer cant_a_mostrar
    
	primos( cant_a_mostrar,n,cant_mostrados)
    
	
FinAlgoritmo

SubProceso primos(cant_a_mostrar,n,cant_mostrados)
	
	Escribir "1: 2" 
    cant_mostrados <- 1
    n<-3            
    
	Definir es_primo Como Logico 
	
    Mientras cant_mostrados<cant_a_mostrar Hacer
        
        es_primo <- Verdadero 
        
        Para i<-3 hasta rc(n) con paso 2 Hacer 
            Si n MOD i = 0 entonces 
                es_primo <- Falso  
            FinSi
        FinPara
        
        Si es_primo Entonces
            cant_mostrados <- cant_mostrados + 1
            Escribir cant_mostrados, ": ",n
        FinSi
        
        n <- n + 2 
        
    FinMientras
FinSubProceso
