{- Aluno: Matheus Leindorf Muller -}
import Text.Printf

{- 1) Escreva uma função chamada soma1 que recebe um inteiro como argumento e retorna um inteiro uma unidade maior que a entrada.-}
soma1 :: Int -> Int
soma1 a = a+1

{- 2) Escreva  uma  função  chamada  sempre  que,  não  importando  o  valor  de  entrada,  devolva 
sempre zero. Observe que neste caso a entrada pode ser de qualquer tipo. -}

sempre :: Int -> Int
sempre z = z - z

{- 3) Escreva  uma  função  chamada  treco  que  receba  três  valores  em  ponto  flutuantes  com 
precisão dupla e retorne o resultado da soma dos dois primeiros multiplicado pelo terceiro.-}

treco :: Double -> Double -> Double -> Double
treco t a b = (t + a) * b

{- 4) Escreva uma função chamada resto que devolva o resto de uma divisão entre dois números 
inteiros. -}

resto :: Int -> Int -> Int
resto a b = a `mod` b

{- 5) Escreva uma função chamada precoMaior que devolva o maior valor entre quatro valores 
monetários.-}

precoMaior :: Double -> Double -> Double -> Double -> Double
precoMaior a b c d = max (max a b ) (max c d)

{- 6) Escreva uma função chamada impar que devolva True, sempre que o resultado do produto 
de dois números inteiros for ímpar.-}

impar :: Int -> Int -> Bool
impar a b = if  a * b `mod` 2 == 0 then False else True

{- 7) Em Haskell existe o tipo par cuja assinatura tem a seguinte forma: 𝑝𝑎𝑟∷(𝐼𝑛𝑡,𝐼𝑛𝑡). Escreva 
uma função em Haskell que devolva a soma dos componentes de um par de inteiros. -}

assinatura :: (Int,Int)->Int
assinatura par = fst par + snd par 

{- 8) Escreva uma função em Haskell que receba números reais (double) e devolva o resultado 
da equação 𝑥2 +𝑦2 +𝑧.-}

equacao :: Double -> Double -> Double -> Double
equacao x y z = x^2 + y/2 + z 

{- 9) Escreva uma função em Haskell chamada diagnostico que receba o peso do aluno e imprima 
um  diagnóstico  de  obesidade -}

diagnostico :: Double -> String
diagnostico peso 
  | imc < 17 = "Muito abaixo do peso"
  | imc <= 18.49 = "Abaixo do peso"
  | imc <= 24.99 = "Peso normal"
  | imc <= 29.99 = "SobrePeso"
  | imc <= 34.99 = "Obesidade leve"
  | imc <= 39.99 = "Obesidade severa"
  | otherwise = "Obesidade morbida"
  where 
    imc = peso / (1.72 ^ 2)

{- 10) Escreva uma função em Haskell chamada bissexto que receba um ano e devolva True se o 
ano for bisexto-}

bissexto :: Int -> Bool
bissexto ano = if ((ano `mod` 4) == 0 && ((ano `mod` 100) /= 0) || ((ano `mod` 100) == 0 && (ano `mod` 400) == 0)) then True else False



main = do

  printf "Func. 1: entrada:%d; resultado: %d" (10::Int) (soma1 10)

  printf "\nFunc. 2: entrada:%d; resultado: %d" (5::Int) (sempre 5)

  printf "\nFunc. 3: entrada:%f %f %f; resultado: %f" (3::Double) (6::Double) (9::Double) (treco 3.0 6.0 9.0)

  printf "\nFunc. 4: entrada:%d %d; resultado: %d" (3::Int) (2::Int) (resto 3 2)

  printf "\nFunc. 5: entrada:%f %f %f %f; resultado: %f" (2::Double) (4::Double) (6::Double) (8::Double)(precoMaior 2.0 4.0 6.0 8.0)

  printf "\nFunc. 6: entrada:%d %d; resultado: %s" (3::Int) (3::Int) (show (impar 3 3))

  printf "\nFunc. 7: entrada:(%d,%d); resultado: %d" (1::Int) (2::Int) (assinatura (1,2))

  printf "\nFunc. 8: entrada:%f %f %f; resultado: %f" (6::Double) (3::Double) (9::Double) (equacao 6 3 9)

  printf "\nFunc. 9: entrada:%f; resultado: %s" (65::Double) (diagnostico 72)

  printf "\nFunc. 10: entrada:%d; resultado: %s" (2000::Int) (show (bissexto 2000))