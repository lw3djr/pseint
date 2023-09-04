funcion centrar(TextPantalla, inicial)
	definir i  Como Entero
	para i<-0 hasta (inicial-(Longitud(TextPantalla)/2)) Hacer
		Escribir Sin Saltar " "
	FinPara
	Escribir TextPantalla
FinFuncion
//LA FUNCION CENTRAR HAY QUE BORRARLA CUANDO SE INTEGREN TODAS LAS PARTES

// Sub Proceso que muestra los 10, secciones que el usuario visito durante la ejecucion

SubProceso  HistorialMuestra(arreglo)
	Mostrar " "
	Mostrar " Aqui le presentamos las 10 secciones que visito"
	Mostrar " "
	Mostrar " Si visito menos de 10 el resto aparecera sin datos"
	Mostrar " "
	para inicio<-1 Hasta 10 Con Paso 1 Hacer
		Mostrar " --> ", inicio, " : ", arreglo[inicio]
	FinPara
	
FinSubProceso

// Sub Proceso que cargaria el Historial

SubProceso HistorialCarga(vector,cantidad,lugar)
	
	si cantidad <= 10 Entonces
		vector[cantidad]<-lugar
	FinSi
	
FinSubProceso

// seria la firma de cada salida o regreso, una especie de pie de pagina

funcion datosTurismo(vienede)
	
	//funcion para listar datos de contacto TURISMO
	Escribir " Gracias por visitar la seccion ", vienede
	Escribir ""
	Escribir " Nuestros datos de contacto:"
	Escribir "                          Turismo Social - Legajo 9518"
	Escribir "                           Calle 5 N� 1657 - La Plata"
	Escribir "Tel./Fax.: (0221) 425-6666 / 427-1230 / L�nea gratuita: 0800-888-5784 - Interno. 200"
	Escribir "	                              WhatsApp: 221599999"
	Escribir "                     Correo electr�nico: turismo@tugremio.org "
	Escribir "	              Horario de atenci�n: lunes a viernes de 8:30 a 15.30 hs. "
	

FinFuncion


Algoritmo turismoObraSocial
	//  
	// Presenta las diferentes opciones para turismo 
	//   Hoteler�a 
	//   alojamientos tur�sticos
	//   Salidas Grupales
	//   Miniturismo
	//   Listado de los principales destinos que se suelen elejir. 
	
// variables CARACTER
	
	definir OPturismo Como Caracter
	
// variables VECTORES
	
	Dimension Historia[10]
	
