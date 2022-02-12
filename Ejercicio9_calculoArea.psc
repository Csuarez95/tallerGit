//Programa para calcular el �rea.
//Elaborado por: Cristian Su�rez Acosta.
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
	Escribir "Bienvenido al calculador de �reas";
	Escribir "Seleccione una de las siguientes opciones";
	Escribir "1. Calcular �rea rect�ngulo";
	Escribir "2. Calcular �rea tri�ngulo";
	Escribir "3. Calcular �rea trapecio";
	Escribir "4. Salir";
	Leer opcion;
	
	Segun opcion Hacer
		1:
			//C�lculo area rect�ngulo
			Escribir "Se calcula el �rea de un rect�ngulo";
			Escribir "Ingrese la base del rect�ntulo en metros";
			Leer base;
			Escribir "Ingrese la altura del rect�ngulo en metros";
			Leer altura;
			areaRectangulo <- base * altura;
			Escribir "El �rea del rect�ngulo con ", base, " metros de base y ", altura, " metros de altura es de: ", areaRectangulo, " m2";
		2:
			//C�lculo �rea tri�ngulo
			Escribir "Se calcula el �rea de un tri�ngulo";
			Escribir "Ingrese la altura del triangulo en metros";
			Leer altura;
			Escribir "Ingrese la base del triangulo en metros";
			Leer base;
			areaTriangulo <- (base * altura) / 2;
			Escribir "El �rea del triangulo con ", base, " metros de base y ", altura, " metros de altura es de: ", areaTriangulo, " m2";
		3:
			//C�lculo �rea Trapecio
			Escribir "Se calcula el �rea de un trapecio";
			Escribir "Ingrese la altura del trapecio en metros";
			Leer altura;
			Escribir "Ingrese la base superior del trapecio en metros";
			Leer baseSuperior;
			Escribir "Ingrese la base inferior del trapecio";
			Leer base;
			areaTrapecio <- (base + baseSuperior) * altura / 2;
			Escribir "El �rea del trapecio con ", base, " metros de base, " , baseSuperior, " metros de base superior y ", altura, " metros de altura es de: ", areaTrapecio, " m2";
		4:
			Escribir "Muchas gracias por participar";
		De Otro Modo:
			Escribir "Ingres� una opci�n inv�lida";
	FinSegun
	
	
FinProceso
