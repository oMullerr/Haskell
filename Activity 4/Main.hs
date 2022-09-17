import Text.Printf

{- 1) Escreva  uma  função  chamada  fatorialn  que  usando  o operador  range  e  a  função  foldr devolva o fatorial de n. -}

fatorialn :: Int -> Int
fatorialn n = foldr (*) 1 [1..n]

{- 2) Usando a função map escreva uma função, chamada quadradoReal que recebe uma lista de números reais, positivos e negativos e devolva uma lista com o quadrado de cada um dos reais listados. -}

quadradoReal :: [Double] -> [Double]
quadradoReal l = map (^2) l

{- 3) Usando a função map escreva uma função, comprimentoPalavras que recebe uma lista de palavras e devolve uma lista com o comprimento de cada uma destas palavras. -}

comprimentoPalavras :: [String] -> [Int]
comprimentoPalavras p = map (length) p

{- 4) Usando a função filter escreva uma função, chamada maiorMultiploDe29 devolva o maior número entre 0 e 100000 que seja divisivel por 29. -}

maiorMultiploDe29 :: Int
maiorMultiploDe29 = last(filter (\x -> ((x `mod` 29)==0))[0..100000])

{- 5) Usando  a  função  filter  escreva  uma  função,  chamada  maiorMultiploDe que  recebe  um inteiro e devolva o maior número entre 0 e 100000 que seja divisivel por este inteiro. -}

maiorMultiploDe :: Int -> Int
maiorMultiploDe m = last(filter (\x -> ((x `mod` m)==0))[0..100000])

{- 6) Usando Haskell e a função foldr defina uma função, chamada somaQuadrados que devolva a soma dos quadrados dos itens de uma lista de números naturais de comprimento n. De tal forma que: 𝑠𝑜𝑚𝑎𝑄𝑢𝑎𝑑𝑟𝑎𝑑𝑜𝑠=12 +22 +32 +42...+𝑛2. -}

somaQuadrados :: Int -> Int
somaQuadrados n = foldr (\x y -> x * x + y) 0 [1..n]

{- 7) Usando Haskell e a função foldl defina uma função, chamada comprimento, que devolva o comprimento (cardinalidade) de uma lista dada. -}

comprimento :: [b] -> Int
comprimento c = foldl (\x y -> x + 1) 0 c

{- 8) Esta é uma tarefa de pesquisa: você deve encontrar e executar exemplos em Haskell do uso das seguintes funções disponíveis no Prelude: flip, ord, max, min, curry, uncurry. Para cada uma destas funções você deverá encontrar, executar e testar no mínimo dois exemplos. -}

flipA :: Double -> Double -> Double 
flipA x y = flip (/) x y 

flipB :: Double -> Double -> Double 
flipB x y = flip (-) x y 

xMax :: Int -> Int -> Int
xMax x y = max x y

xMin :: Int -> Int -> Int
xMin x y = min x y

curryA :: Int ->  Int -> Int
curryA  = curry (\ (x,y) -> 2 * x + y)

curryB :: Int ->  Int -> Int
curryB = curry (\ (x,y) -> (x + y) ^ 2)

uncurryA :: (Int,  Int) -> Int
uncurryA = uncurry (*)

uncurryB :: (Double, Double) -> Double
uncurryB = uncurry (/)

main = do
  printf "Func. 1: entrada: %d; resultado: %d" (7::Int) (fatorialn 7)

  printf "\nFunc. 2: entrada: %s; resultado: %s" (show [2, 4, 6, 8, -2]) (show (quadradoReal [2, 4, 6, 8, -2]))

  printf "\nFunc. 3: entrada: %s; resultado: %s" (show ["frank", "alcantara", "haskell"]) (show (comprimentoPalavras ["frank", "alcantara", "haskell"]))

  printf "\nFunc. 4: entrada; resultado: %d" (maiorMultiploDe29)

  printf "\nFunc. 5: entrada: %d; resultado: %d" (5::Int) (maiorMultiploDe 5)

  printf "\nFunc. 6: entrada: %d; resultado: %d" (3::Int) (somaQuadrados 3)

  printf "\nFunc. 7: entrada: %s; resultado: %d" (show [1,2,3,4,5]) (comprimento [1,2,3,4,5])

  printf "\nFunc. 8 flip-A: entrada: %d %d; resultado: %s" (1::Int) (2::Int) (show (flipA 3 1))
  printf "\nFunc. 8 flip-B: entrada: %d %d; resultado: %s" (1::Int) (2::Int) (show (flipB 1 2))
  printf "\nFunc. 8 max-A: entrada: %d %d; resultado: %d" (2::Int) (6::Int) (xMax 2 6)
  printf "\nFunc. 8 max-B: entrada: %d %d; resultado: %d" (5::Int) (3::Int) (xMax 5 3)
  printf "\nFunc. 8 min-A: entrada: %d %d; resultado: %d" (1::Int) (2::Int) (xMin 1 2)
  printf "\nFunc. 8 min-B: entrada: %d %d; resultado: %d" (5::Int) (3::Int) (xMin 5 3)
  printf "\nFunc. 8 curry-A: entrada: %d %d; resultado: %d" (10::Int) (3::Int) (curryA 10 3)
  printf "\nFunc. 8 curry-B: entrada: %d %d; resultado: %d" (2::Int) (3::Int) (curryB 2 3)  
  printf "\nFunc. 8 uncurry-A: entrada: %s; resultado: %d" (show (5,5)) (uncurryA (5,5))
  printf "\nFunc. 8 uncurry-B: entrada: %s; resultado: %s" (show (10,5)) (show (uncurryB (10, 5)))