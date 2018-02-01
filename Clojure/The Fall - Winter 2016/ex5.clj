(def v [1 2 3 4 5])
(def w '(1 2 3 4 5))
(time (nth v 4))
(time (nth w 4))

(def v1 (range 540))
(def w1 (vec (range 540)))
(time (nth v1 487))
(time (nth w1 487)) ;; Faster

(into [] '(1 2 3 4 5 6))
(map str "kek" '(1 2 3 4 5))

(map #(* 2%) '(1 2 3 4 5))
(map #(* 2%) [1 2 3 4 5])

(map (fn [x] (str x " kek")) '(1 2 3 4 5))

(sort-by count ["aaa" "c" "bb"])

(concat [1 2] [3 4])

(take 3 (repeatedly (fn [] (rand-int 10))))

(def слава 1)
(take 3 (repeat слава))

(defn even-numbers
  ([] (even-numbers 0))
  ([n] (cons n (lazy-seq (even-numbers (+ n 2))))))

(take 10 (even-numbers))

(empty? [])
(empty? ["no!"])

(apply max '(1 2 3 4 5))

(def add10 (partial + 10))
(add10 23)

(+ 1 2)

(defn sum [x y]
  (+ x y)
  )
(sum (read-line) (read-line))

(+ 2 3)



