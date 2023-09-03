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
Funcion reserv <- CalcularNumAfiliado 
	reserv<-azar(9999) + 1
	// escribir afiliado
	// retorna el numero de afiliado
FinFuncion


Algoritmo menuObraSocial
	
	//Variables numericas
	
	definir afiliadoPleno Como Entero
	definir afiliadoAdherente Como Entero
	definir adicionalConyuge Como Entero
	definir adicionalHijos Como Entero
	definir estimador Como Entero
	definir valorFinalCuota Como Entero
	definir tipoAfiliado Como Entero
	definir valorFinalCuota Como Entero
	definir OP Como Entero
	definir AfiliadoTempora Como Entero
	definir afiliado Como Entero
	definir porcentajeReintegro Como Entero
	definir practicas Como Entero
	definir montoReintegro Como Entero
	definir vueltas Como Entero
	definir valorReintegroOdontologico Como Entero
	definir odontologicos Como Entero
	definir montoOdontologico Como Entero
	definir valorReintegroortopedia Como Entero
	definir facturasOrtoped Como Entero
	definir facturaValor Como Entero
	definir monto Como Entero
	definir montoTotalReintegros Como Entero
	definir simulador Como Entero
	definir continuar Como Entero
	definir valorFinalCuota Como Entero
	definir tipoAfiliado Como Entero
	definir cantidadHijos Como Entero
	definir AfiliadoTempora Como Entero
	definir contador Como Entero
	definir MiniTurismoOpcion Como Entero
	definir monto Como Entero
	
	//varaibles caracter
	
	definir OPturismo Como Caracter
	definir Eleccion Como caracter
	definir cantidadHijos Como caracter
	definir Encabezado Como caracter
	definir OPturismo Como caracter
	definir seccion Como caracter
	definir reservaGasto Como caracter
	definir destino Como caracter
	definir Eleccion Como caracter
	definir Eleccion Como caracter
	
	// variables vectores
	
	Dimension Historia[10]
	
	
	Repetir
		// mostrar menu
		Limpiar Pantalla
		Encabezado<-"Menú de Prestaciones y beneficios"
		centrar(Encabezado,40)
		Escribir "   1. Reintegros" //LISTO 
		Escribir "   2. Turismo" // LISTO
		Escribir "   3. Descuentos" // LISTO
		Escribir "   4. Estimador de Cuota AFILIADO" //LISTO
		Escribir "   5. Afiliaciones "
		Escribir "   6. Salir"
		// ingresar una opción
		Eleccion<- "     Elija una opción (1-6): "
		centrar(Eleccion, 20)
		Leer OP //OP variable que identifica la OPcion del usuario
		// procesar esa opción
		Si (OP=1) Entonces
			// seccion para reintegros
			Escribir "de aqui saldria a sub proceso Reintegros"
		
		FinSi
		Si (OP=2) Entonces
			// Seccion para Turismo
			
			// listoooooooooooo
			
			Escribir "de aqui saldria a sub proceso Turismo"
		
		FinSi
		Si (OP=3) Entonces	
			// Seccion para Descuentos
			Escribir " ____AQUI LES PRESENTAMOS LOS PRINCIPALES CONVENIOS DE DESCUENTOS PARA NUESTROS AFILIADOS_______"
			Escribir ""
			Escribir "Especial cumpleaños Banco Provincia: 40% de descuento en comercios adheridos del lunes 11 al 30 de septiembre, con tope de $ 3.000. Para nuestros afiliados que cumplan años durante este mes (incluye a los integrantes del grupo familiar directo). Participan comercios de todos los rubros."
			Escribir ""
			Escribir "Carnicerías y pescaderías 35% de descuento en comercios adheridos los sábados y domingos. Tope de $ 4.500 por Afiliado y por semana"
			Escribir ""
			Escribir "Verdulerías y fruterías: 40% de descuento en comercios adheridos los sábados y domingos. Tope de $2.500 por Afiliado y por semana."
			Escribir ""
			Escribir "Comercios de barrio:?30% de descuento los días miércoles y jueves de septiembre, con tope de $ 2.500 por Afiliado y por semana."
			Escribir ""
			Escribir "Ferias y mercados:?40% de?descuento en compras realizadas en negocios adheridos, vigente todos los días del mes, con tope de $ 2.500 por afiliado y por semana."
			Escribir ""
			Escribir "Supermercados:?20% de descuento?el lunes y martes 19 de septiembre, con tope de $ 2.000 por afiliado y por semana."
			Escribir "Jóvenes de 13 a 17 años:?$ 2.000 de regalo por persona por mes en las librerías y kioscos adheridos para afiliados o integrantes del grupo familiar directo."
			Escribir ""
			Escribir "10% de descuento en recargas de tarjetas SUBE en los kioscos adheridos, para afiliado titular o familiar directo."
			Escribir ""
			Escribir "En todos los casos se debe presentar el carnet de afiliado y DNI para acreditar la correspondencia de alguno de los beneficios aquí descriptos."
			Escribir ""
			Escribir "Ante cualquier duda o consulta puede comunicarse con el delegado, referente que lo afilio o en nuestras oficinas."
			
		FinSi
		Si (OP=4) Entonces
			// Seccion para estimador cuota
			Escribir "de aqui saldria a sub proceso estimador cuota"
			
		FinSi
		Si (OP=5) Entonces
			// Seccion para Afiliaciones
			Escribir " de aqui saldria a sub proceso afiliaciones"
			AfiliadoTempora<-CalcularNumAfiliado()
			escribir "Su Número de afiliado es: ", AfiliadoTempora
			
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





