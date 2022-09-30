import Data.Char
import Text.Printf

{- Aluno: Matheus Leindorf Muller -}

{-2. Usando Haskell, crie uma função chamada fatias, com a assinatura dada por fatias :: Int -> String -> [[Int]] que receba um string e um inteiro e devolva uma lista de listas contendo em cada  item  uma  lista  de  inteiros.  Esta  função  receberá  strings  contendo  digitos  como,  por exemplo:  "345234678"  e  devolverá  listas  parecidas  com [[3,4,5],[4,5,2],[5,2,3],[2,3,4],[3,4,6],[4,6,7],[6,7,8]] No caso do exemplo, o inteiro que fatias recebeu foi 3. Observe que você poderá criar, quantas funções de apoio acredite que sejam necessárias  para  criar  as  funcionalidades  de  fatias  inclusive,  se  achar  interessante,  pode usar as funções mapMaybe e digitToInt. -}

slice :: [x] -> Int -> Int -> [x]
slice a b c = map (a !!) [b .. c -1]

aLista :: Int -> Int -> String -> [Int]
aLista t f str = map digitToInt (slice str f (f + t))

listaLoop :: Int -> Int -> String -> [[Int]]
listaLoop t f str
  | f + (t - 1) < length str = [aLista t f str] ++ listaLoop t (f + 1) str
  | otherwise = []

fatias :: Int -> String -> [[Int]]
fatias t str = listaLoop t 0 str

main = do
  printf "Func 1. Entrada %s. Saida: %s\n" ("3 345234678" :: String) (show (fatias 3 "345234678"))
  printf "Func 2. Entrada %s. Saida: %s\n" ("2 345234678" :: String) (show (fatias 2 "345234678"))
