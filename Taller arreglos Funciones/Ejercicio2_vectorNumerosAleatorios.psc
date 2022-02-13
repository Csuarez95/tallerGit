//Programa llenar vector números aleatorios.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de arreglos.
//Ejercicio 2.
SubProceso determinarPares(datos, posiciones)
	Definir j, tipoNumero, contadorPar, aux1 Como Entero;
	Definir numeroPar Como Entero;
	Dimension numeroPar[20];
	contadorPar <- 0;
	Para j<-0 Hasta posiciones - 1 Con Paso 1 Hacer
		tipoNumero <- datos[j];
		//Con el módulo del número, se determina si es par o impara para almacenar en el vector y realizar conteo.
		Si tipoNumero MOD 2 == 0 Entonces
			numeroPar[contadorPar] <- tipoNumero;
			contadorPar <- contadorPar + 1;
		FinSi
	FinPara
	Escribir "";
	
	Escribir "Cantidad de pares: ", contadorPar;
	Escribir "Numeros pares: " Sin Saltar;
	//Se imprimen los números pares en el vector hasta la penúltima posición.
	Para aux1 <- 0 Hasta contadorPar - 2 Con Paso 1 Hacer
		Escribir numeroPar[aux1], ", " Sin Saltar;
	FinPara
	//El último valor del vector se imprime fuera del ciclo para evitar la ",";
	Escribir numeroPar[contadorPar - 1];
FinSubProceso

SubProceso determinarImpares(datos, posiciones)
	Definir j, tipoNumero, contadorImpar, aux2 Como Entero;
	Definir numeroImpar Como Entero;
	Dimension numeroImpar[20];
	contadorImpar <- 0;
	Para j<-0 Hasta posiciones - 1 Con Paso 1 Hacer
		tipoNumero <- datos[j];
		//Con el módulo del número, se determina si es par o impara para almacenar en el vector y realizar conteo.
		Si tipoNumero MOD 2 <> 0 Entonces
			numeroImpar[contadorImpar] <- tipoNumero;
			contadorImpar <- contadorImpar + 1;
		FinSi
	FinPara
	Escribir "";
	Escribir "Cantidad de impares: ", contadorImpar;
	Escribir "Numeros impares: " Sin Saltar;
	//Se imprimen los números impares en el vector hasta la penúltima posición.
	Para aux2 <- 0 Hasta contadorImpar - 2 Con Paso 1 Hacer
		Escribir numeroImpar[aux2], ", " Sin Saltar;
	FinPara
	//El último valor del vector se imprime fuera del ciclo para evitar la ",";
	Escribir numeroImpar[contadorImpar - 1];
FinSubProceso

Proceso vectorNumerosAleatorios
	
	//Declaracion de variables y vectores.
	Definir vector Como Entero;
	Dimension vector[20];
	Definir numeroAleatorio Como Entero;
	Definir posiciones Como Entero;
	Definir i Como Entero;
	Definir numeroPar Como Entero;
	Dimension numeroPar[20];
	Definir numeroImpar Como Entero;
	Dimension numeroImpar[20];
	Definir contadorPar Como Entero;
	Definir contadorImpar Como Entero;

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
	determinarPares(vector, posiciones);
	determinarImpares(vector, posiciones);

FinProceso
