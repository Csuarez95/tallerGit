//Programa para solicitar datos de mascota.
//Elaborado por: Cristian Su�rez Acosta.
//Cantera nivel 1.
//Taller de variables e impresi�n.
//Ejercicio 5.
Proceso datosMascota
	//Declaraci�n de variables.
	Definir nombreMascota Como Caracter;
	Definir edadMascota Como Entero;
	Definir tipoMascota Como Caracter;
	Definir nombre Como Caracter;
	Definir apellido Como Caracter;
	
	//Registro de informaci�n por teclado.
	Escribir "Por favor, ingrese su nombre: ";
	Leer nombre;
	Escribir "Por favor, ingrese su apellido: " ;
	Leer apellido;
	Escribir "Por favor, ingrese el nombre de su mascota: ";
	Leer nombreMascota;
	Escribir "Por favor, ingrese la edad de su mascota en a�os: ";
	Leer edadMascota;
	Escribir "Por favor, ingrese el tipo de mascota: ";
	Leer tipoMascota;
	
	//Impresi�n de mensaje.
	Escribir nombreMascota, " es un(a) ", tipoMascota, ", el cual, tiene ", edadMascota, " a�os de edad y ", nombre, " ", apellido, " es actualmente su due�o(a)";
	Escribir "Muchas gracias";
	
FinProceso
