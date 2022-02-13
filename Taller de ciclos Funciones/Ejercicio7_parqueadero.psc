//Programa parqueadero.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de ciclos.
//Ejercicio 7.
SubProceso dato1 <- mensajeInicial()
	Definir dato1 Como Entero;
	Escribir "";
	Escribir "Bienvenido al parqueadero El Guardián, seleccione una de las siguientes opciones:";
	Escribir "1. Ingresar vehículo";
	Escribir "2. Consultar vehículo";
	Escribir "3. Retirar vehículo";
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
	nombre <- capturar("Por favor, ingrese el nombre completo del dueño del vehículo");
FinSubProceso

SubProceso telefono <- capturarTelefono ()
	Definir telefono Como Caracter;
	telefono <- capturar("Ingrese el telefono de la persona: ");
FinSubProceso

SubProceso marca <- capturarMarca ()
	Definir marca Como Caracter;
	marca <- capturar("Ingrese la marca del vehículo: ");
FinSubProceso

SubProceso placa <- capturarPlaca ()
	Definir placa Como Caracter;
	placa <- capturar("Ingrese la placa del vehículo de la siguiente manera $$$-###: ");
FinSubProceso

SubProceso dato2 <- agregar()
	Definir dato2 Como Entero;
	Escribir "¿Desea ingresar más vehículos?";
	Escribir "1. SI";
	Escribir "2. NO";
	Leer dato2;
FinSubProceso

SubProceso imprimirContactos ( persona )
	Definir i, j Como Entero;
	Escribir "Los vehículos registrados son: ";
	Escribir "Nombre    Telefono    marca    placa";
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			Escribir persona[i,j] Sin Saltar, "    ";
		FinPara
		Escribir "";
	FinPara
FinSubProceso

SubProceso dato3 <- menuEliminar(persona)
	Definir dato3 Como Entero;
	Escribir "Seleccione el contacto que desea eliminar: ";
	Escribir "1. ", persona[0,0];
	Escribir "2. ", persona[1,0];
	Escribir "3. ", persona[2,0];
	Escribir "4. ", persona[3,0];
	Escribir "5. ", persona[4,0];
	Escribir "6. Salir";
	Leer dato3;
FinSubProceso

SubProceso menuRetirarVehiculo(persona, vehiculo)
	Definir i Como Entero;
	Si vehiculo == 1 Entonces
		Escribir "Se ha borrado el contacto de ", persona[0,0];
		Para i<-0 Hasta 3 Con Paso 1 Hacer
			persona[0,i] <- "";
		FinPara
	SiNo
		Si vehiculo == 2 Entonces
			Escribir "Se ha borrado el contacto de ", persona[1,0];
			Para i<-0 Hasta 3 Con Paso 1 Hacer
				persona[1,i] <- "";
			FinPara
		SiNo
			Si vehiculo == 3 Entonces
				Escribir "Se ha borrado el contacto de ", persona[2,0];
				Para i<-0 Hasta 3 Con Paso 1 Hacer
					persona[2,i] <- "";
				FinPara
				Si vehiculo == 4 Entonces
					Escribir "Se ha borrado el contacto de ", persona[3,0];
					Para i<-0 Hasta 3 Con Paso 1 Hacer
						persona[3,i] <- "";
					FinPara
				SiNo
					Si vehiculo == 5 Entonces
						Escribir "Se ha borrado el contacto de ", persona[4,0];
						Para i<-0 Hasta 3 Con Paso 1 Hacer
							persona[4,i] <- "";
						FinPara
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
FinSubProceso

