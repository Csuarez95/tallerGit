//Programa ciclo Contactos telefono.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de ciclos.
//Ejercicio 6.
Proceso agendaTelefonica
	Definir nombre1 Como Caracter;
	Definir nombre2 Como Caracter;
	Definir nombre3 Como Caracter;
	Definir telefono1 Como Caracter;
	Definir telefono2 Como Caracter;
	Definir telefono3 Como Caracter;
	Definir organizacion1 Como Caracter;
	Definir organizacion2 Como Caracter;
	Definir organizacion3 Como Caracter;
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
	
	control <- Verdadero;
	contadorTelefono <- 0;
	bandera1 <- Verdadero;
	bandera2 <- Verdadero;
	bandera3 <- Verdadero;
	banderaAgregar <- Verdadero;
	banderaPrincipal <- Verdadero;
	telefono1 <- "";
	telefono2 <- "";
	telefono3 <- "";
	nombre1 <- "";
	nombre2 <- "";
	nombre3 <- "";
	organizacion1 <- "";
	organizacion2 <- "";
	organizacion3 <- "";
	
	Mientras control == Verdadero Hacer
		Escribir "";
		Escribir "Bienvenido a su agenda telefónica, por favor seleccione una de las siguientes opciones";
		Escribir "1. Añadir contacto";
		Escribir "2. Buscar contacto";
		Escribir "3. Eliminar contacto";
		Escribir "4. Salir del sistema";
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Si opcion == 1 y contadorTelefono == 3 Entonces
					Escribir "No es posible añadir más contactos, ha llegado al límite";
				SiNo
						Mientras banderaAgregar = Verdadero Hacer
							Mientras bandera1 = Verdadero Hacer
								Escribir "Por favor, ingrese el nombre del contacto que desea añadir en contacto 1";
								Leer nombre1;
								Escribir "Ingrese el número de teléfono";
								Leer telefono1;
								Si telefono1 == telefono2 o telefono1 == telefono3 Entonces
									Escribir "Usted ha ingresado un numero de telefono ya registrado, por favor, verifique y añada nuevamente el contacto";
									banderaAgregar <- Falso;
									bandera1 <- Falso;
								SiNo
									Escribir "Se ha registrado el telefono de la persona";
									contadorTelefono <- contadorTelefono + 1;
									//Escribir "Contador es: ", contadorTelefono;
									Escribir "Ingrese la organización";
									Leer organizacion1;
									Escribir "Contacto ", nombre1, " ha sido añadido";
									bandera1 <- Falso;
								FinSi
							FinMientras
							
							Si nombre2 = "" Entonces
								Escribir "¿Desea añadir más contactos?";
								Escribir "1. SI";
								Escribir "2. NO";
								Leer agregarContacto1;
							FinSi
							
							
							Si agregarContacto1 == 1 Entonces
								Mientras Bandera2 = Verdadero Hacer
									Escribir "Por favor, ingrese el nombre del contacto que desea añadir en contacto 2";
									Leer nombre2;
									Escribir "Ingrese el número de teléfono";
									Leer telefono2;
									Si telefono2 == telefono1 o telefono2 == telefono3 Entonces
										Escribir "Usted ha ingresado un numero de telefono ya registrado, por favor, verifique y añada nuevamente la información del contacto";
										banderaAgregar <- Falso;
									SiNo
										Escribir "Se ha registrado el telefono de la persona";
										contadorTelefono <- contadorTelefono + 1;
										//Escribir "Contador es: ", contadorTelefono;
										Escribir "Ingrese la organización";
										Leer organizacion2;
										Escribir "Contacto ", nombre2, " ha sido añadido";
										bandera2 <- Falso;
									FinSi
								FinMientras
								
								Si nombre3 = "" Entonces
									Escribir "¿Desea añadir más contactos?";
									Escribir "1. SI";
									Escribir "2. NO";
									Leer agregarContacto2;
								FinSi
								
								
								
								Si agregarContacto2 == 1 Entonces
									Mientras bandera3 = Verdadero Hacer
										Escribir "Por favor, ingrese el nombre del contacto que desea añadir en contacto 3";
										Leer nombre3;
										Escribir "Ingrese el número de teléfono";
										Leer telefono3;
										Si telefono3 == telefono1 o telefono3 == telefono2 Entonces
											Escribir "Usted ha ingresado un numero de telefono ya registrado, por favor, verifique y añada nuevamente el contacto";
											banderaAgregar <- Falso;
										SiNo
											Escribir "Se ha registrado el telefono de la persona";
											contadorTelefono <- contadorTelefono + 1;
											//Escribir "Contador es: ", contadorTelefono;
											Escribir "Ingrese la organización";
											Leer organizacion3;
											Escribir "Contacto ", nombre3, " ha sido añadido";
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
				Si nombre1 == "" y nombre2 == "" y nombre3 == "" Entonces
					Escribir "No hay contactos agregados en la agenda";
				SiNo
					Escribir "Los contactos agregados son: ";
					Escribir "Nombre: ", nombre1;
					Escribir "Telefono: ", telefono1;
					Escribir "Organización: ", organizacion1;
					Escribir "";
					Escribir "Nombre: ", nombre2;
					Escribir "Telefono: ", telefono2;
					Escribir "Organización: ", organizacion2;
					Escribir "";
					Escribir "Nombre: ", nombre3;
					Escribir "Telefono: ", telefono3;
					Escribir "Organización: ", organizacion3;
					Escribir "";
				FinSi
			3:
				Si nombre1 == "" y nombre2 == "" y nombre3 == "" Entonces
					Escribir "No hay contactos para borrar";
				SiNo
					Escribir "Seleccione el contacto que desea eliminar: ";
					Escribir "1. ", nombre1;
					Escribir "2. ", nombre2;
					Escribir "3. ", nombre3;
					Escribir "4. Salir";
					Leer eliminarContacto;
					Si eliminarContacto == 1 Entonces
						Escribir "Se ha borrado el contacto de ", nombre1;
						nombre1 <- "";
						telefono1 <- "";
						organizacion1 <- "";
						bandera1 <- Verdadero;
						banderaAgregar <- Verdadero;
						contadorTelefono <- contadorTelefono - 1;
					SiNo
						Si eliminarContacto == 2 Entonces
							Escribir "Se ha borrado el contacto de ", nombre2;
							nombre2 <- "";
							telefono2 <- "";
							organizacion2 <- "";
							bandera2 <- Verdadero;
							banderaAgregar <- Verdadero;
							contadorTelefono <- contadorTelefono - 1;
						SiNo
							Si eliminarContacto == 3 Entonces
								Escribir "Se ha borrado el contacto de ", nombre3;
								nombre3 <- "";
								telefono3 <- "";
								organizacion3 <- "";
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
