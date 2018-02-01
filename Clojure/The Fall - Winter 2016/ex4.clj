((fn [x] (inc x)) 1)

(let [g (fn [x] (inc x))]
  (g 2))

(#(inc %) 2)
(#(+ %1 %2) 1 2)
(#( str %&) 1 2 3 4 5)
(#( str %1 " " %&) 1 2 3 4 5)

(def xs [1 2 3])

(apply + xs)
(#(apply + %&) 1 2 3 4 5)
(apply str xs)

(print-str (nth (apply str xs) 0))
(print-str (apply * 2 xs))

((fn [x] (str (vec (reverse x)))) xs)
((comp str vec reverse) xs)

((comp reverse) '(1 2 3))








