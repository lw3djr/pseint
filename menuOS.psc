// Intento de Menu para  proyecto final Potenciar Argentina

//funcion para centrar texto
funcion centrar(TextPantalla, inicial)
	definir i  Como Entero
	para i<-0 hasta (inicial-(Longitud(TextPantalla)/2)) Hacer
		Escribir Sin Saltar " "
	FinPara
	Escribir TextPantalla
FinFuncion

//SubProceso para asignar numero afiliado
Funcion reserv <- CalcularNumAfiliado(num) 
	reserv<-azar(9999) + 1
	// escribir afiliado
	// retorna el numero de afiliado
FinFuncion


Algoritmo menuObraSocial
	
	Repetir
		// mostrar menu
		Limpiar Pantalla
		Encabezado<-"Menú de Prestaciones y beneficios"
		centrar(Encabezado,40)
		Escribir "   1. Reintegros"
		Escribir "   2. Turismo"
		Escribir "   3. Descuentos"
		Escribir "   4. Estimador de Cuota Voluntario"
		Escribir "   5. Afiliaciones "
		Escribir "   6. Salir"
		// ingresar una opción
		Eleccion<- "     Elija una opción (1-6): "
		centrar(Eleccion, 20)
		Leer OP
		// procesar esa opción
		Si (OP=1) Entonces
			// seccion para reintegros
			Escribir "de aqui saldria a sub proceso Reintegros"
		
		FinSi
		Si (OP=2) Entonces
			// Seccion para Turismo
			Escribir "de aqui saldria a sub proceso Turismo"
		
		FinSi
		Si (OP=3) Entonces	
			// Seccion para Descuentos
			Escribir "de aqui saldria a sub proceso descuentos"
			
		FinSi
		Si (OP=4) Entonces
			// Seccion para estimador cuota
			Escribir "de aqui saldria a sub proceso estimador cuota"
			
		FinSi
		Si (OP=5) Entonces
			// Seccion para Afiliaciones
			Escribir " de aqui saldria a sub proceso afiliaciones"
			
			escribir "Su Número de afiliado es: ", CalcularNumAfiliado(afiliado)
			
		FinSi
		Si (OP>6) o (OP=0) Entonces //Cuando el Usuario oprime cualquier tecla dirferente a las enumeradas en el menu
			Eleccion<- "Opción no válida"
			centrar(Eleccion, 30)
			Eleccion<- " RECUERDE QUE SOLO PUEDE ELEGIR DEL 1 AL 6 "
			centrar(Eleccion, 30)
		FinSi
		Escribir " Su ultima opcion elejida fue: ", OP
		Escribir "Presione enter para continuar"
		Escribir afiliado
		Esperar Tecla
	Hasta Que OP=6
	
	// mostrar todo lo que realizo el afiliado o posible afiliado, o sea mostrar todas las variables y cosntantes (en las que no ingreso las mostraria vacias)
	
	
	Escribir "Gracias, vuelva pronto"
FinAlgoritmo





