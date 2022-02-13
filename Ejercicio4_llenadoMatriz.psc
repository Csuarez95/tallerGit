//Programa matriz1.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de arreglos.
//Ejercicio 4.
Proceso llenadoMatriz
	
	Definir fila Como Entero;
	Definir columna Como Entero;
	Definir i Como Entero;
	Definir j Como Entero;
	Definir matriz Como Entero;
	Dimension matriz[10,10];
	Definir valorNumero Como Entero;
	Definir valorTeclado Como Entero;
	Definir control Como Logico;
	
	valorNumero <- 1;
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
			Para i<-0 Hasta fila - 1 Con Paso 1 Hacer
				Para j<-0 Hasta columna - 1 Con Paso 1 Hacer
					matriz[i,j] <- valorNumero + j ;
					//Escribir "Escriba los numeros en posición [", i, ",", j, "]";
					//Leer valorTeclado;
					//matriz[i,j] <- valorTeclado;
					Si matriz[i,j] <= 9 Entonces
						Escribir "0", matriz[i,j], " " Sin Saltar; //Impresión del 0 con los números del 1 al 9.
					SiNo
						Escribir matriz[i,j], " " Sin Saltar;
					FinSi
				FinPara
				Escribir "";
				valorNumero <- valorNumero + j;
			FinPara
			valorNumero <- 1;
			Escribir "-----------------";
			
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
			control <- Falso;
		FinSi
	FinMientras
FinProceso
