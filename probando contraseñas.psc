Algoritmo contrasenia_con_Intentos
			Definir contador Como Entero
			Definir contrase�a Como Caracter
			contador <- 1
			Mientras contador <= 3 Hacer
				Escribir "Ingresa una contrase�a"
				leer contrase�a
				si contrase�a == "algoritmopasswd" Entonces
					Escribir "La contrase�a es correcta"
					contador <- 4
				SiNo
					si contador == 3 Entonces
						Escribir "Has fallado los 3 intentos"
					SiNo
						Escribir "La contrase�a es incorrecta"
					FinSi
				FinSi
				contador <- contador + 1
			FinMientras
			
FinAlgoritmo
