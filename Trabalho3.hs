-- Aluno: Matheus Leindorf Muller
import Text.Printf

{- 1) Escreva  uma  função  para  o  cálculo  dos  números  da  sequência  de  Fibonacci,  utilizando Haskell. -}

fibonacci :: Int -> [Int]
fibonacci 1 = [0]
fibonacci 2 = [0,1]
fibonacci x = fibonacci (x-1) ++ [last (fibonacci (x -1)) +  last (fibonacci (x -2))]

{- 2) Escreva uma  função  para  o  cálculo  do  MDC  entre  dois  números  inteiros  positivos,  usando  o algoritmo de Euclides conforme apresentado aqui, utilizando Haskell. -}

mdc :: Int -> Int -> Int
mdc a b
  | b == 0 = abs a
  | otherwise = mdc b (a `mod` b)

{- 3) Escreva uma função recursiva que dado um número inteiro n, devolva a soma dos dígitos deste  número.  Exemplo:  dado  1234  a  função  deverá  devolver  10.  Utilizando  Haskell  e recursividade. -}

somaDig :: Int -> Int
somaDig 0 = 0
somaDig x = x `mod` 10 + somaDig (div x 10)


{- 4) Escreva  uma  função  que  devolva  a  soma  de  todos  os  números  menores  que  10000  que sejam múltiplos de 3 ou 5. -}

sumall :: Int -> Int
sumall s
  |s==0=0
  |s==10000 = sumall 9999
  |s `mod` 3 == 0 = s + sumall (s-1)
  |s `mod` 5 == 0 = s + sumall (s-1)
  |otherwise = sumall (s-1)

{- 5) Escreva  uma  função que,  recebendo  uma  lista  de  inteiros,  apresente  a  diferença  entre a soma dos quadrados e o quadrado da soma destes inteiros, usando recursividade. -}

{- 6) O Crivo de Eratóstenes não é o melhor algoritmo para encontrar números primos. Crie uma função que implemente o Crivo de Euler (Euler’s Sieve) para encontrar todos os números primos menores que um determinado inteiro dado. -}

questao6 :: Int -> [Int] -> [Int]
questao6 valor [] = []
questao6 valor lista = if (head lista) `mod` valor == 0 then questao6 valor (tail lista) else [head lista] ++ questao6 valor (tail lista) 

crivo :: [Int] -> [Int]
crivo [] = []
crivo lista = [head lista] ++ crivo(questao6 (head lista) (tail lista))

{- 7) Nem  só  de  Fibonacci  vivem  os  exemplos  de  recursão.  Escreva  uma  função  que  devolva todos os números de uma sequência de Lucas (2, 1, 3, 4, 7, 11, 18, 29, 47, 76, 123) menores que um inteiro dado. -}

lucas :: Int -> Int -> Int -> [Int]
lucas 0 p q = [2]
lucas 1 p q = lucas 0 p q ++ [p] 
lucas x p q = (lucas (x-1) p q) ++ [p * (last (lucas (x-1) p q)) - q * (last (lucas (x-2) p q))]

{- 8) Escreva uma função, chamada aoContrario em Haskel para reverter uma lista. Dado [1,2,3] devolva [3,2,1]. -}

aoContrario :: [Int] -> [Int]
aoContrario [] = []
aoContrario a = aoContrario (tail a) ++ [head a]

{- 9) Escreva uma função chamada somaRecursiva que recebe dois valores inteiros e devolve o produto destes valores sem usar o operador de multiplicação. -}

somaRecursiva :: Int -> Int -> Int
somaRecursiva s 0 = 0
somaRecursiva s r = s + somaRecursiva s (r-1)

{- 10) Escreva uma função chamada comprimento que receba uma lista de  inteiros e devolva o comprimento desta lista. Observe que você não pode usar nenhuma função que já calcule o comprimento de uma lista. -}

comprimento :: [Int] -> Int
comprimento [] = 0
comprimento c = comprimento (tail c) + 1


main = do

  printf "\nFunc. 1: entrada: %d; resultado: %s\n" (13 :: Int) (show (fibonacci 7))

  printf "\nFunc. 2: entrada: %d %d; resultado: %d" (30::Int) (15::Int) (mdc 30 15)

  printf "\nFunc. 3: entrada: %d; resultado: %d" (1111::Int) (somaDig 1111)

  printf "\nFunc. 4: entrada: %d; resultado: %d" (10000::Int) (sumall 10000)

  printf "\nFuncao 6: entrada: %s; resultado: %s \n" ("[2..30]" :: String) (show(crivo [2..30]))

  printf "\nFunc. 7: entrada: %d ; resultado: %s\n" (10 :: Int) (show (lucas 10 1 (-1)))

  printf "\nFunc. 8: entrada:%s; resultado:%s" (show [1,2,3]) (show (aoContrario [1,2,3]))

  printf "\nFunc. 9: entrada:%d %d; resultado:%d" (5::Int) (5::Int) (somaRecursiva 5 5)

  printf "\nFunc. 10: entrada:%s; resultado: %d" (show [1, 3, 5, 7]) (comprimento [1, 3, 5, 7])