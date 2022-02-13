//Programa para determinar el ingreso de una persona a la fiesta
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de condicionales.
//Ejercicio 3.
SubProceso capturarPersona ( persona Por Referencia )
	persona[0] <- capturarDato("Ingrese su nombre: ");
	persona[1] <- capturarDato("Digite su apellido: ");
	persona[2] <- capturarDato("Digite su edad: ");
FinSubProceso

SubProceso dato <- capturarDato ( mensaje )
	Definir dato Como Caracter;
	Escribir mensaje Sin Saltar;
	Leer dato;
FinSubProceso

SubProceso imprimirPersona ( persona )
	//Limpiar Pantalla;
	Definir valorNumero Como Entero;
	valorNumero <- ConvertirANumero(persona[2]);
	
	Si valorNumero >= 18 Entonces
		Escribir persona[0], " ", persona[1], " usted es mayor de edad, por lo tanto puede entrar a la fiesta";
	SiNo
		Escribir persona[0], " ", persona[1], " usted es menor de edad, por lo tanto no puede entrar a la fiesta, por favor devuélvase a su casa";
	FinSi
	
FinSubProceso

Proceso ingresoPersona
	Definir datosPersona Como Caracter;
	Dimension datosPersona[3];
	
	capturarPersona(datosPersona);
	imprimirPersona(datosPersona);

	
FinProceso
