//Programa almacenar datos vector.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de arreglos.
//Ejercicio 1.
SubProceso llenarVector(datos, posiciones)
	Definir i, valores Como Entero;
	Para i<-0 Hasta posiciones - 1 Con Paso 1 Hacer
		Escribir "Ingrese el número para la posición ", i + 1;
		Leer valores;
		datos[i] <- valores;
	FinPara
	Escribir "";
FinSubProceso

SubProceso imprimirVector(datos, posiciones)
	Definir j Como Entero;
	Escribir "Los valores asignados son:";
	Para j<-0 Hasta posiciones - 1 Con Paso 1 Hacer
		Escribir "[", j, "] = ", datos[j]; 
	FinPara
FinSubProceso

Proceso almacenarVector
	Definir vector Como Entero;
	Dimension vector[20];
	Definir posiciones Como Entero;
	Definir control Como Logico;
	control <- Verdadero;
	
	Mientras control = Verdadero Hacer
		Escribir "";
		Escribir "Ingrese las posiciones mayores que 0 ó menores o iguales que 20 del vector que desea crear";
		Leer posiciones;
		
		Si posiciones > 0 y posiciones <= 20 Entonces
			llenarVector(vector, posiciones);
			imprimirVector(vector, posiciones);
			control <- Falso;
		SiNo
			Escribir "Por favor, ingrese un tamaño de vector dentro del rango establecido";
		FinSi
	FinMientras
FinProceso
