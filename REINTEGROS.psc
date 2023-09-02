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
	//Odontología (estimo 100% del bono de $310)
	//Ortopedia (estimo 80%)
	//.
	
	Repetir
		// mostrar menu de reintegros
		Limpiar Pantalla
		Encabezado<-"Menú de  REINTEGROS"
		centrar(Encabezado,40)
		Escribir "   1. Prácticas Médicas"
		Escribir "   2. Odontología"
		Escribir "   3. Ortopedía"
		Escribir "   4. REGRESAR"
		// ingresar una opción
		Eleccion<- "     Elija una opción (1-6): "
		centrar(Eleccion, 20)
		Leer OP
		// procesar esa opción
		Si (OP=1) Entonces
			// seccion para Practicas Medicas
			porcentajeReintegro<- 0.5  // se define el porcentaje de reintegro en una variable, si hay que modificarlo se hace aqui
			Escribir "INGRESE CANTIDAD DE PACTICAS"
			Leer practicas
			Para vueltas<-1 Hasta practicas Con Paso 1 Hacer //ciclo PARA que de acuerdo a la cantidad de reintegros va calculando el total a reintegrar
				escribir "Ingrese el valor de la práctica ", vueltas
				leer reintegro
				montoReintegro<-montoMontoReintegro+(reintegro *porcentajeReintegro) //acumula el 50% del valor ingresado
				
				Escribir ""
				escribir Sin Saltar "             Se le reintegraran: $ ", (reintegro *porcentajeReintegro), " del valor de su Práctica. " // muestra el importe a reintegrar
				escribir " "
			Fin Para
			Escribir "Usted ingreso ", practicas, " practicas para reintegros "
			Escribir " La suma de sus reintegros es de: $ ", montoReintegro // Informa el el importe total a reintegrarle al afiliado
		FinSi
		
		Si (OP=2) Entonces
			// Seccion para Odontologia
			valorReintegroOdontologico<-310 //valor actual de reintegro por bono presentado
			Escribir ""
			Escribir " Le recordamos que reintegramos el 100% del bono de atencion Odontologico, valor actual: $310. "
			Escribir "    ***      No hay limites de bonos, ni por afiliado, grupo faminiar o mensual  ***"
			Escribir ""
			Escribir "INGRESE CANTIDAD DE BONOS ODONTOLOGICOS A REINTEGRAR"
			Leer odontologicos
			
			montoOdontologico<-odontologicos*310 // multiplica la cantidad de bonos por el importe fijado para reintegro
				
			Escribir "Usted ingreso ", odontologicos, " practicas para reintegros "
			Escribir " La suma de sus reintegros es de: $ ", montoOdontologico // Informa el el importe total a reintegrarle al afiliado
			
		FinSi
		Si (OP=3) Entonces	
			// Seccion para Ortopedia
			valorReintegroortopedia<-0.8 //valor actual de reintegro por bono presentado
			Escribir ""
			Escribir "          Le recordamos que reintegramos el 80% de cada factura. "
			Escribir "*** No hay limites de facturas, ni por afiliado, grupo faminiar o mensual  ***"
			Escribir ""
			Escribir "INGRESE CANTIDAD DE FACTURAS A REINTEGRAR"
			Leer facturasOrtoped
			
			Para vueltas<-1 Hasta facturasOrtoped Con Paso 1 Hacer //ciclo PARA que de acuerdo a la cantidad de reintegros va calculando el total a reintegrar
				escribir "Ingrese el valor de la factura: ", vueltas
				leer facturaValor
				montoOrtoped<-montoOrtoped+(facturaValor *valorReintegroortopedia) //acumula el 80% del valor ingresado
				
				Escribir ""
				escribir Sin Saltar "             Se le reintegraran: $ ", (facturaValor*valorReintegroortopedia), " del valor de su Factura. " // muestra el importe a reintegrar
				escribir " "
			Fin Para
			monto<-odontologicos*310 // multiplica la cantidad de bonos por el importe fijado para reintegro
			
			Escribir "Usted ingreso ", facturasOrtoped, " practicas para reintegros "
			Escribir " La suma de sus reintegros es de: $ ", montoOrtoped // Informa el el importe total a reintegrarle al afiliado
			
		FinSi
		Si (OP>4) o (OP=0) Entonces //Cuando el Usuario oprime cualquier tecla dirferente a las enumeradas en el menu
			Eleccion<- "Opción no válida"
			centrar(Eleccion, 30)
			Eleccion<- " RECUERDE QUE SOLO PUEDE ELEGIR DEL 1 AL 6 "
			centrar(Eleccion, 30)
		FinSi
		montoTotalReintegros<- montoReintegro+montoOrtoped+montoOdontologico // sumo todos los reintegros que pudo haber solicitado
		Escribir " Su ultima opcion elejida fue: ", OP
		Escribir ""
		Escribir " El monto total obtenido en conceptos de reintegros fue de: $ " montoTotalReintegros
		Escribir "Presione enter para continuar"
		Escribir afiliado
		Esperar Tecla
	Hasta Que OP=6
	
	
FinAlgoritmo
