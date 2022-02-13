//Programa taller de motos.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de condicionales.
//FUnciones.
//Ejercicio 8.

SubProceso dato <- mensajeInicial()
	Definir dato Como Entero;
	Escribir "Seleccione una de las siguientes opciones";
	Escribir "1. Tortas disponibles";
	Escribir "2. Salir";
	Leer dato;
FinSubProceso

SubProceso dato1 <- consultaProductos()
	Definir dato1 Como Entero;
	Escribir "Los sabores de tortas disponibles son las siguientes: ";
	Escribir "1. Vainilla";
	Escribir "2. Chocolate";
	Escribir "3. Arequipe";
	Escribir "¿Desea adquirir alguno de los pasteles?";
	Escribir "1. SI";
	Escribir "2. NO";
	Leer dato1;
FinSubProceso

SubProceso tipoDecoraciones(sabor)
	Definir tipoDecoracion Como Caracter;
	Definir tipo Como Entero;
	Definir porciones Como Entero;
	Escribir "Ingrese la cantidad de porciones: ";
	Leer porciones;
	Escribir "Seleccione una de las siguientes decoraciones:";
	Escribir "1. Cumpleaños";
	Escribir "2. Matrimonio";
	Leer tipo;
	Si tipo == 1 Entonces
		tipoDecoracion <- "Cumpleaños";
		Escribir "Usted ha escogido torta de sabor ", sabor, " de ", porciones, " porciones con decoración de ",tipoDecoracion;
	SiNo
		Si tipo == 2 Entonces
			tipoDecoracion <- "Matrimonio";
			Escribir "Usted ha escogido torta de sabor ", sabor, " de ", porciones, " porciones con decoración de ",tipoDecoracion;
		SiNo
			Escribir "Opcion no valida, gracias";
		FinSi
	FinSi
FinSubProceso

Proceso registroPasteles
	Definir sabor Como Caracter;
	Definir opcion Como Entero;
	Definir adquirir Como Entero;
	Definir seleccion Como Entero;
	Definir tortasVentas Como Entero;
	Definir tortasDisponibles Como Entero;
	
	Escribir "Bienvenido a la pastelería de Don Carlos, el mejor pastelero de la ciudad";
	Escribir "Ingrese la cantidad de tortas que están disponibles después de la última venta: ";
	Leer tortasVentas;
	opcion <- mensajeInicial();
	
	Segun opcion Hacer
		1:
			adquirir <- consultaProductos();
			
			Si adquirir == 1 Entonces
				Escribir "Seleccione la torta que desea adquirir: ";
				Leer seleccion;
				Segun seleccion Hacer
					1:
						Escribir "Usted ha escogido sabor vainilla";
						sabor <- "Vainilla";
						tipoDecoraciones(sabor);
					2:
						Escribir "Usted ha escogido sabor Chocolate";
						sabor <- "Chocolate";
						tipoDecoraciones(sabor);
					3:
						Escribir "Usted ha escogido sabor arequipe";
						sabor <- "Arequipe";
						tipoDecoraciones(sabor);
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
