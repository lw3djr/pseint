
	Algoritmo tabla_de_multiplicar
		Escribir 'Bienvenido a la calculadora, ingrese la operación que quiere hacer'
		Escribir 'inrese 1 para operar, 2 para practicar y 3 para salir'
		Leer nav
		Segun nav Hacer
			1:
				Escribir '1. suma'
				Escribir '2. resta'
				Escribir '3. multiplicación'
				Escribir '4. división'
				Leer operacion
				
				Escribir 'Ingrese el primer operando'
				Leer n1
				Escribir 'Ingrese el segundo operando'
				Leer n2
				
				Segun operacion Hacer
					1:
						res<-n1+n2
					2:
						res<-n1-n2
					3:
						res<-n1*n2
					4:
						res<-n1/n2
					De Otro Modo:
						Escribir 'opción incorrecta'
				Fin Segun
				
				Escribir 'el resultado es ', res
			2:
				n1<- Aleatorio(1, 10)
				n2<- Aleatorio(1, 10)
				op<- Aleatorio(1,4)
				Segun op Hacer
					1:
						Escribir 'calcula', n1, '+', n2
						Leer res						
						Si res=n1+n2 Entonces
							Escribir 'coreeectooo'
						SiNo
							Escribir 'vuelve a intentar'
						Fin Si
					2:
						Escribir 'calcula', n1, '-', n2
						Leer res
						Si res=n1-n2 Entonces
							Escribir 'coreeectooo'
						SiNo
							Escribir 'vuelve a intentar'
						Fin Si
					3:
						Escribir 'calcula', n1, '*', n2
						Leer res
						Si res=n1*n2 Entonces
							Escribir 'coreeectooo'
						SiNo
							Escribir 'vuelve a intentar'
						Fin Si
					
					4:
						Escribir 'calcula sin decimales', n1, '/', n2
						Leer res
						Si redon(res)=n1/n2 Entonces
							Escribir 'coreeectooo'
						SiNo
							Escribir 'vuelve a intentar'
						Fin Si
				Fin Segun
			3:
				Escribir 'gracias, vuelva pronto'
			De Otro Modo:
				Escribir 'opción incorresta'
		Fin Segun
		
		
		
FinAlgoritmo
	

