//Programa para solicitar nombres y apellidos de familia.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de variables e impresión.
//Ejercicio 3.
Proceso registroFamilia
	//Declaración de variables.
	Definir nombreHijo Como Caracter;
	Definir apellidoHijo Como Caracter;
	Definir nombreMadre Como Caracter;
	Definir apellidoMadre Como Caracter;
	Definir nombrePadre Como Caracter;
	Definir apellidoPadre Como Caracter;
	
	//Registro de nombre y apellido del hijo por teclado.
	Escribir "Por favor, ingrese su nombre: ";
	Leer nombreHijo;
	Escribir "Por favor, ingrese su apellido: " ;
	Leer apellidoHijo;
	
	//Registro de nombre y apellido de la madre por teclado.
	Escribir "Por favor, ingrese el nombre de su madre: ";
	Leer nombreMadre;
	Escribir "Por favor, ingrese su apellido de su madre: " ;
	Leer apellidoMadre;
	
	//Registro de nombre y apellido del padre por teclado.
	Escribir "Por favor, ingrese su nombre de su padre: ";
	Leer nombrePadre;
	Escribir "Por favor, ingrese su apellido de su padre: " ;
	Leer apellidoPadre;
	
	//Impresión de mensaje
	Escribir "Usted ha registrado la siguiente información: ";
	Escribir "Yo ", nombreHijo, " ", apellidoHijo, ", soy hijo de ", nombreMadre, " ", apellidoMadre, " y ", nombrePadre, " ", apellidoPadre;
	Escribir "Muchas gracias";
	
FinProceso
