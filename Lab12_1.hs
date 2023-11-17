import Data.List (sortBy)
import Data.Ord (comparing)

-- Definición de un diccionario como una lista de pares (clave, valor)
type Dict = [(String, String)]

main :: IO ()
main = do
  -- Lista de diccionario
  let originalList =
        [ [("make", "Nokia"), ("model", "216"), ("color", "Black")],
          [("make", "Apple"), ("model", "2"), ("color", "Silver")],
          [("make", "Huawei"), ("model", "50"), ("color", "Gold")],
          [("make", "Samsung"), ("model", "7"), ("color", "Blue")]
        ]

  -- Clave por la cual ordenar la lista de diccionarios
  let keyToSortBy = "model"

  -- Ordenar la lista utilizando la función sortBy y la función de comparación
  let sortedList = sortBy (comparing (\d -> lookup keyToSortBy d >>= readInt)) originalList

  -- Mostrar la lista original y la lista ordenada
  putStrLn "Original List:"
  print originalList
  putStrLn "\nSorted List:"
  print sortedList

-- Función para convertir una cadena a un entero, devuelve Nothing si no es posible
readInt :: String -> Maybe Int
readInt s = case reads s of
  [(x, "")] -> Just x
  _ -> Nothing
