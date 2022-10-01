# Aluno: Matheus Leindorf Muller

#2. Usando  os  conceitos  de  programação  funcional  e  considerando  o  universo  dos  números inteiros, implemente a função abs em Python, C ou C++ 20 que devolva o valor absoluto de um número dado. Sem, é claro, usar qualquer função, objeto, ou biblioteca disponíveis na linguagem que você escolher. 


def absoluto(valor):
  if valor < 0:
    return absoluto(valor * (-1))
  else:
    return valor

print(absoluto(-23))