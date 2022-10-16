;Aluno: Matheus Leindorf Muller

(println "=================================================================")
(println "Exercício 1: ")

; 1) Na  aula  disponível  em:  https://replit.com/@frankalcantara/ClojureAula2?v=1  foram destacadas diversas funções (expressões), como funções de primeira ordem, disponíveis em Clojure.  Sua  primeira  tarefa  será  descrever  cada  uma  destas  funções  e  apresentar dois exemplos  de  uso  de  cada  uma  delas.  Lembre-se  os  exemplos  precisam  ser utilizados  de forma que o resutado da função possa ser visto no terminal.

; --> Definições:

; 1.1 -> assoc - Tem relação com a função de map, retorna um map que ja tem o mapeamento de chave e valor.

; 1.2 -> dissoc - Também tem relação com a função de map, retorna um map que desassocia uma das chavesque foram passadas como parâmetro.

; 1.3 -> range - Retorna uma sequencia no valor dado como parametro e sempre é iniciando em 0.

; 1.4 -> map - Retorna uma sequência que consiste no resultado da aplicação de f ao conjunto dos primeiros itens de cada col.

; 1.5 -> inc - Sempre retorna um valor maior que o valor inserido inicialmente.

; 1.6 -> filter - Retorna uma sequência dos itens no parametro para realizar uma filtragem entre eles.

; 1.7 -> odd - Retorna true para valores que forem impares.

; 1.8 -> into - Retorna uma saida onde ocorreu o uso de todos os itens do parametro.

; 1.9 -> nth - Retorna o valor que corresponde ao indice pedido.

; 2.0 -> conj - Adiciona valores do segundo parametro ao primeiro parametro.

; 2.1 -> sort - Retorna uma saida ordenada, o retorno normalmente é feito em ordem crescente.

; 2.2 -> partition-by - Retorna uma sequência de partições.

; 2.3 -> empty - Retorna true se o conteudo da coleção é vazio.

; 2,4 -> count - Retorna o numero de itens da coleção.

; 2.5 -> char - Retorna o char equivalente.

; --> Exemplos:

(println (format "Função: assoc: Entrada: %s; Saída: %s"  "{:x 5 :y 10} :x 2" (str (assoc {:x 5 :y 10} :x 2))))
(println (format "Função: assoc: Entrada: %s; Saída: %s"  "{:x 2 :y 4} :z 6" (str (assoc {:x 2 :y 4} :z 6))))

(println (format "Função: dissoc: Entrada: %s; Saída: %s"  "{:x 5 :y 10} :y 10" (str (dissoc {:x 5 :y 10} :y 10))))
(println (format "Função: dissoc: Entrada: %s; Saída: %s"  "{:x 5 :y 10} :x 5" (str (dissoc {:x 5 :y 10} :x 5))))

(println (format "Função: range: Entrada: %s; Saída: %s"  "0 10" (str (range 0 10))))
(println (format "Função: range: Entrada: %s; Saída: %s"  "10" (str (range 10))))

(println (format "Função: map: Entrada: %s; Saída:"  " + [1 2 3] [4 5 6]") (map + [1 2 3] [4 5 6]))
(println (format "Função: map: Entrada: %s; Saída:"  " - [1 2 3] [4 5 6]") (map * [1 2 3] [4 5 6]))

(println (format "Função: inc: Entrada: %s; Saída: %s"  "100.0" (str (inc 100.0))))
(println (format "Função: inc: Entrada: %s; Saída: %s"  "0" (str (inc 0))))

(println (format "Função: inc: Entrada: %s; Saída: %s"  "10.0" (str (inc 10.0))))
(println (format "Função: inc: Entrada: %s; Saída: %s"  "22" (str (inc 22))))

(println (format "Função: filter: Entrada: %s; Saída:"  "even? (range 10))")(filter even? (range 20)))
(println (format "Função: filter: Entrada: %s; Saída:"  "odd? (range 10))")  (filter odd? (range 20)))

(println (format "Função: odd: Entrada: %s; Saída: %s"  "12" (str (odd? 12))))
(println (format "Função: odd: Entrada: %s; Saída: %s"  "13" (str (odd? 13))))

