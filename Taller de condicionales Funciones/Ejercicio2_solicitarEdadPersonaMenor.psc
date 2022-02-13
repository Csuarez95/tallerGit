//Programa para determinar si una persona es o no mayor de edad.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de condicionales.
//Funciones.
//Ejercicio 2.

SubProceso edad <- capturaEdad ( mensaje )
	Definir edad Como Entero;
	Escribir mensaje;
	Leer edad;
FinSubProceso

SubProceso imprimirMensaje( comparacionEdad )
	Si comparacionEdad < 18 Entonces
		Escribir "Usted aún es un niño(a)";
	SiNo
		Escribir "Usted ya no es un niño(a)";
	FinSi
FinSubProceso

Proceso solicitarEdadPersonaMenor
	
	Definir edadPersona Como Entero;
	edadPersona <- capturaEdad("Por favor, ingrese su edad: ");
	imprimirMensaje(edadPersona);
	
FinProceso
