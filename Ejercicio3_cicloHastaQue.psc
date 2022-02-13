//Programa ciclo Hasta-que.
//Elaborado por: Cristian Suárez Acosta.
//Cantera nivel 1.
//Taller de ciclos.
//Ejercicio 4.
Proceso cicloHastaQue
	
	Definir filas, i, j, k Como Entero;
	
	//arbol
	i <- 0;
	k <- 0;
	Escribir "Tener en cuenta que debe ingresar un valor mínimo de 4";
	Escribir "Por favor, ingrese una altura de árbol";
	Leer filas;
	
	//Si el arbol es de solo una fila lo construimos manual
	Si filas = 1 Entonces
		Escribir "No es posible construir el árbol";
	FinSi
	
	//Si el árbol es de mas de una fila lo construimos con los ciclos
	Si filas > 1 Entonces
		Repetir
			j <- filas - i;
			Repetir
				Escribir " " Sin Saltar;
				j <- j - 1;
			Hasta Que j < 1
			k <- 0;
			Repetir
				Escribir "*" Sin Saltar;
				k <- k + 1;
			Hasta Que k >= ((2 * i) +1)
			Escribir "";
			i <- i + 1;
		Hasta Que i >= filas
	FinSi
	
	
	//base
	//Si el arbol es de dos o tres filas se construye la base manualmente
	si filas = 2 Entonces
		Escribir "  *";
		Escribir "  *";
	FinSi
	si filas = 3 Entonces
		Escribir "   *";
		Escribir "   *";
	FinSi
	
	//Si el árbol tiene mas de cuatro filas creamos la base con los ciclos.
	//La posición de la base depende de la cantidad de filas que tenga el árbol ya que debe quedar centrada
	si filas >= 4 Entonces
		i <- 0;
		k <- 0;
		Repetir
			j <- filas - 1;
			k <- 0;
			si (i = 0 o i = 1) Entonces
				Repetir
					Escribir " " Sin Saltar;
					j <- j - 1;
				Hasta Que j < 1
				Repetir
					Escribir "*" Sin Saltar;
					k <- k + 1;
				Hasta Que k >= 3
				Escribir "";
			FinSi
			Si i = 2 entonces
				j <- (((2 * filas) - 1) - 5)/2;
				k <- 0;
				Repetir
					Escribir " " Sin Saltar;
					j <- j - 1;
				Hasta Que j < 0
				Repetir
					Escribir "*" Sin Saltar;
					k <- k + 1;
				Hasta Que k >= ((2 * i) + 1)
				Escribir "";
			FinSi
			Si i = 3 Entonces
				
				j <- (((2 * filas) - 1) - 7)/2;
				k <- 0;
				Repetir
					Escribir " " Sin Saltar;
					j <- j - 1;
				Hasta Que j < 0
				Repetir
					Escribir "*" Sin Saltar;
					k <- k + 1;
				Hasta Que k >= ((2 * i) + 1)
				Escribir "";
			FinSi
			i <- i + 1;
		Hasta Que i > 3
	FinSi
	
FinProceso
