(do
  1
  2
  3
  4
  5)

(if true
  (do
    (def x (+ 1 2 3))
    (print-str x))
  (print-str "else"))

(let [x (+ 1 2 3)]
  (+ x 2))

(let [x (+ 1 2 3)]
  (* x x))

(let [x 1
      y 4
      z 8]
    (+ x y z))

(loop [x 10]
  (if (pos? x)
    (recur (- x 1))
    x))

(loop [x 0]
  (if (< x 10)
    (recur (+ 1 x))
    x))

(loop [x 10
       y 0]
  (if (pos? x)
    (recur (- x 1) (+ y x))
    y))

(loop [x 10
       y 0]
  (if (pos? x)
    (do
      (println x y)
      (recur (- x 1) (+ y x)))
    y))






