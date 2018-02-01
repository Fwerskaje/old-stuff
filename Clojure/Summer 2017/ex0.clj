nil

(class 123)

(class 1N)

(class 1.1M)

(class true)

(class "string")

(class \a)

(str \u03bb)

(class #"[Rr]")

(class 1/5)

(class :test)

(= :test :test)

(class #inst "2010-01-01")

(if true :then :else)

(when true :then)

(case "v1"
   "v1" true
   "v2" false
   42)

(and true true true)

(or false false true)

(or nil nil 7 12)

(loop [x 10]
  (if (pos? x)
    (recur (- x 1)) x))

(loop [x 10 acc 0]
  (if (pos? x)
    (recur (dec x) (+ acc x)) acc))

(defn f
  ([] 0)
  ([_] 1)
  ([_ _] 2))

(f 1)
(f 1 2)

(defn f2 ^{ :pre [(pos? x)]
            :post [(< % 20) (> % 10)] }
  [x]
  (+ x 1))

(f2 10)

(#(str %1 %&) 1 2 3 4 5)

(apply + [1 2 3])

(defn fact [n]
  (reduce * (range 1 n)))

(fact 10)

((comp str vec reverse) [1 2 3 4 5])

(defn plus3 [x y z]
  (+ x y z))

((partial plus3 1 2) 3)

(map (juxt dec identity inc) [1 2 3 4 5])

(require '[clojure.string :as str])

(str/capitalize "abc")

(str/index-of "abc" "b")

(def xs [1 2 3 4 5])

(map inc xs)
(filter odd? xs)
(remove odd? xs)

(take 10 (repeat 10))

(class (map inc (range 1 10)))

(for [x xs] (inc x))

(for [v [[1 2]
         [3 4]]
      x v]
  (inc x))

(for [x xs :when (even? x)] (inc x))

(for [x xs :while (< x 5)] (inc x))

(doseq [x xs] (println x))

(filter #{3 4 5} [2 3 4 8 7 6 5 5 3 32 2 3 4 4 56 7])

(def v [:a :b :c])

(get v 1)

(v 1)

(def m {1 "one"
        2 "two"
        3 "three"})

(get m 2)
(m 2)
(m 42 :?)

(map #(get m % "?") xs)
(map m xs)

(def z #{1 2 3})

(z 1)

(:k1 {:k0 0 :k1 1 :k2 2})

(def users [{ :name "Petyan"
             :age 42 }
            { :name "Kolyan"
             :age 14 }])

(map :name users)
(map :age users)

(sort-by > [1 2 3 4 3 2 3 4])

(as-> 17 x
  (+ x 1)
  (- 100 x)
  (str x))

(macroexpand
              '(as-> 17 x
                (+ x 1)
                (- 100 x)
                (str x)))

(as-> [1 2 3 4 5 6 7] xs
  (map inc xs)
  (filter even? xs)
  (remove #(> % 5) xs)
  (vec xs)
  (str xs))

(->> [1 2 3 4 5 6 7]
  (map inc)
  (filter even?)
  (remove #(> % 5))
  (vec)
  (str))

(-> 1 (+ 1) (- 2) (str 3))

(macroexpand '(-> 1 (+ 1) (- 2) (str 3)))

(some-> {:a {:b {:c 42}}} :a :x :c (* 2))

(def m {:name "Vasya"
        :age 17})

(let [{:keys [name age]} m]
  [name age])

(defn f [x & {:as opts}]
  opts)

(f 1 :flag true :debug false)

(def ^:dynamic *log* false)

*log*

(binding [*log* true] *log*)

;;;;

(def figs [{:type :rect :w 10 :h 20}
           {:type :circle :r 15}])

(defn displatch [fig] (:type fig))

(defmulti p2 displatch)

(defmethod p2 :circle [fig]
  (* 2 Math/PI (:r fig)))

(defmethod p2 :rect [fig]
  (* 2 (+ (:w fig) (:h fig))))

(map p2 figs)

(deftype PointT [^long x ^long y])

(def p (PointT. 10 10))

(.-x p)

(PointT. 20 (.-y p))

(defrecord PointR [^long x ^long y])
(def p2 (PointR. 42 42))

(.-x p2)

(:x p2)
(assoc p2 :x 20)
(assoc p2 :z 42)

(= (PointR. 10 10) (PointR. 10 10))

;;(defrecord Cal [d m y])

;;(defprotocol IFormat
;;  (format [this]))

;;(extend-protocol IFormat
;;  Cal
;;  (format [this] (str (:d this) "." (:m this) "." (:y this))))

;;(format (Cal. 1 2 3))

(defrecord Cal [d m y]
  IFormat
  (format [_] (str d "." m "." y)))

(format (Cal. 10 10 1992))

(.toUpperCase "test")

(doto
    (java.util.HashMap.)
  (.put "a" 1)
  (.put "b" 2))

(class {:a 1 :b 2})

(defn strlen ^Integer [^String s]
  (.length s))

(strlen "KEKEKE")

(slurp "test.txt")

(spit "test.txt" "Слава великой стране:\nУкраине!")

(with-open [rd (clojure.java.io/reader "test.txt")]
  (vec (line-seq rd)))

(spit "f.edn" {:a 1})
(read-string (slurp "f.edn"))



 (replace {1 2} [1 2 3 1 2 3 1 2 3])

 (def x 0)
 (meta #'x)
