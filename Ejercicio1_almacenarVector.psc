//Programa almacenar datos vector.
//Elaborado por: Cristian Su�rez Acosta.
//Cantera nivel 1.
//Taller de arreglos.
//Ejercicio 1.
Proceso almacenarVector
	
	Definir i Como Entero;
	Definir j Como Entero;
	Definir vector Como Entero;
	Dimension vector[20];
	Definir posiciones Como Entero;
	Definir valores Como Entero;
	Definir control Como Logico;
	control <- Verdadero;
	
	//Ciclo para controlar las repeticiones.
	Mientras control = Verdadero Hacer
		Escribir "";
		Escribir "Ingrese las posiciones mayores que 0 � menores o iguales que 20 del vector que desea crear";
		Leer posiciones;
		
		Si posiciones > 0 y posiciones <= 20 Entonces
			//Llenar vector manualmente.
			Para i<-0 Hasta posiciones - 1 Con Paso 1 Hacer
				Escribir "Ingrese el n�mero para la posici�n ", i + 1;
				Leer valores;
				vector[i] <- valores;
			FinPara
			Escribir "";
			//Impresi�n de los valores almacenados del vector.
			Escribir "Los valores asignados son:";
			Para j<-0 Hasta posiciones - 1 Con Paso 1 Hacer
				Escribir "[", j, "] = ", vector[j]; 
			FinPara
			control <- Falso;
		SiNo
			Escribir "Por favor, ingrese un tama�o de vector dentro del rango establecido";
		FinSi
	FinMientras
	

	
FinProceso
