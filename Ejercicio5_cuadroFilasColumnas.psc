//Programa Cuadro tablas multiplicar.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de arreglos.
//Ejercicio 5.
Proceso cuadroFilasColumnas
	
	Definir matriz Como Entero;
	Dimension matriz[10,10];
	Definir fila Como Entero;
	Definir columna Como Entero;
	Definir i Como Entero;
	Definir j Como Entero;
	Definir control Como Logico;
	Definir opcion Como Caracter;
	
	
	control <- Verdadero;
	
	//Matriz para almacenar resultados de multiplicaciones.
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		Para j<-0 Hasta 9 Con Paso 1 Hacer
			matriz[i,j] <- (i + 1) * (j + 1);
		FinPara
	FinPara
	
	Mientras control = Verdadero Hacer
		
		Escribir "        |                           COLUMNAS                                   |";
		Escribir "        |  0   |  1   |  2  	 |  3   |  4   |  5   |  6   |  7   |  8   |  9    |";
		Escribir "    | 0 | 1x1  | 2x1  | 3x1 	 | 4x1  | 5x1  | 6x1  | 7x1  | 8x1  | 9x1  | 10x1  |";
		Escribir "    | 1 | 1x2  | 2x2  | 3x2 	 | 4x2  | 5x2  | 6x2  | 7x2  | 8x2  | 9x2  | 10x2  |";
		Escribir "  F | 2 | 1x3  | 2x3  | 3x3 	 | 4x3  | 5x3  | 6x3  | 7x3  | 8x3  | 9x3  | 10x3  |";
		Escribir "  I | 3 | 1x4  | 2x4  | 3x4 	 | 4x4  | 5x4  | 6x4  | 7x4  | 8x4  | 9x4  | 10x4  |";
		Escribir "  L | 4 | 1x5  | 2x5  | 3x5 	 | 4x5  | 5x5  | 6x5  | 7x5  | 8x5  | 9x5  | 10x5  |";
		Escribir "  A | 5 | 1x6  | 2x6  | 3x6 	 | 4x6  | 5x6  | 6x6  | 7x6  | 8x6  | 9x6  | 10x6  |";
		Escribir "  S | 6 | 1x7  | 2x7  | 3x7 	 | 4x7  | 5x7  | 6x7  | 7x7  | 8x7  | 9x7  | 10x7  |";
		Escribir "    | 7 | 1x8  | 2x8  | 3x8 	 | 4x8  | 5x8  | 6x8  | 7x8  | 8x8  | 9x8  | 10x8  |";
		Escribir "    | 8 | 1x9  | 2x9  | 3x9 	 | 4x9  | 5x9  | 6x9  | 7x9  | 8x9  | 9x9  | 10x9  |";
		Escribir "    | 9 | 1x10 | 2x10 | 3x10 | 4x10 | 5x10 | 6x10 | 7x10 | 8x10 | 9x10 | 10x10 |";
		Escribir "";
		Escribir "Bienvenido al calculador de multiplicaciones";
		Escribir "Diligencie la siguiente información para determinar el resultado de la multiplicación";
		Escribir "Ingrese la fila";
		Leer fila;
		Escribir "Ingrese la columna";
		Leer columna;
		Si fila < 0 o fila > 9 o columna < 0 o columna > 9 Entonces
			Escribir "Ha ingresado un parámetro inválido, intente nuevamente ";
			Escribir "";
		SiNo
			Escribir "La operación realizada en la multiplicación da como resultado ", matriz[fila,columna];
			Escribir "";
			Escribir "¿Desea buscar otro resultado?";
			Escribir "Presione s o S para buscar otro resultado";
			Escribir "Presione cualquier tecla para salir";
			Leer opcion;
			Si opcion = "s" o opcion = "S" Entonces
				Limpiar Pantalla;
			SiNo
				control <- Falso;
			FinSi
		FinSi
	FinMientras

FinProceso
