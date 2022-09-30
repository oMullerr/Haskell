import Text.Printf

{-Aluno: Matheus Leindorf Muller-}

{-
1) Utilizando a linguagem Haskell e o seu próprio tipo de dados, crie um programa capaz de classificar triângulos a partir do comprimento dos seus lados sabendo que o comprimento de cada um dos lados deve ser maior que zero e que:

a. triângulos equiláteros têm todos os lados do mesmo tamanho;
b. triangulos esosceles têm, no mínimo, dois lados do mesmo tamanho;
c. triangulos escalenos têm tem todos os lados de tamanho diferentes;
d. triangulos degenerados têm um lado igual a soma dos outros dois e área zero.
-}

data Triangulo = Triangulo Int Int Int deriving (Show)

tipo :: Triangulo -> String
tipo (Triangulo x y z)
  | x == y && y == z = "Equilátero"
  | x == y || y == z || z == x = "Isóceles"
  | (x == y + z || y == x + z || z == x + y) = "Degenerado"
  | otherwise = "Escaleno"

slice xs i k = map (xs !!) [i .. k -1]

main = do
  printf "Func 1. entrada: %s. saida: %s\n" (show (Triangulo 3 4 3)) (tipo (Triangulo 3 4 3))
  printf "Func 1. entrada: %s. saida: %s\n" (show (Triangulo 1 2 3)) (tipo (Triangulo 1 2 3))
  printf "Func 1. entrada: %s. saida: %s\n" (show (Triangulo 5 5 5)) (tipo (Triangulo 5 5 5))
  printf "Func 1. entrada: %s. saida: %s\n" (show (Triangulo 3 4 5)) (tipo (Triangulo 3 4 5))
