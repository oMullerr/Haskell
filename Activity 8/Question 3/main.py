# Aluno: Matheus Leindorf Muller

# Usando  os  conceitos  de  programação  funcional  e  considerando  o  universo  dos  números  reais, implemente a função media em Python, C ou C++ 20 que devolva a média aritmética entre  dois  números  dados.  Sem, é  claro,  usar  qualquer  função,  objeto,  ou  biblioteca disponíveis na linguagem que você escolher.


def media(x,y):
  if x == 0:
    return y/2
  elif y == 0:
    return x/2
  
  return (media(x,0) + media(0,y))

print(media(10,100))

