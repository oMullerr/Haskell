import Text.Printf

{- Aluno: Matheus Leindorf Muller-}

{-
4. Usando linguagem  Haskell, escreva uma função que recebe uma lista de listas de inteiros 
com  até  5  digitos  em  cada  lista  e  devolva  apenas  as  listas  que  contenham  palíndromes primos.  Por  exemplo  na lista  de  listas  [[1,1,1],  [1,2,2],  [3,1,3],  [3,1,5]]  apenas  o  elemento [3,1,3] é um palíndrome  primo. Uma ferramenta importante para criar suas listas de teste pode ser encontrada em: Prime Number Calculator (calculatorsoup.com).
-}

palindro :: Int -> [Int] -> Bool
palindro i x
  | i >= ((length x) -1) - i = True
  | x!!i /= x!!(((length x) -1) - i) = False
  | otherwise = palindro (i+1) x

xPalin :: [Int] -> Bool
xPalin x = palindro 0 x

divisoresDeN :: Int -> [Int]
divisoresDeN n = [y | y <- [1..n], (n `mod` y) == 0]

xPrimo :: Int -> Bool
xPrimo y = (length (divisoresDeN y)) == 2

listaInt :: [Int] -> Int -> Int
listaInt [] acc = acc
listaInt (y:x) acc = listaInt x (acc*10+y)

palindromoPrimo :: [[Int]] -> [[Int]]
palindromoPrimo x = filter (\y -> (xPrimo (listaInt y 0)) && (xPalin y) ) x

main = do
  printf "Func 1. Entrada %s. Saida:%s\n" (show [[1,1,1],  [1,2,2],  [3,1,3],  [3,1,5]]) (show (palindromoPrimo [[1,1,1],  [1,2,2],  [3,1,3],  [3,1,5]]))
