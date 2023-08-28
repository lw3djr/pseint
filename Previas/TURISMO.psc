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
	
	Repetir
		// mostrar menu
		Limpiar Pantalla
		Encabezado<-"Menú de  TURISMO"
		centrar(Encabezado,40)
		Escribir "   1. Hoteleria"
		Escribir "   2. Alojamientos turisticos nacionales"
		Escribir "   3. Salidas Grupales"
		Escribir "   4. Mini Turismo"
		Escribir "   5. Destinos Internacionales "
		Escribir "   6. REGRESAR"
		// ingresar una opción
		Eleccion<- "     Elija una opción (1-6): "
		centrar(Eleccion, 20)
		Leer OP
		// procesar esa opción
		Si (OP=1) Entonces
			// seccion para turismo hotelero
			Escribir "Estos son los hoteles que disponemos en estos momentos para usted: "
			Escribir " "
			Escribir "1.  Hotel Tronador ****, Habitación por noche con desayuno. Single Junior $16.000. Mar del Plata (Bs.As.)"
			Escribir "2.  Hotel Savoia ***, Habitación por noche con desayuno. Single $9.0000. San Clemente (Bs.As.)"
			Escribir "3.  Hotel Valle del Sol ***, Habitación por noche con desayuno. Single $13.600. Merlo (San Luis) "
			Escribir "4.  Cabañas Calma Chicha, Tarifa por noche en: Cabaña de 2 a 3 pax: $15.000. Sierras de los Padres (Bs.As.) "
			Escribir "5.  Hotel Camaro I, Habitación por noche con desayuno. Single $12.800. CABA "
			Escribir "6.  Hotel Camaro II, Habitación por noche con desayuno. Single $17.200. CABA "
			Escribir " "
			Escribir " Que opcion prefiere para que un especialista de TURISMO se comunique con usted: "
			leer TurismoOpcion
			Escribir " "
			Escribir " "
			
			Segun TurismoOpcion Hacer
				1:
					reservaGasto<-16000
					destino<-  " Hotel Tronador ****, en Mar del Plata (Bs.As.)"
				2:
					reservaGasto<-9000
					destino<-  " Hotel Savoia ***, en San Clemente (Bs.As.)"
				3:
					reservaGasto<-13600
					destino<-  " Hotel Valle del Sol ***, en Merlo (San Luis)"
				4:
					reservaGasto<-15000
					destino<-  " Cabañas Calma Chicha, en Sierras de los Padres (Bs.As.)"
				5:
					reservaGasto<-12800
					destino<-  " Hotel Camaro I, en CABA"
				6:
					reservaGasto<-17200
					destino<-  " Hotel Camaro II, en  CABA"
				De Otro Modo:
					Escribir " al elegir una opcion distinta a las listadas su reserva se cancela"
					reservaGasto<-0
			Fin Segun
			
			Escribir " Su elección fue: ", destino
			Escribir " "
			Escribir " Su gasto aproximado seria de $: ", reservaGasto, " este dependera de sus datos finales cuando confirme la reserva"
			Escribir " "
			Escribir  " La confirmacion se dara luego de que un agente del area de Turismo se comunique con usted"
			Escribir " "
			Escribir " "
			Escribir "                          Turismo Social - Legajo 9518"
			Escribir "                           Calle 5 N° 1657 - La Plata"
			Escribir "Tel./Fax.: (0221) 425-6666 / 427-1230 / Línea gratuita: 0800-888-5784 - Interno. 200"
			Escribir "	                              WhatsApp: 221599999"
			Escribir "                     Correo electrónico: turismo@tugremio.org "
			Escribir "	              Horario de atención: lunes a viernes de 8:30 a 15.30 hs. "
			Escribir " "
			Escribir "Presione enter para continuar", afiliado
			Escribir afiliado
			Esperar Tecla
			//Leer practicas
			
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
