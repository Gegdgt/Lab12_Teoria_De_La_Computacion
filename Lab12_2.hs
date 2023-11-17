-- Definimos la función potenciaN que toma un entero n y una lista de enteros como argumentos.
potenciaN :: Int -> [Int] -> [Int]
-- Utilizamos la función map para aplicar la función lambda a cada elemento de la lista.
-- La función lambda (\x -> x^n) eleva cada elemento x a la potencia n.
potenciaN n lista = map (\x -> x ^ n) lista

main :: IO ()
main = do
  -- Definimos una lista
  let listaInicial = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  -- Calculamos la potencia l que se quiera utilizar
  let resultado = potenciaN 3 listaInicial
  -- Imprimimos el resultado en la consola.
  print resultado
