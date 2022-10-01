# Aluno: Matheus Leindorf Muller

# 4. Usando os conceitos de programação funcional e a linguagem Python, C ou C++ 20 escreva uma função que devolva a lista de todos os números de Fibonacci até um valor dado considerando que a sequência de Fibonacci começa em zero. Sem, é claro, usar qualquer função, objeto, ou biblioteca disponíveis na linguagem que você escolher.

def fibonacciAtual(numero):
  if numero == 0 or numero == 1:
    return 1
  return fibonacciAtual(numero-2) + fibonacciAtual(numero-1)

def fibonacci(numero):
  if numero == 1:
    return [1,1]
  return fibonacci(numero - 1) + [fibonacciAtual(numero)]


print(fibonacci(10))