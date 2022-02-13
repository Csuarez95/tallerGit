//Programa ciclo Mientras-Hacer.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de ciclos.
//Ejercicio 5.
Proceso cicloMenu
	Definir control Como Logico;
	Definir nombre Como Caracter;
	Definir opcion Como Entero;
	
	control <- Verdadero;
	nombre <- "";
	
	Mientras control == Verdadero Hacer
		Escribir "Bienvenido al menú de usuario";
		Escribir "Seleccione una opción:";
		Escribir "1. Capturar nombre";
		Escribir "2. Saludar persona";
		Escribir "3. Salir del sistema";
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir "Por favor, ingrese su nombre: ";
				Leer nombre;
				Escribir "";
				Escribir "Bienvenido señor(a) ", nombre;
				Escribir "";
			2:
				Si nombre == "" Entonces
					Escribir "Usted no ha registrado su nombre, por favor seleccionar la opción 1";
				SiNo
					Escribir "Hola ", nombre, ", espero se encuentre bien el día de hoy";
					Escribir "";
				FinSi
			3:
				Si nombre == "" Entonces
					Escribir "Muchas gracias por su tiempo, vuelva pronto";
				SiNo
					Escribir "Muchas gracias por su tiempo señor ", nombre, ", vuelva pronto";
				FinSi
				
				control <- falso;
			De Otro Modo:
				Escribir "Ingresó opción inválida";
				Escribir "";
		FinSegun
		
	FinMientras

FinProceso
