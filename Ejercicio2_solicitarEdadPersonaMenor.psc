//Programa para determinar si una persona es o no mayor de edad.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de condicionales.
//Ejercicio 2.
Proceso solicitarEdadPersonaMenor
	//Declaración de variables.
	Definir edadPersona Como Entero;
	
	//Lectura de datos por teclado.
	Escribir "Por favor, ingrese su edad: ";
	Leer edadPersona;
	
	//Condicional para imprimir mensaje.
	Si edadPersona < 18 Entonces
		Escribir "Usted aún es un niño(a)";
	SiNo
		Escribir "Usted ya no es un niño(a)";
	FinSi
	
FinProceso
