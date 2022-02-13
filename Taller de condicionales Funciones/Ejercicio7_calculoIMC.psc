//Programa para calcular IMC.
//Elaborado por: Cristian Su�rez Acosta.
//Cantera nivel 1.
//Taller de condicionales.
//Funciones.
//Ejercicio 7.

SubProceso dato <- mensajeInicial()
	Definir dato Como Entero;
	Escribir "Bienvenido a la Secretar�a de Salud Municipal";
	Escribir "�Desea conocer su ICM (Indice de Masa Corporal)?";
	Escribir "1. SI";
	Escribir "2. NO";
	Leer dato;
FinSubProceso

SubProceso imc <- IMCcalculo(est, pes)
	Definir imc Como Real;
	imc <- pes / (est ^ 2);
	Escribir "Su IMC es ", imc;
FinSubProceso

SubProceso composicionCorporal(composicion)
	Si composicion < 18.5 Entonces
		Escribir "Su peso es inferior al normal";
	SiNo
		Si composicion >= 18.5 & composicion <= 24.9 Entonces
			Escribir "Su peso est� normal";
		SiNo
			Si composicion >= 25 & composicion <= 29.9 Entonces
				Escribir "Su peso es superior al normal";
			SiNo
				Escribir "Usted tiene obesidad";
			FinSi
		FinSi
	FinSi
FinSubProceso

Proceso calculoIMC
	Definir opcion Como Entero;
	Definir calculo Como Real;
	Definir peso Como Real;
	Definir estatura Como Real;
	
	calculo <- 0;
	opcion <- mensajeInicial;
	
	Segun opcion Hacer
		1:
			Escribir "Por favor, ingrese su peso en Kg";
			Leer peso;
			Escribir "Ingrese su estatura en metros";
			Leer estatura;
			calculo <- IMCcalculo(estatura, peso);
			composicionCorporal(calculo);
		2:
			Escribir "Muchas gracias por visitar la Secretar�a de Salud Municipal";
		De Otro Modo:
			Escribir "Ingres� un comando inv�lido, gracias";
	FinSegun
FinProceso
