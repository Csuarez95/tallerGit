//Programa para calcular el área.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de condicionales.
//Funciones.
//Ejercicio 9.

SubProceso dato <- mensajeInicial()
	Definir dato Como Entero;
	Escribir "Bienvenido al calculador de áreas";
	Escribir "Seleccione una de las siguientes opciones";
	Escribir "1. Calcular área rectángulo";
	Escribir "2. Calcular área triángulo";
	Escribir "3. Calcular área trapecio";
	Escribir "4. Salir";
	Leer dato;
FinSubProceso

SubProceso areaRectangulo(a, b)
	Definir area1 Como Real;
	area1 <- a * b;
	Escribir "El área es de: ", area1, " m2";
FinSubProceso

SubProceso areaTriangulo(a, b)
	Definir area1 Como Real;
	area1 <- (a * b) / 2;
	Escribir "El área es de: ", area1, " m2";
FinSubProceso

SubProceso areaTrapecio(a, b, c)
	Definir area1 Como Real;
	area1 <- (a + c) * b / 2;
	Escribir "El área es de: ", area1, " m2";
FinSubProceso

SubProceso base1 <- solicitarBase()
	Definir base1 Como Real;
	Escribir "Ingrese la base del rectántulo en metros";
	Leer base1;
FinSubProceso

SubProceso altura1 <- solicitarAltura()
	Definir altura1 Como Real;
	Escribir "Ingrese la base del rectántulo en metros";
	Leer altura1;
FinSubProceso

Proceso calculoArea
	//Declaracion variables.
	Definir opcion Como Entero;
	Definir altura Como Entero;
	Definir base Como Entero;
	Definir baseSuperior Como Entero;
	
	//Mensaje inicial.
	opcion <- mensajeInicial();
	
	Segun opcion Hacer
		1:
			//Cálculo area rectángulo
			Escribir "Se calcula el área de un rectangulo";
			base <- solicitarBase();
			altura <- solicitarAltura();
			areaRectangulo(base, altura);
			
		2:
			//Cálculo área triángulo
			Escribir "Se calcula el área de un triangulo";
			base <- solicitarBase();
			altura <- solicitarAltura();
			areaTriangulo(base, altura);
		3:
			//Cálculo área Trapecio
			Escribir "Se calcula el área de un trapecio";
			base <- solicitarBase();
			altura <- solicitarAltura();
			Escribir "Ingrese la base superior del trapecio en metros";
			Leer baseSuperior;
			areaTrapecio(base, baseSuperior, altura);
		4:
			Escribir "Muchas gracias por participar";
		De Otro Modo:
			Escribir "Ingresó una opción inválida";
	FinSegun
	
	
FinProceso
