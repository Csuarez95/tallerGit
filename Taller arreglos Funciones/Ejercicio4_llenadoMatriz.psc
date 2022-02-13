//Programa matriz1.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de arreglos.
//Ejercicio 4.
SubProceso impresionMatriz(fila, columna)
	Definir i, j, valorNumero, matriz Como Entero;
	Dimension matriz[10,10];
	valorNumero <- 1;
	Para i<-0 Hasta fila - 1 Con Paso 1 Hacer
		Para j<-0 Hasta columna - 1 Con Paso 1 Hacer
			matriz[i,j] <- valorNumero + j ;
			Si matriz[i,j] <= 9 Entonces
				Escribir "0", matriz[i,j], " " Sin Saltar; //Impresión del 0 con los números del 1 al 9.
			SiNo
				Escribir matriz[i,j], " " Sin Saltar;
			FinSi
		FinPara
		Escribir "";
		valorNumero <- valorNumero + j;
	FinPara
FinSubProceso

SubProceso impresionMatrizEscalera(fila,columna)
	Definir i, j, valorNumero, matriz Como Entero;
	Dimension Matriz[10,10];
	valorNumero <- 1;
	Para i<-0 Hasta fila - 1 Con Paso 1 Hacer
		Para j<-0 Hasta columna - 1 Con Paso 1 Hacer
			//matriz[i,j] <- valorNumero + j ;
			Si i MOD 2 = 0 Entonces
				matriz[i,j] <- valorNumero + j ;
				Si matriz[i,j] <= 9 Entonces
					Escribir "0", matriz[i,j], " " Sin Saltar; //Impresión del 0 con los números del 1 al 9.
				SiNo
					Escribir matriz[i,j], " " Sin Saltar;
				FinSi
			SiNo
				matriz[i,j] <- (valorNumero + (columna - 1)) - j; //Recorrer el vector de derecha a izquierda
				Si matriz[i,j] <= 9 Entonces
					Escribir "0", matriz[i,j], " " Sin Saltar;
				SiNo
					Escribir matriz[i,j], " " Sin Saltar;
				FinSi
			FinSi
		FinPara
		Escribir "";
		valorNumero <- valorNumero + j;
	FinPara
FinSubProceso

Proceso llenadoMatriz
	
	Definir fila Como Entero;
	Definir columna Como Entero;
	Definir control Como Logico;
	
	control <- Verdadero;
	
	Mientras control = Verdadero Hacer
		Escribir "Ingrese el número de filas mayores que 0 y menores o iguales a 20";
		Leer fila;
		
		Escribir "Ingrese el número de columnas mayores que 0 y menores o iguales a 20";
		Leer columna;
		
		Si fila <= 0 o columna <= 0 Entonces
			Escribir "Ingresó un parámetro inválido, por favor inicie nuevamente";
		SiNo
			Escribir "La matriz resultante es: ";
			//Impresión matriz en orden
			impresionMatriz(fila, columna);
			Escribir "-----------------";
			impresionMatrizEscalera(fila,columna);
			control <- Falso;
		FinSi
	FinMientras
FinProceso
