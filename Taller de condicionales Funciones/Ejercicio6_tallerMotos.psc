//Programa taller de motos.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de condicionales.
//Funciones.
//Ejercicio 6.
SubProceso dato <- mensajeInicial()
	Definir dato Como Entero;
	Escribir "Bienvenido al taller de motos El Maquinista";
	Escribir "Por favor, seleccione una de las siguientes opciones";
	Escribir "1. Registro de ingreso al taller";
	Escribir "2. Observaciones de salida del taller";
	Escribir "3. Salir";
	Leer dato;
FinSubProceso

SubProceso registroIngreso ( registro Por Referencia )
	registro[0] <- capturarDato("Ingrese el nombre del dueño de la moto: ");
	registro[1] <- capturarDato("Ingrese la placa de la moto: ");
	registro[2] <- capturarDato("Ingrese observaciones del motivo de ingreso al taller: ");
	Escribir "El registro se ha realizado con éxito, el mecánico reparará su vehículo";
FinSubProceso

SubProceso dato <- capturarDato ( mensaje )
	Definir dato Como Caracter;
	Escribir mensaje Sin Saltar;
	Leer dato;
FinSubProceso

SubProceso datosInventario(infoInventario)
	Definir repuestos Como Caracter;
	Si infoInventario == 1 Entonces
		Escribir "Ingrese los repuestos empleados en la moto";
		Leer repuestos;
		Escribir "Gracias por el registro de los repuestos, puede realizar la entrega de la moto";
	SiNo
		Si infoInventario == 2 Entonces
			Escribir "La moto puede ser entregada";
		FinSi
	FinSi
FinSubProceso

SubProceso registroSalida ( salida Por Referencia )
	salida[0] <- capturarDato("Ingrese la placa del moto: ");
	salida[1] <- capturarDato("Ingrese las observaciones: ");
FinSubProceso

Proceso tallerMotos
	Definir nombreDueno Como Caracter;
	Definir placaMoto Como Caracter;
	Definir observacionesDueno Como Caracter;
	Definir opcion Como Entero;
	Definir observacionesMecanico Como Caracter;
	Definir inventario Como Entero;
	Definir repuestos Como Caracter;
	
	
	opcion <- mensajeInicial();
	
	Segun opcion Hacer
		1:
			Definir datosRegistro Como Caracter;
			Dimension datosRegistro[3];
			registroIngreso(datosRegistro);
		2:
			Definir datosSalida Como Caracter;
			Dimension datosSalida[2];
			registroSalida(datosSalida);
			Escribir "¿Desea agregar inventario de repuestos?";
			Escribir "1. SI";
			Escribir "2. NO";
			Leer inventario;
			datosInventario(inventario);
		3:
			Escribir "Gracias por visitarnos";
		De Otro Modo:
			Escribir "Seleccionó una opción no disponible, gracias";
	FinSegun
	
	
FinProceso