(println (format "Função: into: Entrada: %s; Saída: %s"  "() '(1 2 3 4 5)" (str (into () '(1 2 3 4 5)))))
(println (format "Função: into: Entrada: %s; Saída: %s"  "[1 2 3] '(4 5)" (str (into [1 2 3] '(4 5)))))

(def carros ["Onix" "Fiesta" "Polo" "Jeta"])
(println (format "Função: nth: Entrada: %s; Saída: %s"  "carros 1" (nth carros 0)))
(println (format "Função: nth: Entrada: %s; Saída: %s"  "carros 3" (nth carros 3)))

(println (format "Função: conj: Entrada: %s; Saída: %s"  "[1 2 3] 4 5" (str (conj [1 2 3] 4 5))))
(println (format "Função: conj: Entrada: %s; Saída: %s"  "'(1 2 3) 4 5" (str (conj '(1 2 3) 4 5))))

(println (format "Função: sort: Entrada: %s; Saída: %s"  "[0 1 33 5 11 3]" (str (sort [0 1 33 5 11 3]))))
(println (format "Função: sort: Entrada: %s; Saída: %s"  " > [0 1 33 5 11 3]" (str (sort > [0 1 33 5 11 3]))))

(println (format "Função: partition-by: Entrada: %s; Saída: "  "odd? [1 2 2 2 2 3 3 3 3]") (partition-by odd? [1 2 2 2 2 3 3 3 3]))
(println (format "Função: partition-by: Entrada: %s; Saída: "  "even? [1 1 1 1 1 2 2 2 2 2 2 3 3]") (partition-by even? [1 1 1 1 1 2 2 2 2 2 2 3 3]))

(println (format "Função: empty: Entrada: %s; Saída: %s"  "empty? ()" (str (empty? ()))))
(println (format "Função: empty: Entrada: %s; Saída: %s"  "empty? '(1)" (str (empty? '(1)))))

(println (format "Função: count: Entrada: %s; Saída: %s"  "[]" (str (count []))))
(println (format "Função: count: Entrada: %s; Saída: %s"  "[0 1 12 20 33 40 500 60]" (str (count [0 1 12 20 33 40 500 60]))))

(println (format "Função: char: Entrada: %s; Saída: "  "10") (char 97))
(println (format "Função: char: Entrada: %s; Saída: "  "20") (char 104))

(println "=================================================================")
(println "Exercício 2 :")

; 2) Utilizando a linguagem Clojure, crie uma função chamada ehPrimo que receba um inteiro e devolva True caso este inteiro seja verdadeiro e False caso contrário.

(defn ehPrimo [x] (
              loop [c 1 l []]
                    (if (= c (+ x 1)) (if (= (count l) 2) true false)
                     (recur (inc c) (if (zero? (mod x c)) (conj l c) l)))  
))

(println (format "Função -> ehPrimo: Entrada: %s; Saída: %s"  "47" (str (ehPrimo 47))))
(println (format "Função -> ehPrimo: Entrada: %s; Saída: %s"  "46" (str (ehPrimo 46))))

(println "=================================================================")
(println "Exercício 3: ")

; 3) Utilizando  a  linguagem  Clojure,  crie  uma  função  chamada  fatoresPrimos  que  receba um inteiro e devolva uma lista dos seus fatores primos. Decomposição em fatores primos é uma tarefa fundamental da aritmética. 

(defn fatoresPrimos [x] (
                         loop [c 2 xnum x l []]
                         (if (= xnum 1) l 
                           (recur (if (and (ehPrimo c) (zero? (mod xnum c))) 2 (inc c)) (if (and (ehPrimo c) (zero? (mod xnum c))) (/ xnum c) xnum) (if (and (ehPrimo c) (zero? (mod xnum c))) (conj l c) l))
)))

(println (format "Função -> fatoresPrimos: Entrada: %s; Saída:"  "50") (fatoresPrimos 50))
(println (format "Função -> fatoresPrimos: Entrada: %s; Saída:"  "10") (fatoresPrimos 10))

(println "=================================================================")
(println "Exercício 4:")

; 4) Utilizando  a  linguagem  Clojure,  crie  uma  função  chamada  todosPrimos  que  receba  dois valores inteiros e devolve todos os números primos que existam entre estes dois valores. 

(defn todosPrimos [x1 x2] (
                           loop [l (range x1 (+ x2 1)) l2 []]
                           (if (empty? (rest l)) l2 (recur (rest l) (if (ehPrimo (nth l 0)) (conj l2 (nth l 0)) l2)))
))

(println (format "Função -> todosPrimos: Entrada: %s; Saída:"  "1 50") (todosPrimos 1 50))

(println "=================================================================")