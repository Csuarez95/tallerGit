//Programa para determinar si una persona es o no mayor de edad.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de condicionales.
//Funciones.
//Ejercicio 1.
SubProceso imprimirMensaje( comparacionEdad )
	Si comparacionEdad >= 18 Entonces
		Escribir "Usted es mayor de edad";
	SiNo
		Escribir "Usted es menor de edad";
	FinSi
FinSubProceso

SubProceso edad <- capturaEdad ( mensaje )
	Definir edad Como Entero;
	Escribir mensaje;
	Leer edad;
FinSubProceso

Proceso solicitarEdadPersona
	Definir edadPersona Como Entero;
	edadPersona <- capturaEdad("Por favor, ingrese su edad: ");
	imprimirMensaje(edadPersona);
FinProceso
