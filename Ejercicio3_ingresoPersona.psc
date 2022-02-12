//Programa para determinar el ingreso de una persona a la fiesta
//Elaborado por: Cristian Su�rez Acosta.
//Cantera nivel 1.
//Taller de condicionales.
//Ejercicio 3.
Proceso ingresoPersona
	//Declaraci�n de variables.
	Definir nombre Como Caracter;
	Definir apellido Como Caracter;
	Definir edadPersona Como Entero;
	
	//Lectura de datos por teclado.
	Escribir "Por favor, ingrese su nombre: ";
	Leer nombre;
	Escribir "Por favor, ingrese su apellido: ";
	Leer apellido;
	Escribir "Por favor, ingrese su edad: ";
	Leer edadPersona;
	
	//Condicional para imprimir mensaje.
	Si edadPersona >= 18 Entonces
		Escribir nombre, " ", apellido, " usted es mayor de edad, por lo tanto puede entrar a la fiesta";
	SiNo
		Escribir nombre, " ", apellido, " usted es menor de edad, por lo tanto no puede entrar a la fiesta, por favor devu�lvase a su casa";
	FinSi
	
	
FinProceso
