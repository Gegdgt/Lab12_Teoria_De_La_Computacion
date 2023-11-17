-- Definición de la función para transponer una matriz
transposeMatrix :: [[a]] -> [[a]]
-- Caso base: si la matriz de entrada es vacía, la matriz transpuesta también es vacía
transposeMatrix [] = []
-- Caso base: si alguna de las sublistas es vacía, la matriz transpuesta también es vacía
transposeMatrix ([] : _) = []
-- Caso recursivo: transponer la matriz
transposeMatrix matrix = (map head matrix) : transposeMatrix (map tail matrix)

-- Función principal
main :: IO ()
main = do
  -- Definir la matriz
  let x =
        [ [1, 2, 3, 1],
          [4, 5, 6, 0],
          [7, 8, 9, -1]
        ]

  -- Calcular la matriz transpuesta usando la función transposeMatrix
  let result = transposeMatrix x

  -- Imprimir la matriz original
  putStrLn "Matriz original:"
  print x

  -- Imprimir la matriz transpuesta
  putStrLn "Matriz transpuesta:"
  print result
