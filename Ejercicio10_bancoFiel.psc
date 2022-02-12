//Programa banco.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de condicionales.
//Ejercicio 10.
Proceso bancoFiel
	Definir usuario1 Como Caracter;
	Definir usuario2 Como Caracter;
	Definir usuario3 Como Caracter;
	Definir saldo Como Entero;
	Definir opcion Como Entero;
	Definir nombre Como Caracter;
	Definir ingresoDinero Como Entero;
	Definir seleccion Como Entero;
	Definir nuevoMonto Como Entero;
	Definir retiro Como Entero;
	Definir valorRetiro Como Entero;
	Definir saldoNuevo Como Entero;
	
	usuario1 <- "Carlos";
	usuario2 <- "Juan";
	usuario3 <- "Pablo";
	
	Escribir "Bienvenido a Su Banco Fiel";
	Escribir "Para iniciar con las aplicaciones del banco, digite su nombre";
	Leer nombre;
	Escribir "Bienvenido ", nombre;
	
	Si nombre == "Carlos" Entonces
		saldo <- 15000000;
	SiNo
		Si nombre == "Juan" Entonces
			saldo <- 10000000;
		SiNo
			Si nombre == "Pablo" Entonces
				saldo <- 5000000;
			FinSi
		FinSi
	FinSi
	
	Escribir "Seleccione una de las siguientes acciones a realizar";
	Escribir "1. Ingresos";
	Escribir "2. Retiros";
	Escribir "3. Consultas";
	Leer opcion;
	
	Segun opcion Hacer
		1:
			Escribir "Ha seleccionado la opcion de ingresos";
			Escribir "¿Cuánto dinero desea ingresar?";
			Leer ingresoDinero;
			Si ingresoDinero < 0 Entonces
				Escribir "No se permite un monto negativo, por favor, inicie el proceso nuevamente";
			SiNo
				Si ingresoDinero >= 0 Entonces
					Escribir "Se ha realizado el ingreso de ", ingresoDinero, " de pesos";
					nuevoMonto <- saldo + ingresoDinero;
					Escribir "Saldo actual: ", nuevoMonto;
					Escribir "¿Desea ingresar otro monto de dinero adicional u otro proceso diferente?";
					Escribir "1. SI";
					Escribir "2. NO";
					Leer seleccion;
					Si seleccion == 1 Entonces
						Escribir "Realice nuevamente el proceso desde el inicio";
					SiNo
						Si seleccion == 2 Entonces
							Escribir "Gracias por utilizar el servicio";
						FinSi
					FinSi
				FinSi
			FinSi
			
		2:
			Escribir "Ha seleccionado la opcion de Retiros";
			Escribir "El monto actual en su cuenta es: ", saldo;
			Escribir "Ingrese el monto que desea retirar";
			Leer retiro;
			Si retiro > saldo Entonces
				Escribir "Está solicitando un monto más del disponible, no es posible realizar la transacción, inicie nuevamente el proceso";
			SiNo
				valorRetiro <- saldo - retiro;
				saldoNuevo <- saldo - valorRetiro;
				Escribir "Su retiro de dinero es de: ", saldoNuevo;
				Escribir "Su saldo actual en cuenta es: ", valorRetiro;
			FinSi
			
		3:
			Escribir "Ha seleccionado la opcion de Consulta";
			Escribir "Actualmente cuenta con un saldo de: ", saldo;
		De Otro Modo:
			Escribir "Opción no valida, saliendo el programa. Gracias";
	FinSegun
	
	Escribir "Gracias por visitarnos señor(a) ", nombre;
	
FinProceso
