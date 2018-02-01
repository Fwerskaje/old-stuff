(defn f [x]
  (+ x 1))

(f 1)

(defn f2 [x y z]
  (+ x y z))

(f2 1 2 3)

(defn f3 [x & rest]
  rest
  )

(f3 2 3 4 5)

(defn f4
  ([] 0)
  ([_] 1)
  ([_ _] 2))

(f4 1 3)

(defn f5 ^{
            :pre [(pos? x)]
            :post [(< % 20) (> % 10)]
            }
  [x]
  (* 2 x))

(f5 8)

(defn abs [x]
  (when (neg? x)
    (* x -1)
  ))

(abs -23)




