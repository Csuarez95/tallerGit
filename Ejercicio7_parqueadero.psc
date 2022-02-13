//Programa parqueadero.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de ciclos.
//Ejercicio 7.
Proceso parqueadero
	//Definición de variables
	Definir nombre1 Como Caracter;
	Definir nombre2 Como Caracter;
	Definir nombre3 Como Caracter;
	Definir nombre4 Como Caracter;
	Definir nombre5 Como Caracter;
	Definir telefono1 Como Caracter;
	Definir telefono2 Como Caracter;
	Definir telefono3 Como Caracter;
	Definir telefono4 Como Caracter;
	Definir telefono5 Como Caracter;
	Definir placa1 Como Caracter;
	Definir placa2 Como Caracter;
	Definir placa3 Como Caracter;
	Definir placa4 Como Caracter;
	Definir placa5 Como Caracter;
	Definir marca1 Como Caracter;
	Definir marca2 Como Caracter;
	Definir marca3 Como Caracter;
	Definir marca4 Como Caracter;
	Definir marca5 Como Caracter;
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
	
	
	//Inicialización de las vriables
	nombre1 <- "";
	nombre2 <- "";
	nombre3 <- "";
	nombre4 <- "";
	nombre5 <- "";
	telefono1 <- "";
	telefono2 <- "";
	telefono3 <- "";
	telefono4 <- "";
	telefono5 <- "";
	placa1 <- "";
	placa2 <- "";
	placa3 <- "";
	placa4 <- "";
	placa5 <- "";
	marca1 <- "";
	marca2 <- "";
	marca3 <- "";
	marca4 <- "";
	marca5 <- "";
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
		Escribir "";
		Escribir "Bienvenido al parqueadero El Guardián, seleccione una de las siguientes opciones:";
		Escribir "1. Ingresar vehículo";
		Escribir "2. Consultar vehículo";
		Escribir "3. Retirar vehículo";
		Escribir "4. Salir";
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Si opcion == 1 y contadorVehiculos == 5 Entonces
					Escribir "No es posible permitir el ingreso de más vehículos, el parqueadero se encuentra lleno";
				SiNo
					Mientras banderaAgregar = Verdadero Hacer
						Mientras bandera1 = Verdadero Hacer
							Escribir "Por favor, ingrese el nombre completo del dueño del vehículo en el espacio 1";
							Leer nombre1;
							Escribir "Ingrese el número de teléfono";
							Leer telefono1;
							Escribir "Ingrese la marca del vehículo";
							Leer marca1;
							Escribir "Ingrese las placas del vehículo de la siguiente manera $$$-###";
							Leer placa1;
							Si placa1 == placa2 o placa1 == placa3 o placa1 == placa4 o placa1 == placa5 Entonces
								Escribir "Se ha registrado la plata de un vehículo que ya se encuentra en el parqueadero";
								Escribir "Valide y realice nuevamente el registro";
								banderaAgregar <- Falso;
								bandera1 <- Falso;
							SiNo
								Escribir "Se ha registrado de maner exitosa el vehículo";
								contadorVehiculos <- contadorVehiculos + 1;
								Escribir "Se ha ingresado vehículo con placa ", placa1;
								bandera1 <- Falso;
							FinSi
						FinMientras
						
						Si nombre2 = "" y activacion1 = 1 Entonces
							Escribir "¿Desea ingresar más vehículos?";
							Escribir "1. SI";
							Escribir "2. NO";
							Leer agregarVehiculo1;
							
							Si agregarVehiculo1 == 1 Entonces
								Mientras bandera2 = Verdadero Hacer
									Escribir "Por favor, ingrese el nombre completo del dueño del vehículo en el espacio 2";
									Leer nombre2;
									Escribir "Ingrese el número de teléfono";
									Leer telefono2;
									Escribir "Ingrese la marca del vehículo";
									Leer marca2;
									Escribir "Ingrese las placas del vehículo de la siguiente manera $$$-###";
									Leer placa2;
									Si placa2 == placa1 o placa2 == placa3 o placa2 == placa4 o placa2 == placa5 Entonces
										Escribir "Se ha registrado la plata de un vehículo que ya se encuentra en el parqueadero";
										Escribir "Valide y realice nuevamente el registro";
										banderaAgregar <- Falso;
										bandera2 <- Falso;
									SiNo
										Escribir "Se ha registrado de maner exitosa el vehículo";
										contadorVehiculos <- contadorVehiculos + 1;
										Escribir "Se ha ingresado vehículo con placa ", placa2;
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
						
						Si nombre3 = "" y activacion2 = 1 Entonces
							Escribir "¿Desea ingresar más vehículos?";
							Escribir "1. SI";
							Escribir "2. NO";
							Leer agregarVehiculo2;
							
							Si agregarVehiculo2 == 1 Entonces
								Mientras bandera3 = Verdadero Hacer
									Escribir "Por favor, ingrese el nombre completo del dueño del vehículo en el espacio 3";
									Leer nombre3;
									Escribir "Ingrese el número de teléfono";
									Leer telefono3;
									Escribir "Ingrese la marca del vehículo";
									Leer marca3;
									Escribir "Ingrese las placas del vehículo de la siguiente manera $$$-###";
									Leer placa3;
									Si placa3 == placa1 o placa3 == placa2 o placa3 == placa4 o placa3 == placa5 Entonces
										Escribir "Se ha registrado la plata de un vehículo que ya se encuentra en el parqueadero";
										Escribir "Valide y realice nuevamente el registro";
										banderaAgregar <- Falso;
										bandera3 <- Falso;
									SiNo
										Escribir "Se ha registrado de maner exitosa el vehículo";
										contadorVehiculos <- contadorVehiculos + 1;
										Escribir "Se ha ingresado vehículo con placa ", placa3;
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
						
						Si nombre4 = "" y activacion3 = 1 Entonces
							Escribir "¿Desea ingresar más vehículos?";
							Escribir "1. SI";
							Escribir "2. NO";
							Leer agregarVehiculo3;
							
							Si agregarVehiculo3 == 1 Entonces
								Mientras bandera4 = Verdadero Hacer
									Escribir "Por favor, ingrese el nombre completo del dueño del vehículo en el espacio 4";
									Leer nombre4;
									Escribir "Ingrese el número de teléfono";
									Leer telefono4;
									Escribir "Ingrese la marca del vehículo";
									Leer marca4;
									Escribir "Ingrese las placas del vehículo de la siguiente manera $$$-###";
									Leer placa4;
									Si placa4 == placa1 o placa4 == placa2 o placa4 == placa3 o placa4 == placa5 Entonces
										Escribir "Se ha registrado la plata de un vehículo que ya se encuentra en el parqueadero";
										Escribir "Valide y realice nuevamente el registro";
										banderaAgregar <- Falso;
										bandera4 <- Falso;
									SiNo
										Escribir "Se ha registrado de maner exitosa el vehículo";
										contadorVehiculos <- contadorVehiculos + 1;
										Escribir "Se ha ingresado vehículo con placa ", placa4;
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
						
						Si nombre5 = "" y activacion4 = 1 Entonces
							Escribir "¿Desea ingresar más vehículos?";
							Escribir "1. SI";
							Escribir "2. NO";
							Leer agregarVehiculo4;
							
							Si agregarVehiculo4 == 1 Entonces
								Mientras bandera5 = Verdadero Hacer
									Escribir "Por favor, ingrese el nombre completo del dueño del vehículo en el espacio 5";
									Leer nombre5;
									Escribir "Ingrese el número de teléfono";
									Leer telefono5;
									Escribir "Ingrese la marca del vehículo";
									Leer marca5;
									Escribir "Ingrese las placas del vehículo de la siguiente manera $$$-###";
									Leer placa5;
									Si placa5 == placa1 o placa5 == placa2 o placa5 == placa3 o placa5 == placa4 Entonces
										Escribir "Se ha registrado la plata de un vehículo que ya se encuentra en el parqueadero";
										Escribir "Valide y realice nuevamente el registro";
										banderaAgregar <- Falso;
										bandera5 <- Falso;
									SiNo
										Escribir "Se ha registrado de maner exitosa el vehículo";
										contadorVehiculos <- contadorVehiculos + 1;
										Escribir "Se ha ingresado vehículo con placa ", placa5;
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
				Si placa1 == "" y placa2 == "" y placa3 == "" y placa4 == "" y placa5 == "" Entonces
					Escribir "No hay vehículos ingresados al parqueadero";
				SiNo
					Escribir "Los vehículos que se encuentran en el parqueadero son: ";
					Escribir "Nombre: ", nombre1;
					Escribir "Telefono: ", telefono1;
					Escribir "Marca: ", marca1;
					Escribir "Placa: ", placa1;
					Escribir "";
					Escribir "Nombre: ", nombre2;
					Escribir "Telefono: ", telefono2;
					Escribir "Marca: ", marca2;
					Escribir "Placa: ", placa2;
					Escribir "";
					Escribir "Nombre: ", nombre3;
					Escribir "Telefono: ", telefono3;
					Escribir "Marca: ", marca3;
					Escribir "Placa: ", placa3;
					Escribir "";
					Escribir "Nombre: ", nombre4;
					Escribir "Telefono: ", telefono4;
					Escribir "Marca: ", marca4;
					Escribir "Placa: ", placa4;
					Escribir "";
					Escribir "Nombre: ", nombre5;
					Escribir "Telefono: ", telefono5;
					Escribir "Marca: ", marca5;
					Escribir "Placa: ", placa5;
					Escribir "";
				FinSi
			3:
				Si placa1 == "" y placa2 == "" y placa3 == "" y placa4 == "" y placa5 == "" Entonces
					Escribir "No hay vehículos para retirar del parqueadero";
				SiNo
					Escribir "Seleccione el vehículo que desea retirar: ";
					Escribir "1. ", nombre1, " placa ", placa1;
					Escribir "2. ", nombre2, " placa ", placa2;
					Escribir "3. ", nombre3, " placa ", placa3;
					Escribir "4. ", nombre4, " placa ", placa4;
					Escribir "5. ", nombre5, " placa ", placa5;
					Escribir "6. Salir";
					Leer retirarVehiculo;
					Si retirarVehiculo == 1 Entonces
						Escribir "Se ha retirado el vehículo de placas ", placa1, " del dueño ", nombre1;
						nombre1 <- "";
						telefono1 <- "";
						marca1 <- "";
						placa1 <- "";
						bandera1 <- Verdadero;
						banderaAgregar <- Verdadero;
						contadorVehiculos <- contadorVehiculos - 1;
					SiNo
						Si retirarVehiculo == 2 Entonces
							Escribir "Se ha retirado el vehículo de placas ", placa2, " del dueño ", nombre2;
							nombre2 <- "";
							telefono2 <- "";
							marca2 <- "";
							placa2 <- "";
							bandera2 <- Verdadero;
							banderaAgregar <- Verdadero;
							activacion1 <- 1;
							contadorVehiculos <- contadorVehiculos - 1;
						SiNo
							Si retirarVehiculo == 3 Entonces
								Escribir "Se ha retirado el vehículo de placas ", placa3, " del dueño ", nombre3;
								nombre3 <- "";
								telefono3 <- "";
								marca3 <- "";
								placa3 <- "";
								bandera3 <- Verdadero;
								banderaAgregar <- Verdadero;
								activacion2 <- 1;
								contadorVehiculos <- contadorVehiculos - 1;
							SiNo
								Si retirarVehiculo == 4 Entonces
									Escribir "Se ha retirado el vehículo de placas ", placa4, " del dueño ", nombre4;
									nombre4 <- "";
									telefono4 <- "";
									marca4 <- "";
									placa4 <- "";
									bandera4 <- Verdadero;
									banderaAgregar <- Verdadero;
									activacion3 <- 1;
									contadorVehiculos <- contadorVehiculos - 1;
								SiNo
									Si retirarVehiculo == 5 Entonces
										Escribir "Se ha retirado el vehículo de placas ", placa5, " del dueño ", nombre5;
										nombre5 <- "";
										telefono5 <- "";
										marca5 <- "";
										placa5 <- "";
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
