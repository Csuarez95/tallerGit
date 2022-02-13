//Programa escuela automovilistica.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de ciclos.
//Funciones.
//Ejercicio 8.
SubProceso dato1 <- mensajeInicial()
	Definir dato1 Como Entero;
	Escribir "";
	Escribir "Bienvenido a la escuela automovilística El Maestro";
	Escribir "Seleccione una de las siguientes opciones";
	Escribir "1. Registrar usuarios";
	Escribir "2. Consultar usuarios";
	Escribir "3. Pasar usuario para trámite de licencia";
	Escribir "4. Salir";
	Leer dato1;
FinSubProceso

SubProceso dato <- capturar ( mensaje )
	Definir dato Como Caracter;
	Escribir mensaje;
	Leer dato;
FinSubProceso

SubProceso nombre <- capturarNombre ()
	Definir nombre Como Caracter;
	nombre <- capturar("Ingrese el nombre del usuario a registrar: ");
FinSubProceso

SubProceso edad <- capturarEdad ()
	Definir edad Como Caracter;
	edad <- capturar("Ingrese la edad: ");
FinSubProceso

SubProceso aprobacion <- capturarAprobacion ()
	Definir aprobacion Como Caracter;
	aprobacion <- capturar("¿El usuario ha aprobado el curso? Escriba SI o NO");
FinSubProceso

SubProceso dato2 <- agregar()
	Definir dato2 Como Entero;
	Escribir "¿Desea agregar más usuarios?";
	Escribir "1. SI";
	Escribir "2. NO";
	Leer dato2;
FinSubProceso

SubProceso imprimirContactos ( persona )
	Definir i, j Como Entero;
	Escribir "Las personas registradas son: ";
	Escribir "Nombre  Edad ¿Aprobó curso?";
	Para i<-0 Hasta 7 Con Paso 1 Hacer
		Para j<-0 Hasta 2 Con Paso 1 Hacer
			Escribir persona[i,j] Sin Saltar, "    ";
		FinPara
		Escribir "";
	FinPara
FinSubProceso

SubProceso dato3 <- menuContinuarTramite(persona)
	Definir dato3 Como Entero;
	Escribir "Seleccione el usuario que puede continuar con el trámite de la licencia: ";
	Escribir "Nombre    ¿Aprobo curso?";
	Escribir "1. ", persona[0,0], "  ", persona[0,2];
	Escribir "2. ", persona[1,0], "  ", persona[1,2];
	Escribir "3. ", persona[2,0], "  ", persona[2,2];
	Escribir "4. ", persona[3,0], "  ", persona[3,2];
	Escribir "5. ", persona[4,0], "  ", persona[4,2];
	Escribir "6. ", persona[5,0], "  ", persona[5,2];
	Escribir "7. ", persona[6,0], "  ", persona[6,2];
	Escribir "8. ", persona[7,0], "  ", persona[7,2];
	Escribir "9. Salir";
	Leer dato3;
FinSubProceso

SubProceso tramite(persona, continuar)
	Definir i Como Entero;
	Si continuar == 1 Entonces
		Escribir "Se ha enviado un correo al usuario ", persona[0,0], " para continuar con el trámite de la licencia";
		Para i<-0 Hasta 2 Con Paso 1 Hacer
			persona[0,i] <- "";
		FinPara
	SiNo
		Si continuar == 2 Entonces
			Escribir "Se ha enviado un correo al usuario ", persona[1,0], " para continuar con el trámite de la licencia";
			Para i<-0 Hasta 2 Con Paso 1 Hacer
				persona[1,i] <- "";
			FinPara
		SiNo
			Si continuar == 3 Entonces
				Escribir "Se ha enviado un correo al usuario ", persona[2,0], " para continuar con el trámite de la licencia";
				Para i<-0 Hasta 2 Con Paso 1 Hacer
					persona[2,i] <- "";
				FinPara
				Si continuar == 4 Entonces
					Escribir "Se ha enviado un correo al usuario ", persona[3,0], " para continuar con el trámite de la licencia";
					Para i<-0 Hasta 2 Con Paso 1 Hacer
						persona[3,i] <- "";
					FinPara
				SiNo
					Si continuar == 5 Entonces
						Escribir "Se ha enviado un correo al usuario ", persona[4,0], " para continuar con el trámite de la licencia";
						Para i<-0 Hasta 2 Con Paso 1 Hacer
							persona[4,i] <- "";
						FinPara
					SiNo
						Si continuar == 6 Entonces
							Escribir "Se ha enviado un correo al usuario ", persona[5,0], " para continuar con el trámite de la licencia";
							Para i<-0 Hasta 2 Con Paso 1 Hacer
								persona[5,i] <- "";
							FinPara
						SiNo
							Si continuar == 7 Entonces
								Escribir "Se ha enviado un correo al usuario ", persona[6,0], " para continuar con el trámite de la licencia";
								Para i<-0 Hasta 2 Con Paso 1 Hacer
									persona[6,i] <- "";
								FinPara
							SiNo
								Si continuar == 8 Entonces
									Escribir "Se ha enviado un correo al usuario ", persona[7,0], " para continuar con el trámite de la licencia";
									Para i<-0 Hasta 2 Con Paso 1 Hacer
										persona[7,i] <- "";
									FinPara
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinSubProceso

