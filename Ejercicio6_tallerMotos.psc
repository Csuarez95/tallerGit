//Programa taller de motos.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de condicionales.
//Ejercicio 6.
Proceso tallerMotos
	Definir nombreDueno Como Caracter;
	Definir placaMoto Como Caracter;
	Definir observacionesDueno Como Caracter;
	Definir opcion Como Entero;
	Definir observacionesMecanico Como Caracter;
	Definir inventario Como Entero;
	Definir repuestos Como Caracter;
	
	
	Escribir "Bienvenido al taller de motos El Maquinista";
	Escribir "Por favor, seleccione una de las siguientes opciones";
	Escribir "1. Registro de ingreso al taller";
	Escribir "2. Observaciones de salida del taller";
	Escribir "3. Salir";
	Leer opcion;
	
	Segun opcion Hacer
		1:
			Escribir "Ingrese el nombre del dueño";
			Leer nombreDueno;
			Escribir "Ingrese placa de la moto";
			Leer placaMoto;
			Escribir "Ingrese observaciones del motivo de ingreso al taller";
			Leer observacionesDueno;
			Escribir "El registro se ha realizado con éxito, el mecánico reparará su vehículo";
		2:
			Escribir "Ingrese placa de la moto";
			Leer placaMoto;
			Escribir "Ingrese los arreglos realizados";
			Leer observacionesMecanico;
			Escribir "¿Desea agregar inventario de repuestos?";
			Escribir "1. SI";
			Escribir "2. NO";
			Leer inventario;
			Si inventario == 1 Entonces
				Escribir "Ingrese los repuestos empleados en la moto";
				Leer repuestos;
				Escribir "Gracias por el registro de los repuestos, puede realizar la entrega de la moto con placa ", placaMoto;
			SiNo
				Si inventario == 2 Entonces
					Escribir "La moto con placa ", placaMoto, " puede ser entregada";
				FinSi
			FinSi
		3:
			Escribir "Gracias por visitarnos";
		De Otro Modo:
			Escribir "Seleccionó una opción no disponible, gracias";
	FinSegun
	
	
FinProceso
