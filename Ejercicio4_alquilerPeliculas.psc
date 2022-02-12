//Programa video tienda.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de condicionales.
//Ejercicio 4.
Proceso alquilerPeliculas
	//Declaración variables
	Definir alquiler Como Entero;
	Definir peliculasDisponibles Como Entero;
	Definir recibirPelicula Como Entero;
	Definir opcion Como Entero;
	Definir inconveniente Como Entero;
	Definir comentario Como Caracter;
	
	//Mensaje inicial
	Escribir "Bienvenido a la video tienda El Porvenir";
	Escribir "Por favor, seleccione una de las siguientes opciones: ";
	Escribir "1. Consultar películas disponibles";
	Escribir "2. Recibir película";
	Escribir "3. Salir";
	Leer opcion;
	
	//Condiciones de acuerdo con opción
	Segun opcion Hacer
		1:
			Escribir "Las peliculas que se encuentran disponibles son: ";
			Escribir "1. Avatar";
			Escribir "2. Titanic";
			Escribir "3. Avengers";
			Escribir "¿Desea alquilar alguna de las peliculas disponibles?";
			Escribir "1. SI";
			Escribir "2. NO";
			Leer alquiler;
			
			//Condicional para determinar si alquila o no la película
			Si alquiler == 1 Entonces
				Escribir "Seleccione la película que desea alquilar";
				Leer peliculasDisponibles;
				
				//Selección de película
				Segun peliculasDisponibles Hacer
					1:
						Escribir "Puede retirar la pelicula de Avatar en la caja";
					2:
						Escribir "Puede retirar la pelicula de Titanic en la caja";
					3:
						Escribir "Puede retirar la pelicula de Avengers en la caja";
					De Otro Modo:
						Escribir "Opcion no disponible, gracias por visitarnos";
				FinSegun
				
			SiNo
				Si alquiler == 2 Entonces
					Escribir "Muchas gracias por visitarnos, esperamos que en una próxima ocasión disfrute de una película";
				SiNo
					Escribir "Opción no disponible, gracias por su visita";
				FinSi
				
			FinSi
			
			
		2:
			Escribir "Por favor, seleccione la pelicula que desea devolver";
			Escribir "1. Avatar";
			Escribir "2. Titanic";
			Escribir "3. Avengers";
			Leer recibirPelicula;
			
			//Devolución de película ala tienda
			Segun recibirPelicula Hacer
				1:
					Escribir "Usted ha devuelto la pelicula Avatar";
					Escribir "¿Tuvo inconvenientes con la reproducción de la película?";
					Escribir "1. SI";
					Escribir "2. NO";
					Leer inconveniente;
					Si inconveniente == 1 Entonces
						Escribir "Por favor, describa el inconveniente que tuvo";
						Leer comentario;
						Escribir "Gracias por su comentario";
					SiNo
						Si inconveniente == 2 Entonces
							Escribir "Gracias por visitar la video tienda El Porvenir";
						SiNo
							Escribir "Opcion inválida, inicie nuevamente";
						FinSi
						Escribir "Gracias por visitar la video tienda El Porvenir";
					FinSi
				2:
					Escribir "Usted ha devuelto la pelicula Titanic";
					Escribir "¿Tuvo inconvenientes con la reproducción de la película?";
					Escribir "1. SI";
					Escribir "2. NO";
					Leer inconveniente;
					Si inconveniente == 1 Entonces
						Escribir "Por favor, describa el inconveniente que tuvo";
						Leer comentario;
						Escribir "Gracias por su comentario";
					SiNo
						Si inconveniente == 2 Entonces
							Escribir "Gracias por visitar la video tienda El Porvenir";
						SiNo
							Escribir "Opcion inválida, inicie nuevamente";
						FinSi
						Escribir "Gracias por visitar la video tienda El Porvenir";
					FinSi
				3:
					Escribir "Usted ha devuelto la pelicula Avengers";
					Escribir "¿Tuvo inconvenientes con la reproducción de la película?";
					Escribir "1. SI";
					Escribir "2. NO";
					Leer inconveniente;
					Si inconveniente == 1 Entonces
						Escribir "Por favor, describa el inconveniente que tuvo";
						Leer comentario;
						Escribir "Gracias por su comentario";
					SiNo
						Si inconveniente == 2 Entonces
							Escribir "Gracias por visitar la video tienda El Porvenir";
						SiNo
							Escribir "Opcion inválida, inicie nuevamente";
						FinSi
					FinSi
				De Otro Modo:
					Escribir "Gracias por visitarnos";
			FinSegun
		3:
			Escribir "Gracias por visitar la video tienda El Porvenir";
		De Otro Modo:
			Escribir "Seleccionó una opción no disponible, gracias";
	FinSegun
	
FinProceso
