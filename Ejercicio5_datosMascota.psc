//Programa para solicitar datos de mascota.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de variables e impresión.
//Ejercicio 5.
Proceso datosMascota
	//Declaración de variables.
	Definir nombreMascota Como Caracter;
	Definir edadMascota Como Entero;
	Definir tipoMascota Como Caracter;
	Definir nombre Como Caracter;
	Definir apellido Como Caracter;
	
	//Registro de información por teclado.
	Escribir "Por favor, ingrese su nombre: ";
	Leer nombre;
	Escribir "Por favor, ingrese su apellido: " ;
	Leer apellido;
	Escribir "Por favor, ingrese el nombre de su mascota: ";
	Leer nombreMascota;
	Escribir "Por favor, ingrese la edad de su mascota en años: ";
	Leer edadMascota;
	Escribir "Por favor, ingrese el tipo de mascota: ";
	Leer tipoMascota;
	
	//Impresión de mensaje.
	Escribir nombreMascota, " es un(a) ", tipoMascota, ", el cual, tiene ", edadMascota, " años de edad y ", nombre, " ", apellido, " es actualmente su dueño(a)";
	Escribir "Muchas gracias";
	
FinProceso
