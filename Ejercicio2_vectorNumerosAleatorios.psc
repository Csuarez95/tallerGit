//Programa llenar vector n�meros aleatorios.
//Elaborado por: Cristian Su�rez Acosta.
//Cantera nivel 1.
//Taller de arreglos.
//Ejercicio 2.
Proceso vectorNumerosAleatorios
	
	//Declaracion de variables y vectores.
	Definir vector Como Entero;
	Dimension vector[20];
	Definir numeroAleatorio Como Entero;
	Definir posiciones Como Entero;
	Definir i Como Entero;
	Definir j Como Entero;
	Definir tipoNumero Como Entero;
	Definir numeroPar Como Entero;
	Dimension numeroPar[20];
	Definir numeroImpar Como Entero;
	Dimension numeroImpar[20];
	Definir contadorPar Como Entero;
	Definir contadorImpar Como Entero;
	Definir aux1 Como Entero;
	Definir aux2 Como Entero;

	//Inicializar variables.
	i <- 0;
	posiciones <- 20;
	contadorPar <- 0;
	contadorImpar <- 0;
	
	//CIclo mientras para llenado del vector.
	Mientras i <= posiciones - 1 Hacer
		numeroAleatorio <- Aleatorio(1,100);
		vector[i] <- numeroAleatorio;
		Escribir "[", i, "] = ", vector[i]; 
		i <- i + 1;
	FinMientras
	
	//Llenado de vectores para numeros pares e impares.
	Para j<-0 Hasta posiciones - 1 Con Paso 1 Hacer
		tipoNumero <- vector[j];
		//Con el m�dulo del n�mero, se determina si es par o impara para almacenar en el vector y realizar conteo.
		Si tipoNumero MOD 2 == 0 Entonces
			numeroPar[contadorPar] <- tipoNumero;
			contadorPar <- contadorPar + 1;
		SiNo
			numeroImpar[contadorImpar] <- tipoNumero;
			contadorImpar <- contadorImpar + 1;
		FinSi
	FinPara
	Escribir "";
	//Impresi�n n�meros pares.
	Escribir "Cantidad de pares: ", contadorPar;
	Escribir "Numeros pares: " Sin Saltar;
	//Se imprimen los n�meros pares en el vector hasta la pen�ltima posici�n.
	Para aux1 <- 0 Hasta contadorPar - 2 Con Paso 1 Hacer
		Escribir numeroPar[aux1], ", " Sin Saltar;
	FinPara
	//El �ltimo valor del vector se imprime fuera del ciclo para evitar la ",";
	Escribir numeroPar[contadorPar - 1];
	
	//Impresi�n n�meros impares.
	Escribir "";
	Escribir "Cantidad de impares: ", contadorImpar;
	Escribir "Numeros impares: " Sin Saltar;
	//Se imprimen los n�meros impares en el vector hasta la pen�ltima posici�n.
	Para aux2 <- 0 Hasta contadorImpar - 2 Con Paso 1 Hacer
		Escribir numeroImpar[aux2], ", " Sin Saltar;
	FinPara
	//El �ltimo valor del vector se imprime fuera del ciclo para evitar la ",";
	Escribir numeroImpar[contadorImpar - 1];
	
	
FinProceso
