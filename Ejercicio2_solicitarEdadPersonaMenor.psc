//Programa para determinar si una persona es o no mayor de edad.
//Elaborado por: Cristian Su�rez Acosta.
//Cantera nivel 1.
//Taller de condicionales.
//Ejercicio 2.
Proceso solicitarEdadPersonaMenor
	//Declaraci�n de variables.
	Definir edadPersona Como Entero;
	
	//Lectura de datos por teclado.
	Escribir "Por favor, ingrese su edad: ";
	Leer edadPersona;
	
	//Condicional para imprimir mensaje.
	Si edadPersona < 18 Entonces
		Escribir "Usted a�n es un ni�o(a)";
	SiNo
		Escribir "Usted ya no es un ni�o(a)";
	FinSi
	
FinProceso
