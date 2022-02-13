//Programa ciclo Contactos telefono.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de ciclos.
//Funciones.
//Ejercicio 6.

SubProceso dato1 <- mensajeInicial()
	Definir dato1 Como Entero;
	Escribir "";
	Escribir "Bienvenido a su agenda telefónica, por favor seleccione una de las siguientes opciones";
	Escribir "1. Añadir contacto";
	Escribir "2. Buscar contacto";
	Escribir "3. Eliminar contacto";
	Escribir "4. Salir del sistema";
	Leer dato1;
FinSubProceso

SubProceso dato <- capturar ( mensaje )
	Definir dato Como Caracter;
	Escribir mensaje;
	Leer dato;
FinSubProceso

SubProceso nombre <- capturarNombre ()
	Definir nombre Como Caracter;
	nombre <- capturar("Ingrese el nombre de la persona que agregará como contacto: ");
FinSubProceso

SubProceso telefono <- capturarTelefono ()
	Definir telefono Como Caracter;
	telefono <- capturar("Ingrese el telefono de la persona: ");
FinSubProceso

SubProceso organizacion <- capturarOrganizacion ()
	Definir organizacion Como Caracter;
	Escribir "Se ha registrado el telefono de la persona";
	organizacion <- capturar("Ingrese la organización de la persona: ");
FinSubProceso

SubProceso dato2 <- agregar()
	Definir dato2 Como Entero;
	Escribir "¿Desea añadir más contactos?";
	Escribir "1. SI";
	Escribir "2. NO";
	Leer dato2;
FinSubProceso

SubProceso imprimirContactos ( persona )
	Escribir "Los contactos agregados son: ";
	Escribir "Nombre: ", persona[0];
	Escribir "Telefono: ", persona[1];
	Escribir "Organización: ", persona[2];
	Escribir "";
	Escribir "Nombre: ", persona[3];
	Escribir "Telefono: ", persona[4];
	Escribir "Organización: ", persona[5];
	Escribir "";
	Escribir "Nombre: ", persona[6];
	Escribir "Telefono: ", persona[7];
	Escribir "Organización: ", persona[8];
FinSubProceso

SubProceso dato3 <- menuEliminar(persona)
	Definir dato3 Como Entero;
	Escribir "Seleccione el contacto que desea eliminar: ";
	Escribir "1. ", persona[0];
	Escribir "2. ", persona[3];
	Escribir "3. ", persona[6];
	Escribir "4. Salir";
	Leer dato3;
FinSubProceso

SubProceso menuEliminarContactos(persona, contacto)
	Si contacto == 1 Entonces
		Escribir "Se ha borrado el contacto de ", persona[0];
		persona[0] <- "";
		persona[1] <- "";
		persona[2] <- "";
	SiNo
		Si contacto == 2 Entonces
			Escribir "Se ha borrado el contacto de ", persona[3];
			persona[3] <- "";
			persona[4] <- "";
			persona[5] <- "";
		SiNo
			Si contacto == 3 Entonces
				Escribir "Se ha borrado el contacto de ", persona[6];
				persona[6] <- "";
				persona[7] <- "";
				persona[8] <- "";
			FinSi
		FinSi
	FinSi
FinSubProceso

