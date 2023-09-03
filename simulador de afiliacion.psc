funcion centrar(TextPantalla, inicial)
	definir i  Como Entero
	para i<-0 hasta (inicial-(Longitud(TextPantalla)/2)) Hacer
		Escribir Sin Saltar " "
	FinPara
	Escribir TextPantalla
FinFuncion
//LA FUNCION CENTRAR HAY QUE BORRARLA CUANDO SE INTEGREN TODAS LAS PARTES

Funcion reserv <- CalcularNumAfiliado //creador de numero de AFILIADO
	reserv<-azar(9999) + 1
	// escribir afiliado
	// retorna el numero de afiliado
FinFuncion


Algoritmo simuladorAfiliacion
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
		Encabezado<-"  ****   SOLICITUD DE AFILIACION ****  "
		centrar(Encabezado,40)
		Escribir ""
		Escribir ""
		Escribir "   1. RECORDANDO LOS VALORES DE AFILIACION"
		Escribir "   2. SIMULACION DE AFILIADO"
		Escribir ""
		Escribir "   3. REGRESAR "
		Escribir ""
		// ingresar una opción
		Eleccion<- "     Elija una opción (1-3): "
		centrar(Eleccion, 20)
		Leer simulador
		continuar<-0 //variable que controla eleccion correcta en la afiliacion
		// procesar esa opción
		Si (simulador=1) Entonces
			// seccion para LOS VALORES DE AFILIACION 
			Limpiar Pantalla
			Escribir " EN ESTA SECCION LE MOSTRAREMOS LOS VALORES DE LAS CUOTAS DE ACUERDO A DETERMINADOS ASPECTOS "
			Escribir ""
			Escribir " valor para afiliado PLENO:      $ ", afiliadoPleno
			Escribir " valor para afiliado ADHERENTE:  $ ", afiliadoAdherente
			Escribir " valor adicional por conyuge:    $ ", adicionalConyuge
			Escribir " valor adicional por cada:       $ ", adicionalHijos
			Escribir ""
			Escribir " OPRIMA UNA TECLA PARA CONTINUAR "
			continuar<-1
			Esperar Tecla
		FinSi
		Si (simulador=2) Entonces	
			// Seccion para QUIERE ESTIMAR SU CUOTA
			valorFinalCuota<-0 //inicializar estimador final
			continuar<-1
			Limpiar Pantalla
			Escribir ""
			Escribir " Le recordamos que EL VALOR FINAL ESTA LIGADO A LA CONFIGURACION DE SU GRUPO FAMILIAR."
			Escribir ""
			Escribir ""
			Escribir "INGRESE Tipo de Afiliado:"
			Escribir ""
			Escribir " 1: PLENO         2: ADHERENTE "
			Escribir ""
			Escribir " Si oprime otra tecla se cancela el proceso actual. "
			Leer tipoAfiliado
			
			si tipoAfiliado=1 Entonces //comineza el calculo de la ciuota de acuerdo al tipo de afiliado
				valorFinalCuota<-valorFinalCuota+afiliadoPleno
				continuar<-1
			sino 
				si tipoAfiliado=2 Entonces
					valorFinalCuota<-valorFinalCuota+afiliadoAdherente
					continuar<-1
				SiNo
					estimador<-0 //si no eligio opcion sujerida regresa al menu
					continuar<-0
				FinSi
			FinSi
			
			
			// sumando al grupo de afiliado en cuestion
			SI continuar=1 entonces //verifica que en la consulta no elijio una opcion incorrecta al tipo de afiliado 
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
						continuar<-0
					FinSi
				FinSi
			FinSi
			
			
			SI continuar=1 //verifica que en la consulta no elijio una opcion incorrecta al tipo de afiliado/suma conyuge 
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
						continuar<-0
					FinSi
				FinSi
			FinSi
			
			
			SI continuar=1 //verifica que en la consulta no elijio una opcion incorrecta al tipo de afiliado/suma conyuge/suma hijos
				// aqui le mostraremos el valor estimado de la cuota luego que simulo su configuracion familiar
				Escribir " EN ESTA SECCION LE MOSTRAREMOS LOS VALORES DE LA CUOTA DE ACUERDO A LOS VALORES INGRESADOS"
				Escribir "   EL VALOR FINAL ESTAR LIGADO A LA CONFIGURACION DE SU GRUPO FAMILIAR AL MOMENTO DE SU EFECTIVA AFILIACION"
				Escribir ""
				Escribir ""
				Escribir " valor ESTIMADO DE CUOTA:      $ ", valorFinalCuota
				Escribir ""
				AfiliadoTempora<-CalcularNumAfiliado()
				Escribir "SU NUMERO DE AFILIADO PROVISORIO ES :", AfiliadoTempora
				Escribir ""
				Escribir " informe este numero cuando se comunique usted con el area de AFILIACINES o un especialsita lo contacte al telefono facilitado"
				Escribir ""
				Escribir " OPRIMA UNA TECLA PARA CONTINUAR "
				Esperar Tecla
			FinSi
			
			
		FinSi
		
		
		
		Si (continuar=0) Entonces //Cuando el Usuario oprime cualquier tecla dirferente a las enumeradas en el menu
			Eleccion<- " ALGUNA DE LAS OPCIONES INGRESADAS FUE INCORRECTA, POR FAVOR INTENTELO NUEVAMENTE"
			centrar(Eleccion, 30)
			Eleccion<- " RECUERDE QUE SOLO PUEDE ELEGIR DEL 1 AL 3 "
			centrar(Eleccion, 30)
			Esperar Tecla
		FinSi
		
		// Escribir "Presione enter para continuar"
		
		// Esperar Tecla
	Hasta Que simulador=3
	
	
FinAlgoritmo
