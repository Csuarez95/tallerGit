//Programa ciclo Para.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de ciclos.
//Ejercicio 1.
Proceso cicloPara
	Definir asterisco, i, j Como Entero;
	
	Escribir "Por favor, ingrese la cantidad de filas que quiere llenar";
	Leer asterisco;
	
	Para i <- 1 Hasta asterisco Con Paso 1 Hacer
		//impresion de asteriscos
		Para j <- 1 Hasta i Con Paso 1 Hacer
			//Sin Saltar permita que escriba los asteriscos en la misma línea.
			Escribir "*" Sin Saltar;
		FinPara
		Escribir ""; //Salto de linea
	FinPara
	
FinProceso