Proceso agendaTelefonica
	Definir control Como Logico;
	Definir contadorContactos Como Entero;
	Definir opcion Como Entero;
	Definir contadorTelefono Como Entero;
	Definir agregarContacto1 Como Entero;
	Definir agregarContacto2 Como Entero;
	Definir bandera1 Como Logico;
	Definir bandera2 Como Logico;
	Definir bandera3 Como Logico;
	Definir banderaAgregar Como Logico;
	Definir banderaPrincipal Como Logico;
	Definir eliminarContacto Como Entero;
	Definir busquedaContacto Como Caracter;
	Definir persona Como Caracter;
	Dimension persona[9];
	Definir i Como Entero;
	
	control <- Verdadero;
	contadorTelefono <- 0;
	bandera1 <- Verdadero;
	bandera2 <- Verdadero;
	bandera3 <- Verdadero;
	banderaAgregar <- Verdadero;
	banderaPrincipal <- Verdadero;
	
	Para i<-0 Hasta 8 Con Paso 1 Hacer
		persona[i] <- "";
	FinPara
	
	Mientras control == Verdadero Hacer
		
		opcion <- mensajeInicial();
		
		Segun opcion Hacer
			1:
				Si opcion == 1 y contadorTelefono == 3 Entonces
					Escribir "No es posible añadir más contactos, ha llegado al límite";
				SiNo
						Mientras banderaAgregar = Verdadero Hacer
							Mientras bandera1 = Verdadero Hacer
								persona[0] <- capturarNombre();
								persona[1] <- capturarTelefono();
								Si persona[1] == persona[4] o persona[1] == persona[7] Entonces
									Escribir "Usted ha ingresado un numero de telefono ya registrado, por favor, verifique y añada nuevamente el contacto";
									banderaAgregar <- Falso;
									bandera1 <- Falso;
								SiNo
									contadorTelefono <- contadorTelefono + 1;
									persona[2] <- capturarOrganizacion();
									Escribir "Contacto ", persona[0], " ha sido añadido";
									bandera1 <- Falso;
								FinSi
							FinMientras
							
							Si persona[3] = "" Entonces
								agregarContacto1 <- agregar();
							FinSi
							
							
							Si agregarContacto1 == 1 Entonces
								Mientras Bandera2 = Verdadero Hacer
									persona[3] <- capturarNombre();
									persona[4] <- capturarTelefono();
									Si persona[4] == persona[1] o persona[4] == persona[7] Entonces
										Escribir "Usted ha ingresado un numero de telefono ya registrado, por favor, verifique y añada nuevamente la información del contacto";
										banderaAgregar <- Falso;
									SiNo
										contadorTelefono <- contadorTelefono + 1;
										persona[5] <- capturarOrganizacion();
										Escribir "Contacto ", persona[3], " ha sido añadido";
										bandera2 <- Falso;
									FinSi
								FinMientras
								
								Si persona[6] = "" Entonces
									agregarContacto2 <- agregar();
								FinSi
								
								Si agregarContacto2 == 1 Entonces
									Mientras bandera3 = Verdadero Hacer
										persona[6] <- capturarNombre();
										persona[7] <- capturarTelefono();
										Si persona[7] == persona[1] o persona[7] == persona[4] Entonces
											Escribir "Usted ha ingresado un numero de telefono ya registrado, por favor, verifique y añada nuevamente el contacto";
											banderaAgregar <- Falso;
										SiNo
											contadorTelefono <- contadorTelefono + 1;
											persona[8] <- capturarOrganizacion();
											Escribir "Contacto ", persona[6], " ha sido añadido";
											Escribir "";
											Escribir "Ha llegado al número límite de contactos";
											bandera1 <- Falso;
											bandera2 <- Falso;
											bandera3 <- Falso;
											banderaAgregar <- Falso;
										FinSi
									FinMientras
								SiNo
									Si agregarContacto2 == 2 Entonces
										Escribir "Gracias, continue con el menú inicial";
										banderaAgregar <- Falso;
									SiNo
										Escribir "Opción inválida";
									FinSi
								FinSi
							SiNo
								Si agregarContacto1 == 2 Entonces
									Escribir "Gracias, continue con el menú inicial";
									banderaAgregar <- Falso;
								SiNo
									Escribir "Opcion inválida";
								FinSi
							FinSi
						FinMientras
						banderaAgregar <- Verdadero;
				FinSi
			2:
				Si persona[0] == "" y persona[3] == "" y persona[6] == "" Entonces
					Escribir "No hay contactos agregados en la agenda";
				SiNo
					imprimirContactos(persona);
				FinSi
			3:
				Si persona[0] == "" y persona[3] == "" y persona[6] == "" Entonces
					Escribir "No hay contactos para borrar";
				SiNo
					eliminarContacto <- menuEliminar(persona);
					
					Si eliminarContacto == 1 Entonces
						menuEliminarContactos(persona, eliminarContacto);
						bandera1 <- Verdadero;
						banderaAgregar <- Verdadero;
						contadorTelefono <- contadorTelefono - 1;
					SiNo
						Si eliminarContacto == 2 Entonces
							menuEliminarContactos(persona, eliminarContacto);
							bandera2 <- Verdadero;
							banderaAgregar <- Verdadero;
							contadorTelefono <- contadorTelefono - 1;
						SiNo
							Si eliminarContacto == 3 Entonces
								menuEliminarContactos(persona, eliminarContacto);
								bandera3 <- Verdadero;
								banderaAgregar <- Verdadero;
								contadorTelefono <- contadorTelefono - 1;
							SiNo
								Si eliminarContacto == 4 Entonces
									Escribir "Saliendo al menú principal";
								SiNo
									Escribir "Opción inválida, retornando a menú principal";
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
				
			4:
				Escribir "Gracias por usar la aplicación de agenda telefónica";
				control <- Falso;
			De Otro Modo:
				Escribir "Ha seleccionado una opción inválida, por favor, digita nuevamente";
		FinSegun
		
	FinMientras
	
FinProceso
