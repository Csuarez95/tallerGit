//Programa taller de motos.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de condicionales.
//Ejercicio 8.
Proceso registroPasteles
	Definir sabor Como Caracter;
	Definir porciones Como Entero;
	Definir decoraciones Como Entero;
	Definir opcion Como Entero;
	Definir adquirir Como Entero;
	Definir seleccion Como Entero;
	Definir tipoDecoracion Como Caracter;
	Definir saborTorta Como Caracter;
	Definir cantidadPorciones Como Entero;
	Definir tortasVentas Como Entero;
	Definir tortasDisponibles Como Entero;
	
	Escribir "Bienvenido a la pastelería de Don Carlos, el mejor pastelero de la ciudad";
	Escribir "Ingrese la cantidad de tortas que están disponibles después de la última venta: ";
	Leer tortasVentas;
	Escribir "Seleccione una de las siguientes opciones";
	Escribir "1. Tortas disponibles";
	Escribir "2. Salir";
	Leer opcion;
	
	Segun opcion Hacer
		1:
			Escribir "Los sabores de tortas disponibles son las siguientes: ";
			Escribir "1. Vainilla";
			Escribir "2. Chocolate";
			Escribir "3. Arequipe";
			Escribir "¿Desea adquirir alguno de los pasteles?";
			Escribir "1. SI";
			Escribir "2. NO";
			Leer adquirir;
			Si adquirir == 1 Entonces
				Escribir "Seleccione la torta que desea adquirir: ";
				Leer seleccion;
				Segun seleccion Hacer
					1:
						Escribir "Usted ha escogido sabor vainilla";
						sabor <- "Vainilla";
						Escribir "Ingrese la cantidad de porciones: ";
						Leer porciones;
						Escribir "Seleccione una de las siguientes decoraciones:";
						Escribir "1. Cumpleaños";
						Escribir "2. Matrimonio";
						Leer decoraciones;
						Si decoraciones == 1 Entonces
							tipoDecoracion <- "Cumpleaños";
							Escribir "Usted ha escogido torta de sabor ", sabor, " de ", porciones, " porciones con decoración de ",tipoDecoracion;
						SiNo
							Si decoraciones == 2 Entonces
								tipoDecoracion <- "Matrimonio";
								Escribir "Usted ha escogido torta de sabor ", sabor, " de ", porciones, " porciones con decoración de ",tipoDecoracion;
							SiNo
								Escribir "Opcion no valida, gracias";
							FinSi
						FinSi
					2:
						Escribir "Usted ha escogido sabor Chocolate";
						sabor <- "Chocolate";
						Escribir "Ingrese la cantidad de porciones: ";
						Leer porciones;
						Escribir "Seleccione una de las siguientes decoraciones:";
						Escribir "1. Cumpleaños";
						Escribir "2. Matrimonio";
						Leer decoraciones;
						Si decoraciones == 1 Entonces
							tipoDecoracion <- "Cumpleaños";
							Escribir "Usted ha escogido torta de sabor ", sabor, " de ", porciones, " porciones con decoración de ",tipoDecoracion;
						SiNo
							Si decoraciones == 2 Entonces
								tipoDecoracion <- "Matrimonio";
								Escribir "Usted ha escogido torta de sabor ", sabor, " de ", porciones, " porciones con decoración de ",tipoDecoracion;
							SiNo
								Escribir "Opcion no valida, gracias";
							FinSi
						FinSi
					3:
						Escribir "Usted ha escogido sabor arequipe";
						sabor <- "Arequipe";
						Escribir "Ingrese la cantidad de porciones: ";
						Leer porciones;
						Escribir "Seleccione una de las siguientes decoraciones:";
						Escribir "1. Cumpleaños";
						Escribir "2. Matrimonio";
						Leer decoraciones;
						Si decoraciones == 1 Entonces
							tipoDecoracion <- "Cumpleaños";
							Escribir "Usted ha escogido torta de sabor ", sabor, " de ", porciones, " porciones con decoración de ",tipoDecoracion;
						SiNo
							Si decoraciones == 2 Entonces
								tipoDecoracion <- "Matrimonio";
								Escribir "Usted ha escogido torta de sabor ", sabor, " de ", porciones, " porciones con decoración de ",tipoDecoracion;
							SiNo
								Escribir "Opcion no valida, gracias";
							FinSi
						FinSi
					4:
						Escribir "Gracias, esperamos que en una próxima ocasión decida seleccionar una torta";
					De Otro Modo:
						Escribir "Opción no valida";
				FinSegun
			SiNo
				Si adquirir == 2 Entonces
					Escribir "Gracias por visitarnos";
				FinSi
			FinSi
		2:
			Escribir "Gracias por visitarnos";
		De Otro Modo:
			Escribir "Opcion no valida";
	FinSegun
	
	tortasDisponibles <- tortasVentas - 1;
	Escribir "La cantidad de tortas disponibles es de: ", tortasDisponibles;
	
	
FinProceso
