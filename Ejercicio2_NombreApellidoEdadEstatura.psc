//Programa para solicitar nombre, apellido, edad y estatura.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de variables e impresión.
//Ejercicio 2.
Proceso NombreApellidoEdadEstatura
	//Declaración de las variables
	Definir nombre Como Caracter;
	Definir apellido Como Caracter;
	Definir edad Como Entero;
	Definir estatura Como Real;
	
	//Registro de nombre por teclado.
	Escribir "Por favor, ingrese su nombre: ";
	Leer nombre;
	
	//Registro de apellido por teclado.
	Escribir "Por favor, ingrese su apellido: " ;
	Leer apellido;
	
	//Registro de edad por teclado.
	Escribir "Por favor, ingrese su edad: ";
	Leer edad;
	
	//Registro de estatura por teclado.
	Escribir "Por favor, ingrese su estatura en metros: " ;
	Leer estatura;
	
	//Impresión de mensaje.
	Escribir "Muchas gracias señor(a) ", nombre, " ", apellido;
	Escribir "Usted ha registrado ", edad, " años de edad y una estatura de ", estatura, " metros";
	
FinProceso
