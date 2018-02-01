(+ 1 2)
(clojure.string/index-of "qwertyuis" "s")
(clojure.string/upper-case "kek")
(empty? '(1 2 3 4))
(reverse '(1 2 3 4))

(def xs [1 2 3 4 5])

(map #(+ 1 %) xs)
(map inc xs)
(map dec xs)

(filter odd? xs)
(odd? 5)
(remove odd? xs)

(reduce
  (fn [acc el] (+ acc el)) 0 xs)

(reduce + 0 xs)

(for [x xs]
  (inc x))

(doseq [x [1 2 3]]
       (str x))

;;;;;;;;;;;;;;;;;;;

(def v [:a :b :c])
(get v 1)
(v 1)

(def m {1 "one"
        2 "two"
        3 "three"})

(get m 2)
(get m 10 "?")

(map #(get m % "?") [1 2 3 3 5 6 7])
(map m [1 2 3])


