(as-> [1 2 3 4 5 6 7 8 9] xs
      (map inc xs)
      (remove #(> % 5) xs)
      (vec xs)
      (str xs))

(->> [1 2 3 4 5 6 7 8 9]
      (map inc)
      (remove #(> % 5))
      (vec)
      (str))

(-> 1
    (+ 1)
    (- 2)
    (str 3))


;;;;;;;;;
(defn f [x]
  [:ok (* 2 x)(pos? x)])

(f -1)

(let [[a b c] [1 2 3]]
  (str a " " b " " c))

(let [[res sol pos] (f -1)]
  (str res " " sol " " pos))

(def m {:name "Vanya" :age 23})
(let [n (:name m)
      a (:age m)]
  (str n " " a))

(let [{n :name a :age} m]
  [n a])




