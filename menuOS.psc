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
		Encabezado<-"Men� de Prestaciones y beneficios"
		centrar(Encabezado,40)
		Escribir "   1. Reintegros"
		Escribir "   2. Turismo"
		Escribir "   3. Descuentos"
		Escribir "   4. Estimador de Cuota Voluntario"
		Escribir "   5. Afiliaciones "
		Escribir "   6. Salir"
		// ingresar una opci�n
		Eleccion<- "     Elija una opci�n (1-6): "
		centrar(Eleccion, 20)
		Leer OP
		// procesar esa opci�n
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
			Escribir "Especial cumplea�os Banco Provincia: 40% de descuento en comercios adheridos del lunes 11 al 30 de septiembre, con tope de $ 3.000. Para nuestros afiliados que cumplan a�os durante este mes (incluye a los integrantes del grupo familiar directo). Participan comercios de todos los rubros."
			Escribir ""
			Escribir "Carnicer�as y pescader�as 35% de descuento en comercios adheridos los s�bados y domingos. Tope de $ 4.500 por Afiliado y por semana"
			Escribir ""
			Escribir "Verduler�as y fruter�as: 40% de descuento en comercios adheridos los s�bados y domingos. Tope de $2.500 por Afiliado y por semana."
			Escribir ""
			Escribir "Comercios de barrio:?30% de descuento los d�as mi�rcoles y jueves de septiembre, con tope de $ 2.500 por Afiliado y por semana."
			Escribir ""
			Escribir "Ferias y mercados:?40% de?descuento en compras realizadas en negocios adheridos, vigente todos los d�as del mes, con tope de $ 2.500 por afiliado y por semana."
			Escribir ""
			Escribir "Supermercados:?20% de descuento?el lunes y martes 19 de septiembre, con tope de $ 2.000 por afiliado y por semana."
			Escribir "J�venes de 13 a 17 a�os:?$ 2.000 de regalo por persona por mes en las librer�as y kioscos adheridos para afiliados o integrantes del grupo familiar directo."
			Escribir ""
			Escribir "10% de descuento en recargas de tarjetas SUBE en los kioscos adheridos, para afiliado titular o familiar directo."
			Escribir ""
			Escribir "En todos los casos se debe presentar el carnet de afiliado y DNI para acreditar la correspondencia de alguno de los beneficios aqu� descriptos."
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
			
			escribir "Su N�mero de afiliado es: ", CalcularNumAfiliado(afiliado)
			
		FinSi
		Si (OP>6) o (OP=0) Entonces //Cuando el Usuario oprime cualquier tecla dirferente a las enumeradas en el menu
			Eleccion<- "Opci�n no v�lida"
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





