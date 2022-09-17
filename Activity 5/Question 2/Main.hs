{- Aluno: Matheus Leindorf Muller -}

import Text.Printf

{- 2) Escreva uma função chamada idade que usando pelo menos um tipo definido por você que receba o tempo de vida em segundos de uma determinada pessoa, o nome de um planet e devolva a idade desta pessoa em anos caso ela tivesse vivido naquele planeta. Sabendo que o período orbital dos planetas é dado por:

a. Mercúrio: 0.2408467 anos terrestres;
b. Vênus: 0.61519726 anos terrestres;
c. Terra: 1.0 anos terrestre equivalente a 365.25 dias, ou 31.557.600 segundos;
d. Marte: 1.8808158 anos terrestres;
e. Jupiter: 11.862615 anos terrestres;
f. Saturno: 29.447498 anos terrestres;
g. Urano: 84.016846 anos terrestres;
h. Netuno: 164.79132 anos terrestres;
-}

data Pessoa = Pessoa {
  nomePessoa :: String,
  idadePessoa :: Double
} deriving(Show)

idade :: Pessoa -> String -> Maybe Double
idade i planet
  |planet == "Mercúrio" = Just (anos / 0.2408467)
  |planet == "Vênus" = Just (anos / 0.61519726)
  |planet == "Terra" = Just (anos / 1.0)
  |planet == "Marte" = Just (anos / 1.8808158)
  |planet == "Jupiter" = Just (anos / 11.862615)
  |planet == "Saturno" = Just (anos / 29.447498)
  |planet == "Urano" = Just (anos / 84.016846)
  |planet == "Netuno" = Just (anos / 164.79132)
  |otherwise = Nothing
  where anos = idadePessoa i / 54321001


main = do
  printf "\nFunc. 2: entrada: %s %s; resultado: %s" (show (Pessoa "Creber" (54321001*15)))("Saturno"::String)  (show (idade (Pessoa "Creber" (54321001*15)) "Saturno"))
