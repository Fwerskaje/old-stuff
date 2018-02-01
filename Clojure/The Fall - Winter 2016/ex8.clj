(def x (list 1 2 3 4))
(conj x 4 5 6)
(nth x 2)
(nth x 20 :default)

(def y [1 2 3 4 5])
(conj y 6 7 8)
(nth y 2)
(get y 2)
(time (nth y 2))
(time (get y 2))  ;; Быстрее

(def m {:x 1 :y 2 :z 3})
m
(sorted-map "x" 1 "y" 2 "z" 3)
(get m :x)
(assoc m :f 4)
(dissoc m :z 3)
(contains? m :z)

(def s #{1 2 3})
(conj s 4)
(conj s 2)
(get s 1)

(clojure.set/union #{1 2 3} #{4 5 6})
(clojure.set/difference #{1 2 3} #{2 3 4})

(= '(1 2 3) [1 2 3])



