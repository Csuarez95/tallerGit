//Programa escuela automovilistica.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de ciclos.
//Ejercicio 8.
Proceso escuelaAutomovilistica
	Definir nombre1 Como Caracter;
	Definir nombre2 Como Caracter;
	Definir nombre3 Como Caracter;
	Definir nombre4 Como Caracter;
	Definir nombre5 Como Caracter;
	Definir nombre6 Como Caracter;
	Definir nombre7 Como Caracter;
	Definir nombre8 Como Caracter;
	Definir edad1 Como Entero;
	Definir edad2 Como Entero;
	Definir edad3 Como Entero;
	Definir edad4 Como Entero;
	Definir edad5 Como Entero;
	Definir edad6 Como Entero;
	Definir edad7 Como Entero;
	Definir edad8 Como Entero;
	Definir resultadosPrueba1 Como Caracter;
	Definir resultadosPrueba2 Como Caracter;
	Definir resultadosPrueba3 Como Caracter;
	Definir resultadosPrueba4 Como Caracter;
	Definir resultadosPrueba5 Como Caracter;
	Definir resultadosPrueba6 Como Caracter;
	Definir resultadosPrueba7 Como Caracter;
	Definir resultadosPrueba8 Como Caracter;
	Definir control Como Logico;
	Definir opcion Como Entero;
	Definir continuarTramite Como Entero;
	Definir banderaAgregar Como Logico;
	Definir bandera1 Como Logico;
	Definir bandera2 Como Logico;
	Definir bandera3 Como Logico;
	Definir bandera4 Como Logico;
	Definir bandera5 Como Logico;
	Definir bandera6 Como Logico;
	Definir bandera7 Como Logico;
	Definir bandera8 Como Logico;
	Definir contadorUsuarios Como Entero;
	Definir activacion1 Como Entero;
	Definir activacion2 Como Entero;
	Definir activacion3 Como Entero;
	Definir activacion4 Como Entero;
	Definir activacion5 Como Entero;
	Definir activacion6 Como Entero;
	Definir activacion7 Como Entero;
	Definir activacion8 Como Entero;
	Definir agregarUsuario1 Como Entero;
	Definir agregarUsuario2 Como Entero;
	Definir agregarUsuario3 Como Entero;
	Definir agregarUsuario4 Como Entero;
	Definir agregarUsuario5 Como Entero;
	Definir agregarUsuario6 Como Entero;
	Definir agregarUsuario7 Como Entero;
	Definir agregarUsuario8 Como Entero;
	
	nombre1 <- "";
	nombre2 <- "";
	nombre3 <- "";
	nombre4 <- "";
	nombre5 <- "";
	nombre6 <- "";
	nombre7 <- "";
	nombre8 <- "";
	edad1 <- 0;
	edad2 <- 0;
	edad3 <- 0;
	edad4 <- 0;
	edad5 <- 0;
	edad6 <- 0;
	edad7 <- 0;
	edad8 <- 0;
	resultadosPrueba1 <- "";
	resultadosPrueba2 <- "";
	resultadosPrueba3 <- "";
	resultadosPrueba4 <- "";
	resultadosPrueba5 <- "";
	resultadosPrueba6 <- "";
	resultadosPrueba7 <- "";
	resultadosPrueba8 <- "";
	control <- Verdadero;
	banderaAgregar <- Verdadero;
	bandera1 <- Verdadero;
	bandera2 <- Verdadero;
	bandera3 <- Verdadero;
	bandera4 <- Verdadero;
	bandera5 <- Verdadero;
	bandera6 <- Verdadero;
	bandera7 <- Verdadero;
	bandera8 <- Verdadero;
	contadorUsuarios <- 0;
	activacion1 <- 1;
	activacion2 <- 1;
	activacion3 <- 1;
	activacion4 <- 1;
	activacion5 <- 1;
	activacion6 <- 1;
	activacion7 <- 1;
	activacion8 <- 1;
	
	
	Mientras control = Verdadero Hacer
		Escribir "";
		Escribir "Bienvenido a la escuela automovilística El Maestro";
		Escribir "Seleccione una de las siguientes opciones";
		Escribir "1. Registrar usuarios";
		Escribir "2. Consultar usuarios";
		Escribir "3. Pasar usuario para trámite de licencia";
		Escribir "4. Salir";
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Si opcion == 1 y contadorUsuarios = 8 Entonces
					Escribir "No es posible realizar el ingreso de más usuarios, ya se ha llegado al límite";
				SiNo
					Mientras banderaAgregar = Verdadero Hacer
						Mientras bandera1 = Verdadero Hacer
							Escribir "Por favor, ingrese el nombre del usuario 1 para registrar";
							Leer nombre1;
							Escribir "Ingrese la edad de la persona";
							Leer edad1;
							Escribir "¿El usuario ha aprobado el curso? Escriba SI o NO";
							Leer resultadosPrueba1;
							Si resultadosPrueba1 == "si" O resultadosPrueba1 == "SI" Entonces
								Escribir "Se ha registrado el usuario ", nombre1, " en la plataforma";
								banderaAgregar <- Falso;
								bandera1 <- Falso;
							SiNo
								Si resultadosPrueba1 == "no" o resultadosPrueba1 == "NO" Entonces
									Escribir "Se ha registrado el usuario ", nombre1, " en la plataforma";
									Escribir "Aclarar al usuario que si desea adquirir la licencia debe aprobar la prueba para continuar con el trámite";
								FinSi
							FinSi
							contadorUsuarios <- contadorUsuarios + 1;
							banderaAgregar <- Falso;
							bandera1 <- Falso;
						FinMientras
						
						Si nombre2 = "" y activacion1 = 1 Entonces
							Escribir "¿Desea agregar más usuarios?";
							Escribir "1. SI";
							Escribir "2. NO";
							Leer agregarUsuario1;
							
							Si agregarUsuario1 == 1 Entonces
								Mientras bandera2 = Verdadero Hacer
									Escribir "Por favor, ingrese el nombre del usuario 2 para registrar";
									Leer nombre2;
									Escribir "Ingrese la edad de la persona";
									Leer edad2;
									Escribir "¿El usuario ha aprobado el curso? Escriba SI o NO";
									Leer resultadosPrueba2;
									Si resultadosPrueba2 == "si" O resultadosPrueba2 == "SI" Entonces
										Escribir "Se ha registrado el usuario ", nombre2, " en la plataforma";
										banderaAgregar <- Falso;
										bandera2 <- Falso;
									SiNo
										Si resultadosPrueba2 == "no" o resultadosPrueba2 == "NO" Entonces
											Escribir "Se ha registrado el usuario ", nombre1, " en la plataforma";
											Escribir "Aclarar al usuario que si desea adquirir la licencia debe aprobar la prueba para continuar con el trámite";
										FinSi
									FinSi
									contadorUsuarios <- contadorUsuarios + 1;
									banderaAgregar <- Falso;
									bandera2 <- Falso;
									activacion2 <- 0;
								FinMientras
							SiNo
								Si agregarUsuario1 == 2 Entonces
									Escribir "Gracias, continue con el menú inicial";
									banderaAgregar <- Falso;
								SiNo
									Escribir "Opción inválida";
								FinSi
							FinSi
						SiNo
							Escribir "";
						FinSi
						
						Si nombre3 = "" y activacion2 = 1 Entonces
							Escribir "¿Desea agregar más usuarios?";
							Escribir "1. SI";
							Escribir "2. NO";
							Leer agregarUsuario2;
							
							Si agregarUsuario2 == 1 Entonces
								Mientras bandera3 = Verdadero Hacer
									Escribir "Por favor, ingrese el nombre del usuario 3 para registrar";
									Leer nombre3;
									Escribir "Ingrese la edad de la persona";
									Leer edad3;
									Escribir "¿El usuario ha aprobado el curso? Escriba SI o NO";
									Leer resultadosPrueba3;
									Si resultadosPrueba3 == "si" O resultadosPrueba3 == "SI" Entonces
										Escribir "Se ha registrado el usuario ", nombre3, " en la plataforma";
										banderaAgregar <- Falso;
										bandera3 <- Falso;
									SiNo
										Si resultadosPrueba3 == "no" o resultadosPrueba3 == "NO" Entonces
											Escribir "Se ha registrado el usuario ", nombre3, " en la plataforma";
											Escribir "Aclarar al usuario que si desea adquirir la licencia debe aprobar la prueba para continuar con el trámite";
										FinSi
									FinSi
									contadorUsuarios <- contadorUsuarios + 1;
									banderaAgregar <- Falso;
									bandera3 <- Falso;
									activacion2 <- 0;
								FinMientras
							SiNo
								Si agregarUsuario2 == 2 Entonces
									Escribir "Gracias, continue con el menú inicial";
									banderaAgregar <- Falso;
								SiNo
									Escribir "Opción inválida";
								FinSi
							FinSi
						SiNo
							Escribir "";
						FinSi
						
						Si nombre4 = "" y activacion3 = 1 Entonces
							Escribir "¿Desea agregar más usuarios?";
							Escribir "1. SI";
							Escribir "2. NO";
							Leer agregarUsuario3;
							
							Si agregarUsuario3 == 1 Entonces
								Mientras bandera4 = Verdadero Hacer
									Escribir "Por favor, ingrese el nombre del usuario 4 para registrar";
									Leer nombre4;
									Escribir "Ingrese la edad de la persona";
									Leer edad4;
									Escribir "¿El usuario ha aprobado el curso? Escriba SI o NO";
									Leer resultadosPrueba4;
									Si resultadosPrueba4 == "si" O resultadosPrueba4 == "SI" Entonces
										Escribir "Se ha registrado el usuario ", nombre4, " en la plataforma";
										banderaAgregar <- Falso;
										bandera4 <- Falso;
									SiNo
										Si resultadosPrueba4 == "no" o resultadosPrueba4 == "NO" Entonces
											Escribir "Se ha registrado el usuario ", nombre4, " en la plataforma";
											Escribir "Aclarar al usuario que si desea adquirir la licencia debe aprobar la prueba para continuar con el trámite";
										FinSi
									FinSi
									contadorUsuarios <- contadorUsuarios + 1;
									banderaAgregar <- Falso;
									bandera4 <- Falso;
									activacion3 <- 0;
								FinMientras
							SiNo
								Si agregarUsuario3 == 2 Entonces
									Escribir "Gracias, continue con el menú inicial";
									banderaAgregar <- Falso;
								SiNo
									Escribir "Opción inválida";
								FinSi
							FinSi
						SiNo
							Escribir "";
						FinSi
						
						Si nombre5 = "" y activacion4 = 1 Entonces
							Escribir "¿Desea ingresar más vehículos?";
							Escribir "1. SI";
							Escribir "2. NO";
							Leer agregarUsuario4;
							
							Si agregarUsuario4 == 1 Entonces
								Mientras bandera5 = Verdadero Hacer
									Escribir "Por favor, ingrese el nombre del usuario 5 para registrar";
									Leer nombre5;
									Escribir "Ingrese la edad de la persona";
									Leer edad5;
									Escribir "¿El usuario ha aprobado el curso? Escriba SI o NO";
									Leer resultadosPrueba5;
									Si resultadosPrueba5 == "si" O resultadosPrueba5 == "SI" Entonces
										Escribir "Se ha registrado el usuario ", nombre5, " en la plataforma";
										banderaAgregar <- Falso;
										bandera5 <- Falso;
									SiNo
										Si resultadosPrueba5 == "no" o resultadosPrueba5 == "NO" Entonces
											Escribir "Se ha registrado el usuario ", nombre5, " en la plataforma";
											Escribir "Aclarar al usuario que si desea adquirir la licencia debe aprobar la prueba para continuar con el trámite";
										FinSi
									FinSi
									contadorUsuarios <- contadorUsuarios + 1;
									banderaAgregar <- Falso;
									bandera5 <- Falso;
									activacion4 <- 0;
								FinMientras
							SiNo
								Si agregarUsuario4 == 2 Entonces
									Escribir "Gracias, continue con el menú inicial";
									banderaAgregar <- Falso;
								SiNo
									Escribir "Opción inválida";
								FinSi
							FinSi
						SiNo
							Escribir "";
						FinSi
						
						Si nombre6 = "" y activacion5 = 1 Entonces
							Escribir "¿Desea ingresar más vehículos?";
							Escribir "1. SI";
							Escribir "2. NO";
							Leer agregarUsuario6;
							
							Si agregarUsuario6 = 1 Entonces
								Mientras bandera6 = Verdadero Hacer
									Escribir "Por favor, ingrese el nombre del usuario 6 para registrar";
									Leer nombre6;
									Escribir "Ingrese la edad de la persona";
									Leer edad6;
									Escribir "¿El usuario ha aprobado el curso? Escriba SI o NO";
									Leer resultadosPrueba6;
									Si resultadosPrueba6 == "si" O resultadosPrueba6 == "SI" Entonces
										Escribir "Se ha registrado el usuario ", nombre6, " en la plataforma";
										banderaAgregar <- Falso;
										bandera6 <- Falso;
									SiNo
										Si resultadosPrueba6 == "no" o resultadosPrueba6 == "NO" Entonces
											Escribir "Se ha registrado el usuario ", nombre6, " en la plataforma";
											Escribir "Aclarar al usuario que si desea adquirir la licencia debe aprobar la prueba para continuar con el trámite";
										FinSi
									FinSi
									contadorUsuarios <- contadorUsuarios + 1;
									banderaAgregar <- Falso;
									bandera6 <- Falso;
									activacion5 <- 0;
								FinMientras
							SiNo
								Si agregarUsuario6 == 2 Entonces
									Escribir "Gracias, continue con el menú inicial";
									banderaAgregar <- Falso;
								SiNo
									Escribir "Opción inválida";
								FinSi
							FinSi
						SiNo
							Escribir "";
						FinSi
						
						Si nombre7 = "" y activacion6 = 1 Entonces
							Escribir "¿Desea ingresar más vehículos?";
							Escribir "1. SI";
							Escribir "2. NO";
							Leer agregarUsuario7;
							
							Si agregarUsuario7 = 1 Entonces
								Mientras bandera7 = Verdadero Hacer
									Escribir "Por favor, ingrese el nombre del usuario 7 para registrar";
									Leer nombre7;
									Escribir "Ingrese la edad de la persona";
									Leer edad7;
									Escribir "¿El usuario ha aprobado el curso? Escriba SI o NO";
									Leer resultadosPrueba7;
									Si resultadosPrueba7 == "si" O resultadosPrueba7 == "SI" Entonces
										Escribir "Se ha registrado el usuario ", nombre7, " en la plataforma";
										banderaAgregar <- Falso;
										bandera7 <- Falso;
									SiNo
										Si resultadosPrueba7 == "no" o resultadosPrueba7 == "NO" Entonces
											Escribir "Se ha registrado el usuario ", nombre7, " en la plataforma";
											Escribir "Aclarar al usuario que si desea adquirir la licencia debe aprobar la prueba para continuar con el trámite";
										FinSi
									FinSi
									contadorUsuarios <- contadorUsuarios + 1;
									banderaAgregar <- Falso;
									bandera7 <- Falso;
									activacion6 <- 0;
								FinMientras
							SiNo
								Si agregarUsuario7 == 2 Entonces
									Escribir "Gracias, continue con el menú inicial";
									banderaAgregar <- Falso;
								SiNo
									Escribir "Opción inválida";
								FinSi
							FinSi
						SiNo
							Escribir "";
						FinSi
						
						Si nombre8 = "" y activacion7 = 1 Entonces
							Escribir "¿Desea ingresar más vehículos?";
							Escribir "1. SI";
							Escribir "2. NO";
							Leer agregarUsuario8;
							
							Si agregarUsuario8 = 1 Entonces
								Mientras bandera8 = Verdadero Hacer
									Escribir "Por favor, ingrese el nombre del usuario 8 para registrar";
									Leer nombre8;
									Escribir "Ingrese la edad de la persona";
									Leer edad8;
									Escribir "¿El usuario ha aprobado el curso? Escriba SI o NO";
									Leer resultadosPrueba8;
									Si resultadosPrueba8 == "si" O resultadosPrueba8 == "SI" Entonces
										Escribir "Se ha registrado el usuario ", nombre8, " en la plataforma";
										banderaAgregar <- Falso;
										bandera8 <- Falso;
									SiNo
										Si resultadosPrueba8 == "no" o resultadosPrueba8 == "NO" Entonces
											Escribir "Se ha registrado el usuario ", nombre8, " en la plataforma";
											Escribir "Aclarar al usuario que si desea adquirir la licencia debe aprobar la prueba para continuar con el trámite";
										FinSi
									FinSi
									contadorUsuarios <- contadorUsuarios + 1;
									banderaAgregar <- Falso;
									bandera8 <- Falso;
									activacion7 <- 0;
								FinMientras
							SiNo
								Si agregarUsuario8 == 2 Entonces
									Escribir "Gracias, continue con el menú inicial";
									banderaAgregar <- Falso;
								SiNo
									Escribir "Opción inválida";
								FinSi
							FinSi
						SiNo
							Escribir "";
						FinSi
						
					FinMientras
					banderaAgregar <- Verdadero;
				FinSi
				
			2:
				Si nombre1 == "" y nombre2 == "" y nombre3 == "" Entonces
					Escribir "No hay usuarios agregados en la aplicación";
				SiNo
					Escribir "Los contactos agregados son: ";
					Escribir "Nombre: ", nombre1;
					Escribir "Edad: ", edad1;
					Escribir "¿Aprobó curso? ", resultadosPrueba1;
					Escribir "";
					Escribir "Nombre: ", nombre2;
					Escribir "Edad: ", edad2;
					Escribir "¿Aprobó curso? ", resultadosPrueba2;
					Escribir "";
					Escribir "Nombre: ", nombre3;
					Escribir "Edad: ", edad3;
					Escribir "¿Aprobó curso? ", resultadosPrueba3;
					Escribir "";
					Escribir "Nombre: ", nombre4;
					Escribir "Edad: ", edad4;
					Escribir "¿Aprobó curso? ", resultadosPrueba4;
					Escribir "";
					Escribir "Nombre: ", nombre5;
					Escribir "Edad: ", edad5;
					Escribir "¿Aprobó curso? ", resultadosPrueba5;
					Escribir "";
					Escribir "Nombre: ", nombre6;
					Escribir "Edad: ", edad6;
					Escribir "¿Aprobó curso? ", resultadosPrueba6;
					Escribir "";
					Escribir "Nombre: ", nombre7;
					Escribir "Edad: ", edad7;
					Escribir "¿Aprobó curso? ", resultadosPrueba7;
					Escribir "";
					Escribir "Nombre: ", nombre8;
					Escribir "Edad: ", edad8;
					Escribir "¿Aprobó curso? ", resultadosPrueba8;
					Escribir "";
				FinSi
			3:
				Si nombre1 == "" y nombre2 == "" y nombre3 == "" y nombre4 == "" y nombre5 == "" y nombre6 = "" y nombre7 == "" y nombre8 == "" Entonces
					Escribir "No hay usuarios para continuar con el trámite de la licencia de conducción";
				SiNo
					Escribir "Seleccione el usuario que puede continuar con el trámite de la licencia: ";
					Escribir "1. ", nombre1, " ¿Aprobó curso? ", resultadosPrueba1;
					Escribir "2. ", nombre2, " ¿Aprobó curso? ", resultadosPrueba2;
					Escribir "3. ", nombre3, " ¿Aprobó curso? ", resultadosPrueba3;
					Escribir "4. ", nombre4, " ¿Aprobó curso? ", resultadosPrueba4;
					Escribir "5. ", nombre5, " ¿Aprobó curso? ", resultadosPrueba5;
					Escribir "6. ", nombre6, " ¿Aprobó curso? ", resultadosPrueba6;
					Escribir "7. ", nombre7, " ¿Aprobó curso? ", resultadosPrueba7;
					Escribir "8. ", nombre8, " ¿Aprobó curso? ", resultadosPrueba8;
					Escribir "9. Salir";
					Leer continuarTramite;
					Si continuarTramite == 1 Entonces
						Escribir "Se ha enviado un correo al usuario ", nombre1, " para continuar con el trámite de la licencia";
						nombre1 <- "";
						edad1 <- 0;
						resultadosPrueba1 <- "";
						bandera1 <- Verdadero;
						banderaAgregar <- Verdadero;
						contadorUsuarios <- contadorUsuarios - 1;
					SiNo
						Si continuarTramite == 2 Entonces
							Escribir "Se ha enviado un correo al usuario ", nombre2, " para continuar con el trámite de la licencia";
							nombre2 <- "";
							edad2 <- 0;
							resultadosPrueba2 <- "";
							bandera2 <- Verdadero;
							banderaAgregar <- Verdadero;
							contadorUsuarios <- contadorUsuarios - 1;
							activacion1 <- 1;
						SiNo
							Si continuarTramite == 3 Entonces
								Escribir "Se ha enviado un correo al usuario ", nombre3, " para continuar con el trámite de la licencia";
								nombre3 <- "";
								edad3 <- 0;
								resultadosPrueba3 <- "";
								bandera3 <- Verdadero;
								banderaAgregar <- Verdadero;
								contadorUsuarios <- contadorUsuarios - 1;
								activacion2 <- 1;
							SiNo
								Si continuarTramite == 4 Entonces
									Escribir "Se ha enviado un correo al usuario ", nombre4, " para continuar con el trámite de la licencia";
									nombre4 <- "";
									edad4 <- 0;
									resultadosPrueba4 <- "";
									bandera4 <- Verdadero;
									banderaAgregar <- Verdadero;
									contadorUsuarios <- contadorUsuarios - 1;
									activacion3 <- 1;
								SiNo
									Si continuarTramite == 5 Entonces
										Escribir "Se ha enviado un correo al usuario ", nombre5, " para continuar con el trámite de la licencia";
										nombre5 <- "";
										edad5 <- 0;
										resultadosPrueba5 <- "";
										bandera5 <- Verdadero;
										banderaAgregar <- Verdadero;
										contadorUsuarios <- contadorUsuarios - 1;
										activacion4 <- 1;
									SiNo
										Si continuarTramite == 6 Entonces
											Escribir "Se ha enviado un correo al usuario ", nombre6, " para continuar con el trámite de la licencia";
											nombre6 <- "";
											edad6 <- 0;
											resultadosPrueba6 <- "";
											bandera6 <- Verdadero;
											banderaAgregar <- Verdadero;
											contadorUsuarios <- contadorUsuarios - 1;
											activacion5 <- 1;
										SiNo
											Si continuarTramite == 7 Entonces
												Escribir "Se ha enviado un correo al usuario ", nombre7, " para continuar con el trámite de la licencia";
												nombre7 <- "";
												edad7 <- 0;
												resultadosPrueba7 <- "";
												bandera7 <- Verdadero;
												banderaAgregar <- Verdadero;
												contadorUsuarios <- contadorUsuarios - 1;
												activacion6 <- 1;
											SiNo
												Si continuarTramite == 8 Entonces
													Escribir "Se ha enviado un correo al usuario ", nombre8, " para continuar con el trámite de la licencia";
													nombre8 <- "";
													edad8 <- 0;
													resultadosPrueba8 <- "";
													bandera8 <- Verdadero;
													banderaAgregar <- Verdadero;
													contadorUsuarios <- contadorUsuarios - 1;
													activacion7 <- 1;
												SiNo
													Si continuarTramite == 9 Entonces
														Escribir "Saliendo al menú inicial";
													SiNo
														Escribir "Opción inválida, retornando al menú inicial";
													FinSi
													
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			4:
				Escribir "Gracias por usar la aplicación de la escuela automovilística El Maestro";
				control <- Falso;
			De Otro Modo:
				Escribir "Ha seleccionado una opción inválida, por favor, digita nuevamente";
		FinSegun
		
	FinMientras
	
FinProceso
