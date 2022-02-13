//Programa ciclo Mientras-Hacer.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de ciclos.
//Ejercicio 2.
Proceso cicloMientrasHacer
	Definir asterisco, i, j, k Como Entero;
	i <- 1;
	k <- 0;
	Escribir "Por favor, ingrese la cantidad de filas que quiere llenar";
	Leer asterisco;
	
	Mientras i <= asterisco Hacer
		j <- asterisco - i;
		Mientras j >= 0 Hacer
			Escribir " " Sin Saltar;
			j <- j - 1;
		FinMientras
		k <- 0;
		Mientras k < i Hacer
			Escribir "*" Sin Saltar;
			k <- k + 1;
		FinMientras
		Escribir "";
		i <- i + 1;
	FinMientras
	
FinProceso
	
