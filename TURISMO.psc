funcion centrar(TextPantalla, inicial)
	definir i  Como Entero
	para i<-0 hasta (inicial-(Longitud(TextPantalla)/2)) Hacer
		Escribir Sin Saltar " "
	FinPara
	Escribir TextPantalla
FinFuncion
//LA FUNCION CENTRAR HAY QUE BORRARLA CUANDO SE INTEGREN TODAS LAS PARTES


// Datos de contacto ficticios
// Escribir "                          Turismo Social - Legajo 9518"
//Escribir "                           Calle 5 N° 1657 - La Plata"
// Escribir "Tel./Fax.: (0221) 425-6666 / 427-1230 / Línea gratuita: 0800-888-5784 - Interno. 200"
// Escribir "	                              WhatsApp: 221599999"
// Escribir "                     Correo electrónico: turismo@tugremio.org "
// Escribir "	              Horario de atención: lunes a viernes de 8:30 a 15.30 hs. "



Algoritmo turismoObraSocial
	//  
	// Presenta las diferentes opciones para turismo 
	//   Hotelería 
	//   alojamientos turísticos
	//   Salidas Grupales
	//   Miniturismo
	//   Destinos Internacionales
	definir OPturismo Como Caracter
	Repetir
		// mostrar menu
		Limpiar Pantalla
		Encabezado<-"Menú de  TURISMO"
		centrar(Encabezado,40)
		Escribir "   1. Hoteleria."
		Escribir "   2. Alojamientos turisticos nacionales."
		Escribir "   3. Salidas Grupales."
		Escribir "   4. Mini Turismo."
		Escribir "   5. Listado de los principales destinos que se suelen elejir. "
		Escribir "   6. REGRESAR."
		// ingresar una opción
		Eleccion<- "     Elija una opción (1-6): "
		centrar(Eleccion, 20)
		Leer OPturismo
		// procesar esa opción
		Si (OPturismo="1") Entonces
			// seccion para turismo hotelero
			Limpiar Pantalla
			Escribir "Estos son los hoteles que disponemos en estos momentos para usted: "
			Escribir " "
			Escribir "1.  Hotel Tronador ****, Habitación por noche con desayuno. Single Junior $16.000. Mar del Plata (Bs.As.)."
			Escribir "2.  Hotel Savoia ***, Habitación por noche con desayuno. Single $9.0000. San Clemente (Bs.As.)."
			Escribir "3.  Hotel Valle del Sol ***, Habitación por noche con desayuno. Single $13.600. Merlo (San Luis). "
			Escribir "4.  Cabañas Calma Chicha, Tarifa por noche en: Cabaña de 2 a 3 pax: $15.000. Sierras de los Padres (Bs.As.). "
			Escribir "5.  Hotel Camaro I, Habitación por noche con desayuno. Single $12.800. CABA. "
			Escribir "6.  Hotel Camaro II, Habitación por noche con desayuno. Single $17.200. CABA. "
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
					destino<-  " Cabañas Calma Chicha, en Sierras de los Padres (Bs.As.)."
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
			
			Escribir " Su elección fue: ", destino
			Escribir " "
			Escribir " Su gasto aproximado seria de $: ", reservaGasto, " este dependera de sus datos finales cuando confirme la reserva."
			Escribir " "
			Escribir " La confirmacion se dara luego de que un agente del area de Turismo se comunique con usted."
			Escribir "     *** SI USTED CANCELO POR ERROR, PUEDE COMUNICARSE CON TURISMO Y CON GUSTO LO AYUDAREMOS ***. "
			Escribir ""
			Escribir " Nuestros datos de contacto:"
			Escribir "                          Turismo Social - Legajo 9518."
			Escribir "                           Calle 5 N° 1657 - La Plata."
			Escribir "Tel./Fax.: (0221) 425-6666 / 427-1230 / Línea gratuita: 0800-888-5784 - Interno. 200."
			Escribir "	                              WhatsApp: 221599999."
			Escribir "                     Correo electrónico: turismo@tugremio.org "
			Escribir "	              Horario de atención: lunes a viernes de 8:30 a 15.30 hs. "
			Escribir " "
			Escribir "Presione enter para continuar."
			Esperar Tecla
			//
			
		FinSi
		
		Si (OPturismo="2") Entonces
			// "   2. Alojamientos turisticos nacionales"
			Escribir "de aqui saldria a sub proceso Alojamientos turisticos nacionales."
			
		FinSi
		Si (OPturismo="3") Entonces	
			// "   3. Salidas Grupales"
			Escribir "de aqui saldria a sub proceso Salidas Grupales."
			
		FinSi
		Si (OPturismo="4") Entonces
			// "  4. Mini Turismo"
			Escribir "Le presentaremos opciones para MINI Tursimo."
			Escribir "    OPRIMA UNA TECLA.   "
			Esperar Tecla
			Limpiar Pantalla
			Escribir "          Estas son las opciones de MINI TURISMO, por favor elija por cual quiere ser asesorado, luego"
		    Escribir "  un especialista se comunicara con usted para informarle todas las opciones sobre dicha opción."
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
					Mostrar "         Son paquetes armados conjuntamente entre nuestra Área de Turismo y las Seccionales con el objetivo recreativo "
					Mostrar "   y pedagógico de conocer los pueblos de nuestras provincias, sus culturas y sus costumbres, en un "
					Mostrar "   formato de salida y regreso en el día con servicios de bus exclusivos para nuestros Afiliados."
					destino<-  " Conociendo nuestros pueblos"
					
				2: //salidas fins de semana
					Escribir " "
					Escribir " "
					Mostrar "         Que no son otra cosa que paquetes de dos días y una noche, que incluyen tanto guías locales como coordinadores "
					Mostrar "   de Tursimo, contemplan las comidas y las excursiones y servicios de bus exclusivos para nuestros Afiliados."
					destino<-  " Salidas de fines de semana"
					
				3: //escapadas
					Escribir " "
					Escribir " "
					Mostrar "         Son salidas a destinos cortos, no necesariamente de nuestra provincia, que están previstos para ir y volver en el día" 
					Mostrar "   y pueden estar implementados mediante contratación directa o a través de Turismo, se lo informara el especialista."
					destino<-  " Escapadas"
					
				4: //salidas culturales
					Escribir " "
					Escribir " "
					Mostrar "         son pequeñas salidas a distintos eventos culturales de la Ciudad de Buenos Aires. Tenés la opción de elegir espectáculos"
					Mostrar "   con descuento, gratuitos o sumarte a algún grupo e ir con nosotros. Se lo informara el especialista."
					destino<-  " Salidas Culturales"
				De Otro Modo:
					Escribir " "
					Escribir " "
					destino<-"    ANULACION DE RESERVA ... "
					Escribir " al elegir una opcion distinta a las listadas su reserva se cancela."
			Fin Segun
			
			Escribir " Su elección fue: ", destino
			Escribir " "
			Escribir " "
			Escribir " La confirmacion se dara luego de que un agente del area de Turismo se comunique con usted."
			Escribir "     *** SI USTED CANCELO POR ERROR, PUEDE COMUNICARSE CON TURISMO Y CON GUSTO LO AYUDAREMOS ***. "
			Escribir ""
			Escribir " Nuestros datos de contacto:"
			Escribir "                          Turismo Social - Legajo 9518."
			Escribir "                           Calle 5 N° 1657 - La Plata."
			Escribir "Tel./Fax.: (0221) 425-6666 / 427-1230 / Línea gratuita: 0800-888-5784 - Interno. 200."
			Escribir "	                              WhatsApp: 221599999."
			Escribir "                     Correo electrónico: turismo@tugremio.org "
			Escribir "	              Horario de atención: lunes a viernes de 8:30 a 15.30 hs. "
			Escribir " "
			Escribir "Presione enter para continuar."
			Esperar Tecla
			//
			
		FinSi
		Si (OPturismo="5") Entonces
			// "   5. Destinos Internacionales "
			Escribir "Le presentaremos nuestro rancking de destinos."
			Escribir "    OPRIMA UNA TECLA.   "
			Esperar Tecla
			Limpiar Pantalla
			Escribir " Listado de principales destinos."
			Escribir " "
			Escribir " En esta sección no ofician las reservas, solo es para informar el rancking actual de destinos."
			
			// en esta seccion el afiliado no optara por ninguna ocion, solo es informado
			
			Escribir " 1.  Bariloche."
			Escribir " 2.  Buenos Aires."
			Escribir " 3.  Iguazú."
			Escribir " 4.  Mendoza."
			Escribir " 5.  Salta."
			Escribir " 6.  Ushuaia."
			Escribir " 7.  Calafate."
			Escribir " 8.  Córdoba."
			Escribir " 9.  Mar del Plata."
			Escribir " 10. Orlando (Disney) como único destino internacional (nuestra recomendación CONOZCAMOS NUESTRO PAIS PRIMERO)."
			
			Escribir " "
			Escribir " "
			Escribir "     *** esta seccion es solo informativa, pero PUEDE COMUNICARSE CON TURISMO Y CON GUSTO LO AYUDAREMOS ***. "
			Escribir ""
			Escribir " Nuestros datos de contacto:"
			Escribir "                          Turismo Social - Legajo 9518."
			Escribir "                           Calle 5 N° 1657 - La Plata."
			Escribir "Tel./Fax.: (0221) 425-6666 / 427-1230 / Línea gratuita: 0800-888-5784 - Interno. 200."
			Escribir "	                              WhatsApp: 221599999."
			Escribir "                     Correo electrónico: turismo@tugremio.org "
			Escribir "	              Horario de atención: lunes a viernes de 8:30 a 15.30 hs. "
			Escribir " "
			Escribir "Presione enter para continuar."
			Esperar Tecla
			//
		FinSi
		Si (OPturismo>"6") o (OPturismo<="0") Entonces //Cuando el Usuario oprime cualquier tecla dirferente a las enumeradas en el menu
			Eleccion<- "Opción no válida"
			centrar(Eleccion, 30)
			Eleccion<- " RECUERDE QUE SOLO PUEDE ELEGIR DEL 1 AL 6 "
			centrar(Eleccion, 30)
		FinSi
		
		Escribir "  "
		Escribir "Presione enter para continuar"
		
		Esperar Tecla
	Hasta Que OPturismo="6"
	
	// Aqui se supone que antes de regresar mostramos todo lo que eligio el afiliado
	
	Escribir " 1.  Bariloche."
	Escribir " 2.  Buenos Aires."
	Escribir " 3.  Iguazú."
	Escribir " 4.  Mendoza."
	Escribir " 5.  Salta."
	Escribir " 6.  Ushuaia."
	Escribir " 7.  Calafate."
	Escribir " 8.  Córdoba."
	Escribir " 9.  Mar del Plata."
	Escribir " 10. Orlando (Disney) como único destino internacional (nuestra recomendación CONOZCAMOS NUESTRO PAIS PRIMERO)."
	Esperar Tecla
	
FinAlgoritmo
