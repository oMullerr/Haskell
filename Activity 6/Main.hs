{- Aluno: Matheus Leindorf Muller -}

import Text.Printf
import Data.Char

{- 1) Usando List Comprehension escreva uma função, chamada divisoresden, que devolva uma 
lista dos divisores de um número dado. -}

divisoresdeN :: Int -> [Int]
divisoresdeN n = [a | a <- [1..n], (n `mod` a) == 0]

{- 2) Usando  List Comprehension  escreva  uma  função,  chamada  contaCaractere,  que  conte  a ocorrência de um caractere específico, em uma string dada. -}

contaCaractere :: String -> Char -> Int
contaCaractere str c = length [a | a <- str, (toLower a) == (toLower c)] 

{- 3) Usando List Comprehension escreva uma função, chamada dobroNaoNegativo, que devolve 
o dobro dos valores dos elementos não negativos da lista de inteiros dada. -}

dobroNaoNegativo :: [Int] -> [Int]
dobroNaoNegativo lista = [x^2 | x <- lista, x>0]

{- 4) Usando List Comprehension escreva uma função, chamada pitagoras, que devolva uma lista de triplas, não repetidas, contendo os lados dos triângulos retângulos possíveis de serem construídos por inteiros entre 1 e um número inteiro dado. -}

pitagoras :: Int -> [(Int, Int, Int)]
pitagoras p = [(a,b,c) | a <- [1..p], b <-[1..p], c <- [1..p], ((a^2) + (b^2)) == (c^2), c > a, c > b, b > a]

{- 5) Números  perfeitos  são  aqueles  cuja  soma  dos  seus  divisores  é  igual  ao  próprio  número. Usando List Comprehension escreva uma função, chamada numerosPerfeitos, que devolva uma lista contendo todos os números perfeitos menores que um número dado. Lembre-se que você já tem uma função que devolve uma lista dos divisores de um número dado. -}
numerosPerfeitos :: Int -> [Int]
numerosPerfeitos x = [y | y <- [1..x], sum(init(divisoresdeN y)) == y]

{- 6) Usando List Comprehension escreva uma função, chamada produtoEscalar, que devolva o 
produto escalar entre duas listas de inteiros. Lembre-se, existem as funções fst, snd e zip no prelude que podem ser úteis. -}

produtoEscalar :: [Int] -> [Int] -> Int
produtoEscalar n1 n2 = sum [a * b | (a, b) <- zip n1 n2]

{- 7) Usando  List Comprehension  escreva  uma  função,  chamada  primeirosPrimos,  que  devolva uma lista contendo os n primeiros números primos a partir do número 2. -}

primeirosPrimos :: Int -> [Int]
primeirosPrimos r = takeWhile (\x -> length [n | n <- [2..(x-1)], length((divisoresdeN n)) == 2] < r) [n | n <- [2..], length((divisoresdeN n)) == 2]

{- 8) Usando  List Comprehension  escreva  uma  função,  chamada  paresOrdenados,  que  devolva uma  lista  de  par  ordenados  contendo  uma  potência  de  2  e  uma  potência  de  3  até  um determinado número dado. Observe que estes números podem ser bem grandes. -}
paresOrdenados :: Int -> [(Double, Double)]
paresOrdenados b = [(2^a, 3^a) | a <- [0..b]]


main = do
  printf "\nFuncao 1: entrada: %d; resultado: %s \n" (20 :: Int) (show(divisoresdeN 20))
  printf "\nFuncao 2: entrada: %s, %s; resultado: %s \n" ("haskell" :: String) ("h" :: String) (show(contaCaractere "haskell" 'h'))
  printf "\nFuncao 3: entrada: %s; resultado: %s \n" (show [-10..20]) (show(dobroNaoNegativo [-10..20]))
  printf "\nFuncao 4: entrada: %d; resultado: %s \n" (20 :: Int) (show(pitagoras 20))
  printf "\nFuncao 5: entrada: %d; resultado: %s \n" (300 :: Int) (show(numerosPerfeitos 300))
  printf "\nFuncao 6: entrada: %s, %s; resultado: %s \n" (show [1..10]) (show [1..10]) (show(produtoEscalar [1..10] [1..10]))
  printf "\nFuncao 7: entrada: %d; resultado: %s \n" (40 :: Int) (show(primeirosPrimos 40))
  printf "\nFuncao 8: entrada: %d; resultado: %s \n" (25::Int) (show(paresOrdenados 25))
