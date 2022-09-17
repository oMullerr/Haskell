{- Aluno: Matheus Leindorf Muller -}

import Text.Printf

{- 1) Em Haskell temos um conjunto de tipos especiais: Maybe, Nothing e Just seu trabalho será criar no repl.it um código, comentado, que explique estes tipos, sua funcionalidade e que contenha quatro exemplos do seu uso. Com uma restrição: você deve evitar qualquer explicação que inclua o uso de Monads. Lembre-se entre estes exemplos, um deve ser de sua autoria e todos os outros precisam ter suas fontes citadas -}

{-
R:

Usando a função 'Maybe', temos duas alternativas para usar, ou definimos o valor das nossas variáveis como 'Just' ou 'Maybe'. Entre os conjuntos especiais que existe no Haskell, o 'Nothing' tem a função de nos indicar se o valor inserido esta presente em nossas variáveis. Já o 'Just' tem a função contrária do Nothing, ela nos mostra se o valor está presente. 

Fonte da pesquisa: https://stackoverflow.com/questions/29456824/what-is-the-maybe-type-and-how-does-it-work
-}

{- A função abaixo mostra a quantidade de cavalos à vapor que o modelo do carro possui. -}
carro :: String -> Maybe Int
carro cav
  |cav == "Celta" = Just 78
  |cav == "Onix" = Just 106
  |cav == "Kicks" = Just 114
  |cav == "Corvette" = Just 680
  |cav == "Mustang" = Just 483
  |otherwise = Nothing

{- A função abaixo mostra a quantidade de bolas de ouro que um jogar tem. -}
jogador :: String -> Maybe Int
jogador boladeOuro
  |boladeOuro == "Neymar" = Just 0
  |boladeOuro == "Messi" = Just 7
  |boladeOuro == "Modric" = Just 1
  |boladeOuro == "Cristiano" = Just 2
  |boladeOuro == "Ronaldinho" = Just 1
  |otherwise = Nothing

{- A função mostra quantos anos tem cada cidade. -}
cidade :: String -> Maybe Int
cidade anos
  |anos == "Curitiba" = Just 327
  |anos == "Maringa" = Just 74
  |anos == "Foz do iguaçu" = Just 108
  |anos == "Ponta grossa" = Just 193
  |anos == "Cascavel" = Just 70
  |otherwise = Nothing

{- A função mostra o valor de uma cota de um determinado Fundo Imobiliário. -}
fundoImb :: String -> Maybe Double
fundoImb valor
  |valor == "MXRF11" = Just 10.18 
  |valor == "HGLG11" = Just 166.94
  |valor == "VILG11" = Just 107.30 
  |valor == "JSRE11" = Just 85.00
  |valor == "XPML11" = Just 105.76
  |otherwise = Nothing


main = do
  printf "\nFunc. 1A: entrada: %s; resultado: %s" ("Kicks"::String) (show (carro "Kicks"))

  printf "\nFunc. 1B: entrada: %s; resultado: %s" ("Messi"::String) (show (jogador "Messi"))

  printf "\nFunc. 1C: entrada: %s; resultado: %s anos" ("Curitiba"::String) (show (cidade "Curitiba"))

  printf "\nFunc. 1D: entrada: %s; resultado: R$ %s" ("MXRF11"::String) (show (fundoImb "MXRF11"))