// variables numericas

	definir contador Como Entero
	
	contador<-1
	Repetir
		// mostrar menu
		Limpiar Pantalla
		Encabezado<-"Men� de  TURISMO"
		centrar(Encabezado,40)
		Escribir "   1. Hoteleria."
		Escribir "   2. Informacion para comprender los datos sobre categorias en alojamiento."
		Escribir "   3. Salidas Grupales."
		Escribir "   4. Mini Turismo."
		Escribir "   5. Listado de los principales destinos que se suelen elejir. "
		Escribir "   6. REGRESAR."
		// ingresar una opci�n
		Eleccion<- "     Elija una opci�n (1-6): "
		centrar(Eleccion, 20)
		Leer OPturismo
		// procesar esa opci�n
		Si (OPturismo="1") Entonces
			// seccion para turismo hotelero
			seccion<- " Hoteleria " //para que la funcion de datos de contacto lo informe
			HistorialCarga(Historia,contador,seccion)
			contador<-contador+1
			Limpiar Pantalla
			Escribir "Estos son los hoteles que disponemos en estos momentos para usted: "
			Escribir " "
			Escribir "1.  Hotel Tronador ****, Habitaci�n por noche con desayuno. Single Junior $16.000. Mar del Plata (Bs.As.)."
			Escribir "2.  Hotel Savoia ***, Habitaci�n por noche con desayuno. Single $9.0000. San Clemente (Bs.As.)."
			Escribir "3.  Hotel Valle del Sol ***, Habitaci�n por noche con desayuno. Single $13.600. Merlo (San Luis). "
			Escribir "4.  Caba�as Calma Chicha, Tarifa por noche en: Caba�a de 2 a 3 pax: $15.000. Sierras de los Padres (Bs.As.). "
			Escribir "5.  Hotel Camaro I, Habitaci�n por noche con desayuno. Single $12.800. CABA. "
			Escribir "6.  Hotel Camaro II, Habitaci�n por noche con desayuno. Single $17.200. CABA. "
			Escribir " "
			Escribir " Que opcion prefiere para que un especialista de TURISMO se comunique con usted: "
			Escribir " Si oprime cualquier otra tecla se cancelara la posible reserva y regresara al menu anterior. "
			leer TurismoOpcion
			Escribir " "
			Escribir " "
			
			Segun TurismoOpcion Hacer
				1:
					reservaGasto<-16000
					destino<-  " Hotel Tronador ****, en Mar del Plata (Bs.As.)."
				2:
					reservaGasto<-9000
					destino<-  " Hotel Savoia ***, en San Clemente (Bs.As.)."
				3:
					reservaGasto<-13600
					destino<-  " Hotel Valle del Sol ***, en Merlo (San Luis)."
				4:
					reservaGasto<-15000
					destino<-  " Caba�as Calma Chicha, en Sierras de los Padres (Bs.As.)."
				5:
					reservaGasto<-12800
					destino<-  " Hotel Camaro I, en CABA."
				6:
					reservaGasto<-17200
					destino<-  " Hotel Camaro II, en  CABA."
				De Otro Modo:
					destino<-"    ANULACION DE RESERVA ... "
					Escribir " al elegir una opcion distinta a las listadas su reserva se cancela."
					reservaGasto<-0
			Fin Segun
			
			Escribir " Su elecci�n fue: ", destino
			Escribir " "
			Escribir " Su gasto aproximado seria de $: ", reservaGasto, " este dependera de sus datos finales cuando confirme la reserva."
			Escribir " "
			Escribir " La confirmacion se dara luego de que un agente del area de Turismo se comunique con usted."
			Escribir "     *** SI USTED CANCELO POR ERROR, PUEDE COMUNICARSE CON TURISMO Y CON GUSTO LO AYUDAREMOS ***. "
			Escribir ""
			datosTurismo(seccion)
			Escribir "Presione enter para continuar."
			Esperar Tecla
			//
			
		FinSi
		
		Si (OPturismo="2") Entonces
			// "   2. Informacion para comprender los datos sobre categorias en alojamiento."
			seccion<- " Informacion para comprender los datos sobre categorias en alojamiento. " //para que la funcion de datos de contacto lo informe
			HistorialCarga(Historia,contador,seccion)
			contador<-contador+1
			Limpiar Pantalla
			Escribir " "
			Escribir " Cantidad de estrellas en los HOTELES: "
			Escribir " 1 estrella: habitaci�n doble de 12 m2 m�nimo e individual de 7. Cuarto de ba�o de 3,5 m2 m�nimo. Calefacci�n y ascensor."
			Escribir " 2 estrellas: habitaci�n doble de 14 m2 m�nimo e individual de 7. Cuarto de ba�o de 3,5 a 4 m2 m�nimo. Tel�fono en la habitaci�n, calefacci�n, ascensor y caja de seguridad."
			Escribir " 3 estrellas: habitaci�n doble de 15 m2 m�nimo e individual de 8. Cuarto de ba�o de 4 m2 m�nimo. Tel�fono en la habitaci�n, calefacci�n, aire acondicionado en zonas comunes, ascensor y caja de seguridad."
			Escribir " 4 estrellas: habitaci�n doble de 16 m2 m�nimo e individual de 9. Cuarto de ba�o con ba�o y ducha de 4,5 m2 m�nimo. Tel�fono en la habitaci�n, calefacci�n, aire acondicionado en la habitaci�n, ascensor, bar y caja de seguridad en la habitaci�n."
			Escribir " 5 estrellas: habitaci�n doble de 17 m2 m�nimo e individual de 10. Cuarto de ba�o con ba�o y ducha de 5 m2 m�nimo. Tel�fono en la habitaci�n, calefacci�n, aire acondicionado en la habitaci�n, ascensor, bar y caja de seguridad en la habitaci�n."
			Escribir " "
			Escribir " Alojamientos urbanos: Son todos aquellos hoteles o apartamentos que se encuentran dentro del n�cleo urbano o metropolitano."
			Escribir ""
			Escribir " Albergues: Son establecimientos donde hay habitaciones con varios n�meros de camas. "
			Escribir ""
			Escribir ""
			Escribir " Business Hotel: Estos alojamientos est�n destinados, en exclusiva, a atraer mujeres y hombres de negocios.  "
			Escribir ""
			Escribir " Capsule Hotel: Esta nueva tendencia de alojamientos a�n no se encuentra en muchas ciudades. "
			Escribir ""
			Escribir " Bed & Breakfast: Son alojamientos que incluyen el desayuno en el precio de las habitaciones.  "
			Escribir ""
			Escribir " Hostal o Pensi�n: Son m�s econ�micos que un hotel convencional. Ofrecen, adem�s del desayuno, la comida, cena o ambas (media pensi�n y pensi�n completa)."
			Escribir ""
			Escribir " Casas Rurales y Hoteles R�sticos: Se encuentran en zonas alejadas de las ciudades, normalmente en pueblos peque�os y zonas de monta�a. "
			Escribir ""
			Escribir " Campings: Los campings suelen estar formados por una gran cantidad de parcelas donde auto-caravanas u otros veh�culos establecen sus tiendas de campa�a o carpas. "
			Escribir ""
			Escribir " Resorts y Hoteles de playa: Los resorts son grandes complejos vacacionales situados cerca de playas u otros entornos tropicales. "
			Escribir ""
			Escribir " puede visitar la pagina oficial del Sistema de Informacin Turistica Nacional"
			Escribir " alli encotrara datos oficiales de todos los alojamientos registrados en nuestro pa�s"
			Escribir  "                       https://datos.yvera.gob.ar/ "
			Escribir ""
			destino<- " Informacion de categorias y tipos de alojamientos "
			
			Escribir " Su elecci�n fue: ", destino
			Escribir " "
			Escribir " "
			Escribir " La confirmacion se dara luego de que un agente del area de Turismo se comunique con usted."
			Escribir "     *** SI USTED CANCELO POR ERROR, PUEDE COMUNICARSE CON TURISMO Y CON GUSTO LO AYUDAREMOS ***. "
			Escribir ""
			datosTurismo(seccion)
			Escribir "Presione enter para continuar."
			Esperar Tecla
			
		FinSi
		Si (OPturismo="3") Entonces	
			// "   3. Salidas Grupales"
			seccion<- " Salidas Grupales " //para que la funcion de datos de contacto lo informe
			
			HistorialCarga(Historia,contador,seccion)
			contador<-contador+1
			Limpiar Pantalla
			Escribir "Estos son las principales salidas grupales por las que podra optar."
			Escribir ""
			
			Escribir " 29/Octubre-01/Noviembre: Caravana `Los amantes del vino`, aloj�ndose dentro de la Bodega Algod�n Wine Estates Resort, en San Rafael, Mendoza."
			Escribir ""
			Escribir " 15/Noviembre: Cataratas del iguaz� con Luna LLena."
			Escribir ""
			Escribir " 30/Diciembre: Fin de A�o en el Fin del Mundo, si en Ushuaia."
			Escribir ""
			Escribir " Ballenas y ping�inos en Puerto Madryn."
			Escribir ""
			Escribir " Bariloche y catedrales de hielo."
			Escribir ""
			Escribir " Ushuaia + El Calafate + El Chalt�n."	
			Escribir ""
			Escribir " Esteros del Iber� ? Saltos del Mocon�."	
			Escribir ""
			Escribir " Noroeste Argentino: Tucum�n ? Salta y Jujuy."
			Escribir ""
			Escribir " Mendoza: los caminos del vino & las olivas"	
			Escribir ""
			Escribir " San Ju�n ? La Rioja y Catamarca"	
			Escribir ""
			Escribir " Buenos Aires Espectacular"	
			Escribir ""
			destino<- "Principales Salidas Grupales Nacionales"	
			
			Escribir " Su elecci�n fue: ", destino
			Escribir " "
			Escribir " "
			Escribir " La confirmacion se dara luego de que un agente del area de Turismo se comunique con usted."
			Escribir "     *** SI USTED CANCELO POR ERROR, PUEDE COMUNICARSE CON TURISMO Y CON GUSTO LO AYUDAREMOS ***. "
			Escribir ""
			Escribir " Recuerde su numero de afiliado:  ", afiliado
			Escribir ""
			
			datosTurismo(seccion)
			
			Escribir "Presione enter para continuar."
			Esperar Tecla
			
		FinSi
		Si (OPturismo="4") Entonces
			// "  4. Mini Turismo"
			seccion<- " Mini Turismo " //para que la funcion de datos de contacto lo informe
			HistorialCarga(Historia,contador,seccion)
			contador<-contador+1
			
			Limpiar Pantalla
			Escribir "Le presentaremos opciones para MINI Tursimo."
			Escribir "    OPRIMA UNA TECLA.   "
			Esperar Tecla
			Limpiar Pantalla
			Escribir "          Estas son las opciones de MINI TURISMO, por favor elija por cual quiere ser asesorado, luego"
		    Escribir "  un especialista se comunicara con usted para informarle todas las opciones sobre dicha opci�n."
			Escribir "          No se preocupe que la reserva sobre el destino surgira de lo charlado con el especialista "
			Escribir "  quien le indicara los pasos a seguir."
			Escribir " "
			Escribir " 1. Programa: Conociendo nuestros pueblos. "
			Escribir " 2. Programa: Salidas de fines de semana."
			Escribir " 3. Programa: Escapadas. "
			Escribir " 4. Programa: Salidas Culturales. "
			Escribir " "
			Escribir " Que opcion prefiere para que un especialista de TURISMO se comunique con usted: "
			Escribir " Si oprime cualquier otra tecla se cancelara la posible reserva y regresara al menu anterior. "
			leer MiniTurismoOpcion
			Escribir " "
			Escribir " "
			// que tecla oprime para mini turismo
			
			Segun MiniTurismoOpcion Hacer
				1: //conociendo nuestros pueblos
					Escribir " "
					Escribir " "
					Mostrar "         Son paquetes armados conjuntamente entre nuestra �rea de Turismo y las Seccionales con el objetivo recreativo "
					Mostrar "   y pedag�gico de conocer los pueblos de nuestras provincias, sus culturas y sus costumbres, en un "
					Mostrar "   formato de salida y regreso en el d�a con servicios de bus exclusivos para nuestros Afiliados."
					destino<-  " Conociendo nuestros pueblos"
					
				2: //salidas fins de semana
					Escribir " "
					Escribir " "
					Mostrar "         Que no son otra cosa que paquetes de dos d�as y una noche, que incluyen tanto gu�as locales como coordinadores "
					Mostrar "   de Tursimo, contemplan las comidas y las excursiones y servicios de bus exclusivos para nuestros Afiliados."
					destino<-  " Salidas de fines de semana"
					
				3: //escapadas
					Escribir " "
					Escribir " "
					Mostrar "         Son salidas a destinos cortos, no necesariamente de nuestra provincia, que est�n previstos para ir y volver en el d�a" 
					Mostrar "   y pueden estar implementados mediante contrataci�n directa o a trav�s de Turismo, se lo informara el especialista."
					destino<-  " Escapadas"
					
				4: //salidas culturales
					Escribir " "
					Escribir " "
					Mostrar "         son peque�as salidas a distintos eventos culturales de la Ciudad de Buenos Aires. Ten�s la opci�n de elegir espect�culos"
					Mostrar "   con descuento, gratuitos o sumarte a alg�n grupo e ir con nosotros. Se lo informara el especialista."
					destino<-  " Salidas Culturales"
				De Otro Modo:
					Escribir " "
					Escribir " "
					destino<-"    ANULACION DE RESERVA ... "
					Escribir " al elegir una opcion distinta a las listadas su reserva se cancela."
			Fin Segun
			
			Escribir " Su elecci�n fue: ", destino
			Escribir " "
			Escribir " "
			Escribir " La confirmacion se dara luego de que un agente del area de Turismo se comunique con usted."
			Escribir "     *** SI USTED CANCELO POR ERROR, PUEDE COMUNICARSE CON TURISMO Y CON GUSTO LO AYUDAREMOS ***. "
			Escribir ""
			
			datosTurismo(seccion)
			
			Escribir "Presione enter para continuar."
			Esperar Tecla
			//
			
		FinSi
		Si (OPturismo="5") Entonces
			// "   5. Rancking de destinos "
			seccion<- " Rancking de destinos de nuestros afiliados " //para que la funcion de datos de contacto lo informe
			HistorialCarga(Historia,contador,seccion)
			contador<-contador+1
			Limpiar Pantalla
			Escribir "Le presentaremos nuestro rancking de destinos."
			Escribir "    OPRIMA UNA TECLA.   "
			Esperar Tecla
			Limpiar Pantalla
			Escribir " Listado de principales destinos."
			Escribir " "
			Escribir " En esta secci�n no ofician las reservas, solo es para informar el rancking actual de destinos."
			
			// en esta seccion el afiliado no optara por ninguna ocion, solo es informado
			
			Escribir " 1.  Bariloche."
			Escribir " 2.  Buenos Aires."
			Escribir " 3.  Iguaz�."
			Escribir " 4.  Mendoza."
			Escribir " 5.  Salta."
			Escribir " 6.  Ushuaia."
			Escribir " 7.  Calafate."
			Escribir " 8.  C�rdoba."
			Escribir " 9.  Mar del Plata."
			Escribir " 10. Orlando (Disney) como �nico destino internacional (nuestra recomendaci�n CONOZCAMOS NUESTRO PAIS PRIMERO)."
			
			Escribir " "
			Escribir " "
			Escribir "     *** esta seccion es solo informativa, pero PUEDE COMUNICARSE CON TURISMO Y CON GUSTO LO AYUDAREMOS ***. "
			Escribir ""
			
			datosTurismo(seccion)
			
			Escribir "Presione enter para continuar."
			Esperar Tecla
			//
		FinSi
		Si (OPturismo>"6") o (OPturismo<="0") Entonces //Cuando el Usuario oprime cualquier tecla dirferente a las enumeradas en el menu
			Limpiar Pantalla
			Eleccion<- "Opci�n no v�lida"
			centrar(Eleccion, 30)
			Eleccion<- " RECUERDE QUE SOLO PUEDE ELEGIR DEL 1 AL 6 "
			centrar(Eleccion, 30)
		FinSi
		
		Escribir "  "
		Escribir "Presione enter para continuar"
		
		Esperar Tecla
	Hasta Que OPturismo="6"
	
	// Aqui antes de regresar mostramos todo lo que eligio el afiliado
	
	HistorialMuestra(Historia)
	seccion<- " REGRESANDO"
	datosTurismo(seccion)
	Escribir "Presione enter para continuar."
	Esperar Tecla
	
FinAlgoritmo





