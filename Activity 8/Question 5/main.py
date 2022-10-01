# Aluno: Matheus Leindorf Muller

#  Você tem uma lista de tuplas onde o primeiro campo é o nome de um aluno e o segundo sua nota. Crie uma função, usando o Python, C ou C++ 20 e os conceitos de programação funcional para  criar uma  função que  ordene  listas  de  tuplas,  como  a  tupla  descrita neste enunciado.  Sem,  é  claro,  usar  qualquer  função,  objeto,  ou  biblioteca  disponíveis  na linguagem que você escolher. 

def _ord(lista, atual):
  if len(lista)-1 == atual:
    return lista
  else:
    valor1 = lista[atual][1]
    valor2 = lista[atual+1][1]
    if valor2 > valor1:
      tuplaAtual = lista[atual]
      lista[atual] = lista[atual+1]
      lista[atual+1] = tuplaAtual
      if atual != 0:    
        return _ord(lista,atual-1)
    return _ord(lista,atual+1)


def ordenar(lista):
  return(_ord(lista,0))


lista = [("Carlos",6.0),("Gabriel",6.0),("Alex",7.0),("Caio",7.0),("Matheus",9.0),("Manoel",10.0)]


print(ordenar(lista))