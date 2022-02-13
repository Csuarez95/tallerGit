//Programa video tienda.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de condicionales.
//Ejercicio 4.
SubProceso dato1 <- mensajeInicial(opcionF)
	Definir dato1 Como Entero;
	Escribir "Bienvenido a la video tienda El Porvenir";
	Escribir "Por favor, seleccione una de las siguientes opciones: ";
	Escribir "1. Consultar películas disponibles";
	Escribir "2. Recibir película";
	Escribir "3. Salir";
	Leer dato1;
FinSubProceso

SubProceso dato <- capturarOpcion (seleccion)
	Definir dato Como Entero;
	Escribir "Las peliculas que se encuentran disponibles son: ";
	Escribir "1. Avatar";
	Escribir "2. Titanic";
	Escribir "3. Avengers";
	Escribir "¿Desea alquilar alguna de las peliculas disponibles?";
	Escribir "1. SI";
	Escribir "2. NO";
	Leer dato;
FinSubProceso

SubProceso opcionAlquiler(alquilerPelicula)
	Definir peliculasDisponibles Como Entero;
	Si alquilerPelicula == 1 Entonces
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
		Si alquilerPelicula == 2 Entonces
			Escribir "Muchas gracias por visitarnos, esperamos que en una próxima ocasión disfrute de una película";
		SiNo
			Escribir "Opción no disponible, gracias por su visita";
		FinSi
	FinSi
FinSubProceso

SubProceso inconvenientesPelicula(recibirPeliculaF)
	Definir inconveniente Como Entero;
	Definir comentario Como Caracter;
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
FinSubProceso

SubProceso dato2 <- devolverPelicula(devolverPeliculaF)
	Definir dato2 Como Entero;
	Escribir "Por favor, seleccione la pelicula que desea devolver";
	Escribir "1. Avatar";
	Escribir "2. Titanic";
	Escribir "3. Avengers";
	Leer dato2;
FinSubProceso

Proceso alquilerPeliculas
	//Declaración variables
	Definir alquiler, peliculasDisponibles, recibirPelicula, opcion Como Entero;
	Definir comentario Como Caracter;
	Definir alquilerF Como Entero;
	Definir opcionF Como Entero;
	Definir recibirPeliculaF Como Entero;
	
	alquilerF <- 0;
	opcionF <- 0;
	recibirPeliculaF <- 0;
	
	opcion <- mensajeInicial(opcionF);
	
	//Condiciones de acuerdo con opción
	Segun opcion Hacer
		1:
			alquiler <- capturarOpcion(alquilerF);
			opcionAlquiler(alquiler);
		2:
			recibirPelicula <- devolverPelicula(recibirPeliculaF);
			
			//Devolución de película ala tienda
			Segun recibirPelicula Hacer
				1:
					Escribir "Usted ha devuelto la pelicula Avatar";
					inconvenientesPelicula(recibirPelicula);
				2:
					Escribir "Usted ha devuelto la pelicula Titanic";
					inconvenientesPelicula(recibirPelicula);
				3:
					Escribir "Usted ha devuelto la pelicula Avengers";
					inconvenientesPelicula(recibirPelicula);
				De Otro Modo:
					Escribir "Gracias por visitarnos";
			FinSegun
		3:
			Escribir "Gracias por visitar la video tienda El Porvenir";
		De Otro Modo:
			Escribir "Seleccionó una opción no disponible, gracias";
	FinSegun
	
FinProceso
