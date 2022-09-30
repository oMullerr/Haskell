import Text.Printf

{- Aluno: Matheus Leindor Muller-}

{-
Usando  Haskell  escreva  uma  função  chamada  romanos  que  receba  um  inteiro  menor  ou igual a 3000 e devolva um string deste inteiro representado com algarismos romanos.
-}

numeros :: [Int]
numeros = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]

numerais :: [String]
numerais = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]

numerosPNumeral :: Int -> Int -> String
numerosPNumeral _ 0 = ""
numerosPNumeral i n
  | n >= (numeros !! i) = (numerais !! i) ++ (numerosPNumeral i (n - (numeros !! i)))
  | otherwise = numerosPNumeral (i + 1) n

romanos :: Int -> String
romanos n
  | n <= 3000 = numerosPNumeral 0 n
  | otherwise = ""

main = do
  printf "Func 1. Entrada: %d. Saida: %s\n" (12 :: Int) (romanos 12)
  printf "Func 2. Entrada: %d. Saida: %s\n" (500 :: Int) (romanos 500)
  printf "Func 3. Entrada: %d. Saida: %s\n" (4321 :: Int) (romanos 4321)