Proceso escuelaAutomovilistica
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
	Definir persona Como Caracter;
	Dimension persona[8,3];
	Definir i, j Como Entero;
	
	Para i<-0 Hasta 7 Con Paso 1 Hacer
		Para j<-0 Hasta 2 Con Paso 1 Hacer
			persona[i,j] <- "";
		FinPara
	FinPara
	
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
		
		opcion <- mensajeInicial();
		
		Segun opcion Hacer
			1:
				Si opcion == 1 y contadorUsuarios = 8 Entonces
					Escribir "No es posible realizar el ingreso de más usuarios, ya se ha llegado al límite";
				SiNo
					Mientras banderaAgregar = Verdadero Hacer
						Mientras bandera1 = Verdadero Hacer
							persona[0,0] <- capturarNombre();
							persona[0,1] <- capturarEdad();
							persona[0,2] <- capturarAprobacion();
							Si persona[0,2]== "si" O persona[0,2] == "SI" Entonces
								Escribir "Se ha registrado el usuario ", persona[0,0], " en la plataforma";
								banderaAgregar <- Falso;
								bandera1 <- Falso;
							SiNo
								Si persona[0,2] == "no" o persona[0,2] == "NO" Entonces
									Escribir "Se ha registrado el usuario ", persona[0,0], " en la plataforma";
									Escribir "Aclarar al usuario que si desea adquirir la licencia debe aprobar la prueba para continuar con el trámite";
								FinSi
							FinSi
							contadorUsuarios <- contadorUsuarios + 1;
							banderaAgregar <- Falso;
							bandera1 <- Falso;
						FinMientras
						
						Si persona[1,0] = "" y activacion1 = 1 Entonces
							agregarUsuario1 <- agregar();
							
							Si agregarUsuario1 == 1 Entonces
								Mientras bandera2 = Verdadero Hacer
									persona[1,0] <- capturarNombre();
									persona[1,1] <- capturarEdad();
									persona[1,2] <- capturarAprobacion();
									Si persona[1,2] == "si" O persona[1,2] == "SI" Entonces
										Escribir "Se ha registrado el usuario ", persona[1,0] , " en la plataforma";
										banderaAgregar <- Falso;
										bandera2 <- Falso;
									SiNo
										Si persona[1,2] == "no" o persona[1,2] == "NO" Entonces
											Escribir "Se ha registrado el usuario ", persona[1,0] , " en la plataforma";
											Escribir "Aclarar al usuario que si desea adquirir la licencia debe aprobar la prueba para continuar con el trámite";
										FinSi
									FinSi
									contadorUsuarios <- contadorUsuarios + 1;
									banderaAgregar <- Falso;
									bandera2 <- Falso;
									activacion1 <- 0;
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
						
						Si persona[2,0] = "" y activacion2 = 1 Entonces
							agregarUsuario2 <- agregar();
							
							Si agregarUsuario2 == 1 Entonces
								Mientras bandera3 = Verdadero Hacer
									persona[2,0] <- capturarNombre();
									persona[2,1] <- capturarEdad();
									persona[2,2] <- capturarAprobacion();
									Si persona[2,2]== "si" O persona[2,2] == "SI" Entonces
										Escribir "Se ha registrado el usuario ", persona[2,0], " en la plataforma";
										banderaAgregar <- Falso;
										bandera3 <- Falso;
									SiNo
										Si persona[2,2] == "no" o persona[2,2] == "NO" Entonces
											Escribir "Se ha registrado el usuario ", persona[2,0], " en la plataforma";
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
						
						Si persona[3,0]  = "" y activacion3 = 1 Entonces
							agregarUsuario3 <- agregar();
							
							Si agregarUsuario3 == 1 Entonces
								Mientras bandera4 = Verdadero Hacer
									persona[3,0] <- capturarNombre();
									persona[3,1] <- capturarEdad();
									persona[3,2] <- capturarAprobacion();
									Si persona[3,2] == "si" O persona[3,2] == "SI" Entonces
										Escribir "Se ha registrado el usuario ", persona[3,0], " en la plataforma";
										banderaAgregar <- Falso;
										bandera4 <- Falso;
									SiNo
										Si persona[3,2] == "no" o persona[3,2] == "NO" Entonces
											Escribir "Se ha registrado el usuario ", persona[3,0], " en la plataforma";
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
						
						Si persona[4,0]  = "" y activacion4 = 1 Entonces
							agregarUsuario4 <- agregar();
							
							Si agregarUsuario4 == 1 Entonces
								Mientras bandera5 = Verdadero Hacer
									persona[4,0] <- capturarNombre();
									persona[4,1] <- capturarEdad();
									persona[4,2] <- capturarAprobacion();
									Si persona[4,2]  == "si" O persona[4,2] == "SI" Entonces
										Escribir "Se ha registrado el usuario ", persona[4,0], " en la plataforma";
										banderaAgregar <- Falso;
										bandera5 <- Falso;
									SiNo
										Si persona[4,2] == "no" o persona[4,2]  == "NO" Entonces
											Escribir "Se ha registrado el usuario ", persona[4,0], " en la plataforma";
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
						
						Si persona[5,0] = "" y activacion5 = 1 Entonces
							agregarUsuario5 <- agregar();
							
							Si agregarUsuario5 = 1 Entonces
								Mientras bandera6 = Verdadero Hacer
									persona[5,0] <- capturarNombre();
									persona[5,1] <- capturarEdad();
									persona[5,2] <- capturarAprobacion();
									Si persona[5,2] == "si" O persona[5,2] == "SI" Entonces
										Escribir "Se ha registrado el usuario ", persona[5,0] , " en la plataforma";
										banderaAgregar <- Falso;
										bandera6 <- Falso;
									SiNo
										Si persona[5,2]== "no" o persona[5,2] == "NO" Entonces
											Escribir "Se ha registrado el usuario ", persona[5,0] , " en la plataforma";
											Escribir "Aclarar al usuario que si desea adquirir la licencia debe aprobar la prueba para continuar con el trámite";
										FinSi
									FinSi
									contadorUsuarios <- contadorUsuarios + 1;
									banderaAgregar <- Falso;
									bandera6 <- Falso;
									activacion5 <- 0;
								FinMientras
							SiNo
								Si agregarUsuario5 == 2 Entonces
									Escribir "Gracias, continue con el menú inicial";
									banderaAgregar <- Falso;
								SiNo
									Escribir "Opción inválida";
								FinSi
							FinSi
						SiNo
							Escribir "";
						FinSi
						
						Si persona[6,0]  = "" y activacion6 = 1 Entonces
							agregarUsuario6 <- agregar();
							
							Si agregarUsuario6 = 1 Entonces
								Mientras bandera7 = Verdadero Hacer
									persona[6,0] <- capturarNombre();
									persona[6,1] <- capturarEdad();
									persona[6,2] <- capturarAprobacion();
									Si persona[6,2] == "si" O persona[6,2] == "SI" Entonces
										Escribir "Se ha registrado el usuario ", persona[6,0] , " en la plataforma";
										banderaAgregar <- Falso;
										bandera7 <- Falso;
									SiNo
										Si persona[6,2] == "no" o persona[6,2]  == "NO" Entonces
											Escribir "Se ha registrado el usuario ", persona[6,0] , " en la plataforma";
											Escribir "Aclarar al usuario que si desea adquirir la licencia debe aprobar la prueba para continuar con el trámite";
										FinSi
									FinSi
									contadorUsuarios <- contadorUsuarios + 1;
									banderaAgregar <- Falso;
									bandera7 <- Falso;
									activacion6 <- 0;
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
						
						Si persona[7,0] = "" y activacion7 = 1 Entonces
							agregarUsuario7 <- agregar();
							
							Si agregarUsuario7 = 1 Entonces
								Mientras bandera8 = Verdadero Hacer
									persona[7,0] <- capturarNombre();
									persona[7,1] <- capturarEdad();
									persona[7,2] <- capturarAprobacion();
									Si persona[7,2] == "si" O persona[7,2] == "SI" Entonces
										Escribir "Se ha registrado el usuario ", persona[7,0], " en la plataforma";
										banderaAgregar <- Falso;
										bandera8 <- Falso;
									SiNo
										Si persona[7,2] == "no" o persona[7,2] == "NO" Entonces
											Escribir "Se ha registrado el usuario ", persona[7,0], " en la plataforma";
											Escribir "Aclarar al usuario que si desea adquirir la licencia debe aprobar la prueba para continuar con el trámite";
										FinSi
									FinSi
									contadorUsuarios <- contadorUsuarios + 1;
									banderaAgregar <- Falso;
									bandera8 <- Falso;
									activacion7 <- 0;
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
						
					FinMientras
					banderaAgregar <- Verdadero;
				FinSi
				
			2:
				Si persona[0,0] == "" y persona[1,0] == "" y persona[2,0] == "" y persona[3,0] == "" y persona[4,0] == "" y persona[5,0] == "" y persona[6,0] == "" y persona[7,0] = "" Entonces
					Escribir "No hay usuarios agregados en la aplicación";
				SiNo
					imprimirContactos(persona);
				FinSi
			3:
				Si persona[0,0] == "" y persona[1,0] == "" y persona[2,0] == "" y persona[3,0] == "" y persona[4,0] == "" y persona[5,0] == "" y persona[6,0] == "" y persona[7,0] = "" Entonces
					Escribir "No hay usuarios para continuar con el trámite de la licencia de conducción";
				SiNo
					continuarTramite <- menuContinuarTramite(persona);
					Si continuarTramite == 1 Entonces
						tramite(persona, continuarTramite);
						bandera1 <- Verdadero;
						banderaAgregar <- Verdadero;
						contadorUsuarios <- contadorUsuarios - 1;
					SiNo
						Si continuarTramite == 2 Entonces
							tramite(persona, continuarTramite);
							bandera2 <- Verdadero;
							banderaAgregar <- Verdadero;
							contadorUsuarios <- contadorUsuarios - 1;
							activacion1 <- 1;
						SiNo
							Si continuarTramite == 3 Entonces
								tramite(persona, continuarTramite);
								bandera3 <- Verdadero;
								banderaAgregar <- Verdadero;
								contadorUsuarios <- contadorUsuarios - 1;
								activacion2 <- 1;
							SiNo
								Si continuarTramite == 4 Entonces
									tramite(persona, continuarTramite);
									bandera4 <- Verdadero;
									banderaAgregar <- Verdadero;
									contadorUsuarios <- contadorUsuarios - 1;
									activacion3 <- 1;
								SiNo
									Si continuarTramite == 5 Entonces
										tramite(persona, continuarTramite);
										bandera5 <- Verdadero;
										banderaAgregar <- Verdadero;
										contadorUsuarios <- contadorUsuarios - 1;
										activacion4 <- 1;
									SiNo
										Si continuarTramite == 6 Entonces
											tramite(persona, continuarTramite);
											bandera6 <- Verdadero;
											banderaAgregar <- Verdadero;
											contadorUsuarios <- contadorUsuarios - 1;
											activacion5 <- 1;
										SiNo
											Si continuarTramite == 7 Entonces
												tramite(persona, continuarTramite);
												bandera7 <- Verdadero;
												banderaAgregar <- Verdadero;
												contadorUsuarios <- contadorUsuarios - 1;
												activacion6 <- 1;
											SiNo
												Si continuarTramite == 8 Entonces
													tramite(persona, continuarTramite);
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