Proceso parqueadero
	//Definición de variables
	Definir control Como Logico;
	Definir opcion Como Entero;
	Definir contadorVehiculos Como Entero;
	Definir banderaAgregar Como Logico;
	Definir bandera1 Como Logico;
	Definir bandera2 Como Logico;
	Definir bandera3 Como Logico;
	Definir bandera4 Como Logico;
	Definir bandera5 Como Logico;
	Definir agregarVehiculo1 Como Entero;
	Definir agregarVehiculo2 Como Entero;
	Definir agregarVehiculo3 Como Entero;
	Definir agregarVehiculo4 Como Entero;
	Definir retirarVehiculo Como Entero;
	Definir activacion1 Como Entero;
	Definir activacion2 Como Entero;
	Definir activacion3 Como Entero;
	Definir activacion4 Como Entero;
	Definir persona Como Caracter;
	Dimension persona[5,4];
	Definir i Como Entero;
	Definir j Como Entero;
	
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		Para j<-0 Hasta 3 Con Paso 1 Hacer
			persona[i,j] <- "";
		FinPara
	FinPara
	
	//Inicialización de las vriables
	control <- Verdadero;
	banderaAgregar <- Verdadero;
	bandera1 <- Verdadero;
	bandera2 <- Verdadero;
	bandera3 <- Verdadero;
	bandera4 <- Verdadero;
	bandera5 <- Verdadero;
	contadorVehiculos <- 0;
	activacion1 <- 1;
	activacion2 <- 1;
	activacion3 <- 1;
	activacion4 <- 1;
	
	Mientras control == Verdadero Hacer
		
		opcion <- mensajeInicial();
		
		Segun opcion Hacer
			1:
				Si opcion == 1 y contadorVehiculos == 5 Entonces
					Escribir "No es posible permitir el ingreso de más vehículos, el parqueadero se encuentra lleno";
				SiNo
					Mientras banderaAgregar = Verdadero Hacer
						Mientras bandera1 = Verdadero Hacer
							persona[0,0] <- capturarNombre();
							persona[0,1] <- capturarTelefono();
							persona[0,2] <- capturarMarca();
							persona[0,3] <- capturarPlaca();
							Si persona[0,3] == persona[1,3] o persona[0,3] == persona[2,3] o persona[0,3] == persona[3,3] o persona[0,3] == persona[4,3] Entonces
								Escribir "Se ha registrado la plata de un vehículo que ya se encuentra en el parqueadero";
								Escribir "Valide y realice nuevamente el registro";
								banderaAgregar <- Falso;
								bandera1 <- Falso;
							SiNo
								Escribir "Se ha registrado de maner exitosa el vehículo";
								contadorVehiculos <- contadorVehiculos + 1;
								Escribir "Se ha ingresado vehículo con placa ", persona[0,3] ;
								bandera1 <- Falso;
							FinSi
						FinMientras
						
						Si persona[1,0] = "" y activacion1 = 1 Entonces
							agregarVehiculo1 <- agregar();
							Si agregarVehiculo1 == 1 Entonces
								Mientras bandera2 = Verdadero Hacer
									persona[1,0] <- capturarNombre();
									persona[1,1] <- capturarTelefono();
									persona[1,2] <- capturarMarca();
									persona[1,3] <- capturarPlaca();
									Si persona[1,3] == persona[0,3] o persona[1,3] == persona[2,3] o persona[1,3] == persona[3,3] o persona[1,3] == persona[4,3] Entonces
										Escribir "Se ha registrado la plata de un vehículo que ya se encuentra en el parqueadero";
										Escribir "Valide y realice nuevamente el registro";
										banderaAgregar <- Falso;
										bandera2 <- Falso;
									SiNo
										Escribir "Se ha registrado de maner exitosa el vehículo";
										contadorVehiculos <- contadorVehiculos + 1;
										Escribir "Se ha ingresado vehículo con placa ", persona[1,3];
										bandera2 <- Falso;
										activacion1 <- 0;
									FinSi
								FinMientras
							SiNo
								Si agregarVehiculo1 == 2 Entonces
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
							agregarVehiculo2 <- agregar();
							
							Si agregarVehiculo2 == 1 Entonces
								Mientras bandera3 = Verdadero Hacer
									persona[2,0] <- capturarNombre();
									persona[2,1] <- capturarTelefono();
									persona[2,2] <- capturarMarca();
									persona[2,3] <- capturarPlaca();
									Si persona[2,3] == persona[0,3] o persona[2,3] == persona[1,3] o persona[2,3] == persona[3,3] o persona[2,3] == persona[4,3] Entonces
										Escribir "Se ha registrado la plata de un vehículo que ya se encuentra en el parqueadero";
										Escribir "Valide y realice nuevamente el registro";
										banderaAgregar <- Falso;
										bandera3 <- Falso;
									SiNo
										Escribir "Se ha registrado de maner exitosa el vehículo";
										contadorVehiculos <- contadorVehiculos + 1;
										Escribir "Se ha ingresado vehículo con placa ", persona[2,3];
										bandera3 <- Falso;
										activacion2 <- 0;
									FinSi
								FinMientras
							SiNo
								Si agregarVehiculo2 == 2 Entonces
									Escribir "Gracias, continue con el menú inicial";
									banderaAgregar <- Falso;
								SiNo
									Escribir "Opción inválida";
								FinSi
							FinSi
						SiNo
							Escribir "";
						FinSi
						
						Si persona[3,0] = "" y activacion3 = 1 Entonces
							agregarVehiculo3 <- agregar();
							
							Si agregarVehiculo3 == 1 Entonces
								Mientras bandera4 = Verdadero Hacer
									persona[3,0] <- capturarNombre();
									persona[3,1] <- capturarTelefono();
									persona[3,2] <- capturarMarca();
									persona[3,3] <- capturarPlaca();
									Si persona[3,3] == persona[0,3] o persona[3,3] == persona[1,3] o persona[3,3] == persona[2,3] o persona[3,3] == persona[4,3] Entonces
										Escribir "Se ha registrado la plata de un vehículo que ya se encuentra en el parqueadero";
										Escribir "Valide y realice nuevamente el registro";
										banderaAgregar <- Falso;
										bandera4 <- Falso;
									SiNo
										Escribir "Se ha registrado de maner exitosa el vehículo";
										contadorVehiculos <- contadorVehiculos + 1;
										Escribir "Se ha ingresado vehículo con placa ", persona[3,3];
										bandera4 <- Falso;
										activacion3 <- 0;
									FinSi
								FinMientras
							SiNo
								Si agregarVehiculo3 == 2 Entonces
									Escribir "Gracias, continue con el menú inicial";
									banderaAgregar <- Falso;
								SiNo
									Escribir "Opción inválida";
								FinSi
							FinSi
						SiNo
							Escribir "";
						FinSi
						
						Si persona[3,0] = "" y activacion4 = 1 Entonces
							agregarVehiculo4 <- agregar();
							
							Si agregarVehiculo4 == 1 Entonces
								Mientras bandera5 = Verdadero Hacer
									persona[4,0] <- capturarNombre();
									persona[4,1] <- capturarTelefono();
									persona[4,2] <- capturarMarca();
									persona[4,3] <- capturarPlaca();
									Si persona[4,3] == persona[0,3] o persona[4,3] == persona[1,3] o persona[4,3] == persona[2,3] o persona[4,3] == persona[3,3] Entonces
										Escribir "Se ha registrado la plata de un vehículo que ya se encuentra en el parqueadero";
										Escribir "Valide y realice nuevamente el registro";
										banderaAgregar <- Falso;
										bandera5 <- Falso;
									SiNo
										Escribir "Se ha registrado de maner exitosa el vehículo";
										contadorVehiculos <- contadorVehiculos + 1;
										Escribir "Se ha ingresado vehículo con placa ", persona[4,3];
										Escribir "";
										Escribir "Ha llegado al número límite del parqueadero";
										bandera1 <- Falso;
										bandera2 <- Falso;
										bandera3 <- Falso;
										bandera4 <- Falso;
										bandera5 <- Falso;
										activacion4 <- 0;
									FinSi
								FinMientras
							SiNo
								Si agregarVehiculo4 == 2 Entonces
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
				Si persona[0,3] == "" y persona[1,3] == "" y persona[2,3] == "" y persona[3,3] == "" y persona[4,3] == "" Entonces
					Escribir "No hay vehículos ingresados al parqueadero";
				SiNo
					imprimirContactos(persona);
				FinSi
			3:
				Si persona[0,3] == "" y persona[1,3] == "" y persona[2,3] == "" y persona[3,3] == "" y persona[4,3] == "" Entonces
					Escribir "No hay vehículos para retirar del parqueadero";
				SiNo
					retirarVehiculo <- menuEliminar(persona);
					Si retirarVehiculo == 1 Entonces
						menuRetirarVehiculo(persona, retirarVehiculo);
						bandera1 <- Verdadero;
						banderaAgregar <- Verdadero;
						contadorVehiculos <- contadorVehiculos - 1;
					SiNo
						Si retirarVehiculo == 2 Entonces
							menuRetirarVehiculo(persona, retirarVehiculo);
							bandera2 <- Verdadero;
							banderaAgregar <- Verdadero;
							activacion1 <- 1;
							contadorVehiculos <- contadorVehiculos - 1;
						SiNo
							Si retirarVehiculo == 3 Entonces
								menuRetirarVehiculo(persona, retirarVehiculo);
								bandera3 <- Verdadero;
								banderaAgregar <- Verdadero;
								activacion2 <- 1;
								contadorVehiculos <- contadorVehiculos - 1;
							SiNo
								Si retirarVehiculo == 4 Entonces
									menuRetirarVehiculo(persona, retirarVehiculo);
									bandera4 <- Verdadero;
									banderaAgregar <- Verdadero;
									activacion3 <- 1;
									contadorVehiculos <- contadorVehiculos - 1;
								SiNo
									Si retirarVehiculo == 5 Entonces
										menuRetirarVehiculo(persona, retirarVehiculo);
										bandera5 <- Verdadero;
										banderaAgregar <- Verdadero;
										activacion4 <- 1;
										contadorVehiculos <- contadorVehiculos - 1;
									SiNo
										Si retirarVehiculo == 6 Entonces
											Escribir "Saliendo al menú principal";
										SiNo
											Escribir "Opcion inválida, retornando al menú inicial";
										FinSi
									FinSi
									
									Escribir "Opción inválida, retornando a menú principal";
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			4:
				Escribir "Gracias por visiar el Parqueadero El Guardián";
				control <- Falso;
			De Otro Modo:
				Escribir "Ha seleccionado una opción inválida, por favor, digita nuevamente";
		FinSegun
	FinMientras

	
FinProceso
