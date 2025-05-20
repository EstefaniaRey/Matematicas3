Proceso ArnoldMap
    Definir i, j, x_nuevo, y_nuevo, k, iteraciones Como Entero
    Definir matriz, nueva Como Entero
    Dimension matriz[4,4], nueva[4,4]
	
    // Leer matriz original
    Escribir "Ingresa los valores de la matriz 3x3 (índices de 1 a 3):"
    Para i <- 1 Hasta 3
        Para j <- 1 Hasta 3
            Escribir "Elemento [", i, ",", j, "]: "
            Leer matriz[i, j]
        FinPara
    FinPara
	
    // Mostrar matriz original
    Escribir ""
    Escribir "Matriz original:"
    Para i <- 1 Hasta 3
        Para j <- 1 Hasta 3
            Escribir Sin Saltar matriz[i, j], " "
        FinPara
        Escribir ""
    FinPara
	
    // Leer número de iteraciones
    Escribir ""
    Escribir "¿Cuántas iteraciones deseas aplicar?"
    Leer iteraciones
	
    // Aplicar transformación de Arnold
    Para k <- 1 Hasta iteraciones
        Para i <- 1 Hasta 3
            Para j <- 1 Hasta 3
                x_nuevo <- ((i - 1 + j - 1) Mod 3) + 1
                y_nuevo <- ((i - 1 + 2 * (j - 1)) Mod 3) + 1
                nueva[x_nuevo, y_nuevo] <- matriz[i, j]
            FinPara
        FinPara
		
        // Copiar nueva en matriz
        Para i <- 1 Hasta 3
            Para j <- 1 Hasta 3
                matriz[i, j] <- nueva[i, j]
            FinPara
        FinPara
		
        // Mostrar matriz en cada iteración
        Escribir ""
        Escribir "Matriz tras iteración ", k, ":"
        Para i <- 1 Hasta 3
            Para j <- 1 Hasta 3
                Escribir Sin Saltar matriz[i, j], " "
            FinPara
            Escribir ""
        FinPara
    FinPara
	
    // Mostrar matriz final
    Escribir ""
    Escribir "Matriz final después de ", iteraciones, " iteraciones:"
    Para i <- 1 Hasta 3
        Para j <- 1 Hasta 3
            Escribir Sin Saltar matriz[i, j], " "
        FinPara
        Escribir ""
    FinPara
FinProceso
