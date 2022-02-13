//Programa ciclo Para calculo de tabla de multiplicar.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de ciclos.
//Ejercicio 4.
Proceso tabla5
	
	Definir tabla Como Entero;
	Definir limite Como Entero;
	Definir i Como Entero;
	Definir operacion Como Entero;
	
	Escribir "Definir la tabla que quiere calcular";
	Leer tabla;
	Escribir "Definir hasta que número quiere calcular";
	Leer limite;
	Escribir "La tabla del ", tabla, " hasta el ", limite, " es: ";
	
	Para i<-1 Hasta limite Con Paso 1 Hacer
		operacion <- i * tabla;
		Escribir i, " x ", tabla, " = ", operacion;
	FinPara
FinProceso
