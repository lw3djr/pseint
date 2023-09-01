Algoritmo BucleParaArreglos
	
	dimension lista[3,3]
	Definir valorCaracteristica Como Caracter //defino la variable
	para articulo<-1 Hasta 3 con paso 1 Hacer
		para caracteristica<-1 hasta 3 con paso 1 Hacer
			Escribir "Ingreso para Articulo , articulo, " la caracteristica , caracteristica
			leer valorCaracteristica
			lista[articulo,caracteristica]<- valorCaracteristica
		FinPara
	FinPara
	Escribir " Lista de datos"
	para articulo<-1 Hasta 3 con paso 1 Hacer
		para caracteristica<-1 hasta 3 con paso 1 Hacer
			Escribir " Articulo ", lista[articulo,caracteristica]
		FinPara
	FinPara
FinAlgoritmo
