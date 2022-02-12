//Programa para calcular IMC.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de condicionales.
//Ejercicio 7.
Proceso calculoIMC
	Definir peso Como Entero;
	Definir estatura Como Real;
	Definir opcion Como Entero;
	Definir imc Como Real;
	
	Escribir "Bienvenido a la Secretaría de Salud Municipal";
	Escribir "¿Desea conocer su ICM (Indice de Masa Corporal)?";
	Escribir "1. SI";
	Escribir "2. NO";
	Leer opcion;
	
	Segun opcion Hacer
		1:
			Escribir "Por favor, ingrese su peso en Kg";
			Leer peso;
			Escribir "Ingrese su estatura en metros";
			Leer estatura;
			imc <- peso / (estatura ^ 2);
			Escribir "Su IMC es ", imc;
			Si imc < 18.5 Entonces
				Escribir "Su peso es inferior al normal";
			SiNo
				Si imc >= 18.5 & imc <= 24.9 Entonces
					Escribir "Su peso está normal";
				SiNo
					Si imc >= 25 & imc <= 29.9 Entonces
						Escribir "Su peso es superior al normal";
					SiNo
						Escribir "Usted tiene obesidad";
					FinSi
				FinSi
			FinSi
			
		2:
			Escribir "Muchas gracias por visitar la Secretaría de Salud Municipal";
		De Otro Modo:
			Escribir "Ingresó un comando inválido, gracias";
	FinSegun
FinProceso
