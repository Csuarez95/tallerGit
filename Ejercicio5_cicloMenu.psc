//Programa ciclo Mientras-Hacer.
//Elaborado por: Cristian Su�rez Acosta.
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
		Escribir "Bienvenido al men� de usuario";
		Escribir "Seleccione una opci�n:";
		Escribir "1. Capturar nombre";
		Escribir "2. Saludar persona";
		Escribir "3. Salir del sistema";
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir "Por favor, ingrese su nombre: ";
				Leer nombre;
				Escribir "";
				Escribir "Bienvenido se�or(a) ", nombre;
				Escribir "";
			2:
				Si nombre == "" Entonces
					Escribir "Usted no ha registrado su nombre, por favor seleccionar la opci�n 1";
				SiNo
					Escribir "Hola ", nombre, ", espero se encuentre bien el d�a de hoy";
					Escribir "";
				FinSi
			3:
				Si nombre == "" Entonces
					Escribir "Muchas gracias por su tiempo, vuelva pronto";
				SiNo
					Escribir "Muchas gracias por su tiempo se�or ", nombre, ", vuelva pronto";
				FinSi
				
				control <- falso;
			De Otro Modo:
				Escribir "Ingres� opci�n inv�lida";
				Escribir "";
		FinSegun
		
	FinMientras

FinProceso
