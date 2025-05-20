import numpy as np

def cat_map_transform(matriz, iteraciones):
    N = len(matriz)
    A = np.array([[1, 1],
                  [1, 2]])
    
    for k in range(iteraciones):
        nueva = np.zeros_like(matriz)
        for i in range(N):
            for j in range(N):
                coords = np.dot(A, [i, j]) % N
                x_nuevo, y_nuevo = coords
                nueva[x_nuevo][y_nuevo] = matriz[i][j]
        
        matriz = nueva
        print(f"Iteración {k+1} completada.")
    
    return matriz

# Matriz de ejemplo 255x255 con números del 0 al 254 en cada fila
N = 255
matriz = np.tile(np.arange(N), (N, 1))  # matriz[i][j] = j

resultado = cat_map_transform(matriz, iteraciones=1)

# Mostrar parte de la matriz resultante
print("Parte de la matriz transformada:")
print(resultado[:5, :5])  # Muestra los primeros 5x5 valores
