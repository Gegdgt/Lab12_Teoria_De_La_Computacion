-- Definición de la función eliminarElementos que toma dos listas y devuelve una lista resultante
eliminarElementos :: Eq a => [a] -> [a] -> [a]
eliminarElementos lista elementosABorrar = filter (\x -> not (x `elem` elementosABorrar)) lista

main :: IO ()
main = do
  -- Definición de la lista inicial
  let listaInicial = ["rojo", "verde", "azul", "amarillo", "gris", "blanco", "negro"]

  -- Definición de la lista de elementos a borrar
  let elementosABorrar = ["amarillo"]

  -- Llamada a la función eliminarElementos con las listas definidas anteriormente
  let listaResultante = eliminarElementos listaInicial elementosABorrar

  -- Impresión del resultado
  putStrLn "Lista Original"
  print listaInicial
  putStrLn "Lista resultante: "
  print listaResultante
