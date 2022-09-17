{- Aluno: Matheus Leindorf Muller -}

import Text.Printf

{- 3) Dada uma coleção de números, implemente as funções manter e descartar que recebem a oleção e um predicado. Sempre que o predicado for verdadeiro quando aplicado a um item da coleção original este item deve ser mantido ou descartado. Lembre-se dos valores imutáveis. Você não pode usar as funções filter e reject já disponíveis no Prelude ou em qualquer outra biblioteca. -}

manter :: (m -> Bool) -> [m] -> [m]
manter _ [] = []
manter funcao (a:b) 
  | x = a : manter funcao b
  | otherwise = manter funcao b
  where x = funcao a

descartar :: (m -> Bool) -> [m] -> [m]
descartar _ [] = []
descartar funcao (a:b) 
  | x = descartar funcao b
  | otherwise = a : descartar funcao b
  where x = funcao a

main = do
  printf "\nFunc. 3A Manter: entrada: %s %s; resultado: %s" "\\x -> (x `mod` 10) == 0" (show [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40]) (show (manter (\x -> (x `mod` 10) == 0)[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]))

  printf "\nFunc. 3B Descartar: entrada: %s %s; resultado: %s" "\\x -> (x `mod` 10) == 0" (show [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]) (show (descartar (\x -> (x `mod` 10) == 0)[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]))
