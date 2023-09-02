funcion centrar(TextPantalla, inicial)
	definir i  Como Entero
	para i<-0 hasta (inicial-(Longitud(TextPantalla)/2)) Hacer
		Escribir Sin Saltar " "
	FinPara
	Escribir TextPantalla
FinFuncion
//LA FUNCION CENTRAR HAY QUE BORRARLA CUANDO SE INTEGREN TODAS LAS PARTES


Algoritmo estimadorDeCuota
	// le muestra los valores de cuota 
	// le mostraria valores de acuerdo a con quien se afilia 
	// Le consultaria el grupo familiar y le estimaria la cuota
	afiliadoPleno<-7500
	afiliadoAdherente<-5000
	adicionalConyuge<-3000
	adicionalHijos<-2000
	
	Repetir
		// mostrar menu de ESTIMADOR DE CUOTA
		Limpiar Pantalla
		Encabezado<-"Menú de  ESTIMADOR DE CUOTA"
		centrar(Encabezado,40)
		Escribir "   1. VALORES POR tipo de AFILIADO"
		Escribir "   2. VALOR POR CONYUGE"
		Escribir "   3. VALOR POR HIJOS"
		Escribir "   4. QUIERE ESTIMAR SU CUOTA? "
		Escribir "   5. REGRESAR"
		// ingresar una opción
		Eleccion<- "     Elija una opción (1-6): "
		centrar(Eleccion, 20)
		Leer estimador
		// procesar esa opción
		Si (estimador=1) Entonces
			// seccion para MOSTRAR VALOR CUOTA SOCIAL
			Escribir " EN ESTA SECCION LE MOSTRAREMOS LOS VALORES DE LAS CUOTAS DE ACUERDO A DETERMINADOS ASPECTOS "
			Escribir "   EL VALOR FINAL ESTAR LIGADO A LA CONFIGURACION DE SU GRUPO FAMILIAR QUE AFILIARA"
			Escribir ""
			Escribir ""
			Escribir " valor para afiliado PLENO:      $ ", afiliadoPleno
			Escribir " valor para afiliado ADHERENTE:  $ ", afiliadoAdherente
			Escribir ""
			Escribir ""
			Escribir ""
			Escribir " OPRIMA UNA TECLA PARA CONTINUAR "
			Esperar Tecla
		FinSi
		
		Si (estimador=2) Entonces
			// Seccion para  VALOR POR CONYUGE
			Escribir " EN ESTA SECCION LE MOSTRAREMOS LOS VALORES DE LAS CUOTAS DE ACUERDO A DETERMINADOS ASPECTOS "
			Escribir "   EL VALOR FINAL ESTAR LIGADO A LA CONFIGURACION DE SU GRUPO FAMILIAR QUE AFILIARA"
			Escribir ""
			Escribir ""
			Escribir " valor adicional por CONYUGE:    $ ", adicionalConyuge
			Escribir ""
			Escribir " OPRIMA UNA TECLA PARA CONTINUAR "
			Esperar Tecla
			
		FinSi
		Si (estimador=3) Entonces	
			// Seccion para VALOR POR HIJOS
			Escribir " EN ESTA SECCION LE MOSTRAREMOS LOS VALORES DE LAS CUOTAS DE ACUERDO A DETERMINADOS ASPECTOS "
			Escribir "   EL VALOR FINAL ESTAR LIGADO A LA CONFIGURACION DE SU GRUPO FAMILIAR QUE AFILIARA"
			Escribir ""
			Escribir ""
			Escribir " valor adicional por HIJO:       $ ", adicionalHijos
			Escribir ""
			Escribir " Para el caso de los hijos, no es relevante la edad ya que los mismos contaran con covertura sin importar su edad mientras formen parte com afiliados."
			Escribir ""
			Escribir ""
			Escribir " OPRIMA UNA TECLA PARA CONTINUAR "
			Esperar Tecla
			
		FinSi
		Si (estimador=4) Entonces	
			// Seccion para QUIERE ESTIMAR SU CUOTA
			valorFinalCuota<-0 //inicializar estimador final
			Escribir ""
			Escribir " Le recordamos que EL VALOR FINAL ESTAR LIGADO A LA CONFIGURACION DE SU GRUPO FAMILIAR QUE AFILIARA "
			Escribir ""
			Escribir ""
			Escribir "INGRESE Tipo de Afiliado:"
			Escribir ""
			Escribir " 1: PLENO         2: ADHERENTE "
			Escribir ""
			Escribir " Si oprime otra tecla se cancela el proceso actual. "
			Leer tipoAfiliado
			si tipoAfiliado=1 Entonces
				valorFinalCuota<-valorFinalCuota+afiliadoPleno
			sino 
				si tipoAfiliado=2 Entonces
					valorFinalCuota<-valorFinalCuota+afiliadoAdherente
				SiNo
					estimador<-0 //si no eligio opcion sujerida regresa al menu
				FinSi
			FinSi
			// sumando al grupo de afiliado en cuestion
			
			Escribir "INGRESE si sumamos conyuge:"
			Escribir ""
			Escribir " 1: SI         2: NO "
			Escribir ""
			Escribir " Si oprime otra tecla se cancela el proceso actual. "
			Leer tipoAfiliado
			si tipoAfiliado=1 Entonces
				valorFinalCuota<-valorFinalCuota+adicionalConyuge
			sino 
				si tipoAfiliado<>2 Entonces
					estimador<-0 //si no eligio opcion sujerida regresa al menu
				FinSi
			FinSi
			
			Escribir "INGRESE si sumamos Hijos:"
			Escribir ""
			Escribir " 1: SI         2: NO "
			Escribir ""
			Escribir " Si oprime otra tecla se cancela el proceso actual. "
			Leer tipoAfiliado
			si tipoAfiliado=1 Entonces
				Escribir ""
				Escribir " Ingrese la cantida de hijos: "
				leer cantidadHijos
				valorFinalCuota<-valorFinalCuota+adicionalHijos*cantidadHijos
			sino 
				si tipoAfiliado<>2 Entonces
					estimador<-0 //si no eligio opcion sujerida regresa al menu
				FinSi
			FinSi
			// aqui le mostraremos el valor estimado de la cuota luego que simulo su configuracion familiar
			Escribir " EN ESTA SECCION LE MOSTRAREMOS LOS VALORES DE LA CUOTA DE ACUERDO A LOS VALORES INGRESADOS"
			Escribir "   EL VALOR FINAL ESTAR LIGADO A LA CONFIGURACION DE SU GRUPO FAMILIAR AL MOMENTO DE SU EFECTIVA AFILIACION"
			Escribir ""
			Escribir ""
			Escribir " valor ESTIMADO DE CUOTA:      $ ", valorFinalCuota
			Escribir ""
			Escribir ""
			Escribir " OPRIMA UNA TECLA PARA CONTINUAR "
			Esperar Tecla
			
		FinSi
		
		
		Si (estimador>5) o (estimador=0) Entonces //Cuando el Usuario oprime cualquier tecla dirferente a las enumeradas en el menu
			Eleccion<- "Opción no válida"
			centrar(Eleccion, 30)
			Eleccion<- " RECUERDE QUE SOLO PUEDE ELEGIR DEL 1 AL 5 "
			centrar(Eleccion, 30)
		FinSi
		
		// Escribir "Presione enter para continuar"
		
		// Esperar Tecla
	Hasta Que estimador=5
	
	
FinAlgoritmo
