//Programa droguería
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de condicionales.
//Ejercicio 5.
Proceso drogreriaMiSalud
	Definir producto Como Entero;
	Definir adquirirProducto Como Entero;
	Definir devolucion Como Entero;
	Definir opcion Como Entero;
	Definir inconveniente Como Entero;
	
	Escribir "Bienvenido a la droguería Mi Salud";
	Escribir "Por favor, seleccione una de las siguientes opciones";
	Escribir "1. Consultar precios";
	Escribir "2. Comprar productos";
	Escribir "3. Devoluciones";
	Leer opcion;
	
	Segun opcion Hacer
		1:
			Escribir "Los precios de los productos son: ";
			Escribir "1. Pastillas $500";
			Escribir "2. Jarabe $1000";
			Escribir "3. Pomada $3000";
			Escribir "¿Desea adquirir alguno de estos productos?";
			Escribir "1. SI";
			Escribir "2. NO";
			Leer producto;
			Si producto == 1 Entonces
				Escribir "Seleccione el producto que desea comprar";
				Leer adquirirProducto;
				Segun adquirirProducto Hacer
					1:
						Escribir "Usted ha decidido comprar pastillas";
					2:
						Escribir "Usted ha decidido comprar jarabe";
					3:
						Escribir "Usted ha decidido comprar pomada";
					De Otro Modo:
						Escribir "Opcion no disponible, gracias por visitarnos";
				FinSegun
			SiNo
				Si producto == 2 Entonces
					Escribir "Muchas gracias por visitarnos, esperamos que en una próxima ocasión adquiera uno de nuestros productos";
				SiNo
					Escribir "Opción no disponible, gracias por su visita";
				FinSi
			FinSi
			
		2:
			Escribir "Por favor, seleccione el producto a devolver";
			Escribir "1. Pastillas";
			Escribir "2. Jarabe";
			Escribir "3. Pomada";
			Leer devolucion;
			Segun devolucion Hacer
				1:
					Escribir "Usted ha devuelto las pastillas";
				2:
					Escribir "Usted ha devuelto el jarabe";
				3:
					Escribir "Usted ha devuelto la pomada";
				De Otro Modo:
					Escribir "Gracias por visitarnos";
			FinSegun
		3:
			Escribir "Muchas gracias por su visita";
		De Otro Modo:
			Escribir "Seleccionó una opción no disponible, gracias";
	FinSegun
	
	
FinProceso
