;; Aluno: Matheus Leindorf Muller 

;; 1) Utilizando  a  linguagem  Clojure,  crie  uma  função  chamada  ultimo  que  receba  uma lista  e devolva o último elemento desta lista sem usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.

(defn ultimo [l] (reduce (fn [x y] y) l))


(println (format "Função: 1: Entrada: %s; Saída: %s"  "[1 2 3 4  12 1234567 999 13 -100 'haskell' 69 51 4 123 321 'clojuree' 27 'frank']" (str (ultimo [1 2 3 4  12 1234567 999 13 -100 "haskell" 69 51 4 123 321 "clojuree" 27 "frank"]))))

;; 2) Utilizando a linguagem Clojure, crie uma função chamada penultimo que receba uma lista e  devolva  o  penúltimo  elemento  desta  lista  usar as  funções  já  prontas  e disponíveis para esta mesma finalidade na linguagem Clojure.  

(defn penultimo [l] (reduce (fn [x y] y) (pop l)))

(println (format "Função: 2: Entrada: %s; Saída: %s"  "[1 2 3 4  12 1234567 999 13 -100 'haskell' 69 51 4 123 321 'clojuree' 27 'frank']" (str (penultimo [1 2 3 4  12 1234567 999 13 -100 "haskell" 69 51 4 123 321 "clojuree" 27 "frank"]))))

;; 3) Utilizando a linguagem Clojure, crie uma função chamada elementoN que receba uma lista e um inteiro N e devolva o  elemento que  está na  posição N desta lista usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.

(defn elementoN [lista n] (loop [counter n lista2 lista] (if (zero? counter) (first lista2) (recur (dec counter) (rest lista2)))))

(println (format "Função: 3: Entrada: %s; Saída: %s"  "[1 2 3 4  12 1234567 999 13 -100 'haskell' 69 51 4 123 321 'clojuree' 27 'frank'] 10" (str (elementoN [1 2 3 4  12 1234567 999 13 -100 'haskell' 69 51 4 123 321 'clojuree' 27 'frank'] 10))))

;; 4) Utilizando  a  linguagem Clojure,  crie  uma função  chamada  inverso  que  receba uma  lista  e devolva esta lista com as posições dos elementos invertidas. Por exemplo recebe [1,2,3] e devolve [3,2,1]. Sem usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.

(defn inverso [l] (reduce conj '() l))

(println (format "Função: 4: Entrada: %s; Saída: %s"  "[1 2 3 4  12 1234567 999 13 -100 'haskell' 69 51 4 123 321 'clojuree' 27 'frank']" (str (inverso [1 2 3 4  12 1234567 999 13 -100 "haskell" 69 51 4 123 321 "clojuree" 27 "frank"]))))

;; 5) Utilizando a  linguagem Clojure, crie uma função chamada  mdc que receba  dois inteiros e devolve o mínimo divisor comum entre eles.  Sem usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.  

(defn mdc [x y] (if (zero? y) x (recur y (mod x y))))

(println (format "Função: 5: Entrada: %s; Saída: %s"  "10 2" (str (mdc 10 2))))