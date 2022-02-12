//Programa para calcular el área.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de condicionales.
//Ejercicio 9.
Proceso calculoArea
	//Declaracion variables.
	Definir areaRectangulo Como Real;
	Definir areaTriangulo Como Real;
	Definir areaTrapecio Como Real;
	Definir opcion Como Entero;
	Definir altura Como Entero;
	Definir base Como Entero;
	Definir baseSuperior Como Entero;
	
	//Mensaje inicial.
	Escribir "Bienvenido al calculador de áreas";
	Escribir "Seleccione una de las siguientes opciones";
	Escribir "1. Calcular área rectángulo";
	Escribir "2. Calcular área triángulo";
	Escribir "3. Calcular área trapecio";
	Escribir "4. Salir";
	Leer opcion;
	
	Segun opcion Hacer
		1:
			//Cálculo area rectángulo
			Escribir "Se calcula el área de un rectángulo";
			Escribir "Ingrese la base del rectántulo en metros";
			Leer base;
			Escribir "Ingrese la altura del rectángulo en metros";
			Leer altura;
			areaRectangulo <- base * altura;
			Escribir "El área del rectángulo con ", base, " metros de base y ", altura, " metros de altura es de: ", areaRectangulo, " m2";
		2:
			//Cálculo área triángulo
			Escribir "Se calcula el área de un triángulo";
			Escribir "Ingrese la altura del triangulo en metros";
			Leer altura;
			Escribir "Ingrese la base del triangulo en metros";
			Leer base;
			areaTriangulo <- (base * altura) / 2;
			Escribir "El área del triangulo con ", base, " metros de base y ", altura, " metros de altura es de: ", areaTriangulo, " m2";
		3:
			//Cálculo área Trapecio
			Escribir "Se calcula el área de un trapecio";
			Escribir "Ingrese la altura del trapecio en metros";
			Leer altura;
			Escribir "Ingrese la base superior del trapecio en metros";
			Leer baseSuperior;
			Escribir "Ingrese la base inferior del trapecio";
			Leer base;
			areaTrapecio <- (base + baseSuperior) * altura / 2;
			Escribir "El área del trapecio con ", base, " metros de base, " , baseSuperior, " metros de base superior y ", altura, " metros de altura es de: ", areaTrapecio, " m2";
		4:
			Escribir "Muchas gracias por participar";
		De Otro Modo:
			Escribir "Ingresó una opción inválida";
	FinSegun
	
	
FinProceso
