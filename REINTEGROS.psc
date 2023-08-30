funcion centrar(TextPantalla, inicial)
	definir i  Como Entero
	para i<-0 hasta (inicial-(Longitud(TextPantalla)/2)) Hacer
		Escribir Sin Saltar " "
	FinPara
	Escribir TextPantalla
FinFuncion
//LA FUNCION CENTRAR HAY QUE BORRARLA CUANDO SE INTEGREN TODAS LAS PARTES


Algoritmo Reintegros_Obra_Social
	// REINTEGROS DE LA Obra social 
	// reintegra gastos médicos 
	// Prácticas médicas (estimo 50%)
	//Odontología (estimo 100%)
	//Ortopedia (estimo 50%)
	//Fonoaudiología (estimo 50%)
	// Kinesiología (estimo 60%)
	//.
	
	Repetir
		// mostrar menu
		Limpiar Pantalla
		Encabezado<-"Menú de  REINTEGROS"
		centrar(Encabezado,40)
		Escribir "   1. Prácticas Médicas"
		Escribir "   2. Odontología"
		Escribir "   3. Ortopedía"
		Escribir "   4. Fonoaudiología"
		Escribir "   5. Kinesiología "
		Escribir "   6. REGRESAR"
		// ingresar una opción
		Eleccion<- "     Elija una opción (1-6): "
		centrar(Eleccion, 20)
		Leer OP
		// procesar esa opción
		Si (OP=1) Entonces
			// seccion para reintegros
			Escribir "INGRESE CANTIDAD DE PACTICAS"
			Leer practicas
			Para vueltas<-1 Hasta practicas Con Paso 1 Hacer //ciclo PARA que de acuerdo a la cantidad de reintegros va calculando el total a reintegrar
				escribir "Ingrese el valor de la práctica ", vueltas
				leer reintegro
				monto<-monto+(reintegro *0.5) //acumula el 50% del valor ingresado
				
				escribir Sin Saltar "             Se le reintegraran: $ ", (reintegro *0.5), " del valor de su Práctica. " // muestra el importe a reintegrar
				escribir " "
			Fin Para
			Escribir "Usted ingreso ", practicas, " practicas para reintegros "
			Escribir " La suma de sus reintegros es de: $ ", monto // Informa el el importe total a reintegrarle al afiliado
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
			
			escribir "Su Número de afiliado es: "
			
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
	
	
FinAlgoritmo
